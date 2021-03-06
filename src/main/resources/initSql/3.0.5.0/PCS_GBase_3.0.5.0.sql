/*
Navicat MySQL Data Transfer

Source Server         : 172.16.17.163GBase
Source Server Version : 80385
Source Host           : 172.16.15.216:5258
Source Database       : pcs_base

Target Server Type    : MYSQL
Target Server Version : 80385
File Encoding         : 65001

Date: 2019-01-22 18:37:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for appservice_dept_error
-- ----------------------------
DROP TABLE IF EXISTS `appservice_dept_error`;
CREATE TABLE `appservice_dept_error` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `shortName` varchar(100) DEFAULT NULL,
  `pcode` varchar(100) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `createTime` varchar(50) DEFAULT NULL,
  `errordesc` varchar(100) DEFAULT NULL,
  `errorcode` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_appdept_error` (`createTime`,`errorcode`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appservice_dept_error
-- ----------------------------

-- ----------------------------
-- Table structure for appservice_user_error
-- ----------------------------
DROP TABLE IF EXISTS `appservice_user_error`;
CREATE TABLE `appservice_user_error` (
  `id` varchar(32) NOT NULL,
  `errordesc` varchar(100) DEFAULT NULL,
  `errorcode` varchar(10) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `idcard` varchar(20) DEFAULT NULL,
  `createTime` varchar(30) DEFAULT NULL,
  `depname` varchar(100) DEFAULT NULL,
  `modelcode` varchar(100) DEFAULT NULL,
  `modelname` varchar(100) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `rankname` varchar(255) DEFAULT NULL,
  `policeclass` varchar(100) DEFAULT NULL,
  `policeclassname` varchar(100) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `spareMobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `isretire` varchar(10) DEFAULT NULL,
  `isPolice` varchar(10) DEFAULT NULL,
  `zerenIdCard` varchar(100) DEFAULT NULL,
  `zerenName` varchar(100) DEFAULT NULL,
  `isparttimejob` varchar(10) DEFAULT NULL,
  `isparttimeuser` varchar(10) DEFAULT NULL,
  `attributes` varchar(1000) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `post` varchar(100) DEFAULT NULL,
  `postName` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `positionName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_appdept_error` (`createTime`,`errorcode`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appservice_user_error
-- ----------------------------

-- ----------------------------
-- Table structure for appservice_wirelesscert_error
-- ----------------------------
DROP TABLE IF EXISTS `appservice_wirelesscert_error`;
CREATE TABLE `appservice_wirelesscert_error` (
  `ID` char(32) NOT NULL,
  `errorDesc` varchar(255) DEFAULT NULL,
  `errorCode` varchar(120) DEFAULT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `rsaCtmlName` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` text,
  `RSAENCCERTENTITY` text,
  `CARDID` varchar(50) DEFAULT NULL,
  `CREATECERTDATE` varchar(50) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT '',
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` text,
  `SM2ENCCERTENTITY` text,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `LASTUPDATESTATUSDATE` char(50) DEFAULT NULL,
  `RAID` varchar(50) DEFAULT NULL,
  `djReason` int(10) DEFAULT NULL,
  `EQUIPMENTNUM` varchar(30) DEFAULT NULL,
  `PHONENUM` varchar(15) DEFAULT NULL,
  `OPERATOR` varchar(10) DEFAULT NULL,
  `updateTime` varchar(50) DEFAULT NULL,
  `ALIAS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_appwircert_error` (`errorCode`,`CREATECERTDATE`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appservice_wirelesscert_error
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_baimingdan
-- ----------------------------
DROP TABLE IF EXISTS `jbase_baimingdan`;
CREATE TABLE `jbase_baimingdan` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` varchar(30) DEFAULT NULL,
  `createTime` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_baimingdan_idCard` (`IDCARD`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_baimingdan
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_baimingdan_error
-- ----------------------------
DROP TABLE IF EXISTS `jbase_baimingdan_error`;
CREATE TABLE `jbase_baimingdan_error` (
  `id` char(32) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `IDCARD` varchar(30) DEFAULT NULL,
  `releaseUserId` varchar(32) DEFAULT NULL,
  `releaseUserName` varchar(120) DEFAULT NULL,
  `errorMsg` varchar(2000) DEFAULT NULL,
  `createTime` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_baimingdan_error_idCard` (`IDCARD`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_baimingdan_error
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certbyflow
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certbyflow`;
CREATE TABLE `jbase_certbyflow` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `rsaCtmlName` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` varchar(2000) DEFAULT NULL,
  `RSAENCCERTENTITY` varchar(2000) DEFAULT NULL,
  `CARDID` varchar(50) DEFAULT NULL,
  `PUBLICID` char(32) DEFAULT NULL,
  `DATATYPE` int(10) DEFAULT NULL,
  `CERTID` char(32) DEFAULT NULL,
  `YQTIME` varchar(40) DEFAULT NULL,
  `REASON` varchar(800) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` varchar(2000) DEFAULT NULL,
  `SM2ENCCERTENTITY` varchar(2000) DEFAULT NULL,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `SUBMITUSERID` char(32) DEFAULT NULL,
  `ISSELFMAKECERT` int(10) DEFAULT NULL,
  `SUBMITTYPE` int(10) DEFAULT NULL,
  `MODELNAME` varchar(40) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `BFREASONSTA` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_certbyflow_s_p_d_st` (`SUBMITUSERID`,`PUBLICID`,`DATATYPE`,`SUBMITTYPE`) USING BTREE,
  KEY `IX_jbase_certbyflow_uid_more` (`USERID`,`DATATYPE`,`PUBLICID`,`SUBMITTYPE`) USING BTREE,
  KEY `IX_jbase_certbyflow_pid_d_st` (`PUBLICID`,`DATATYPE`,`SUBMITTYPE`) USING BTREE,
  KEY `IX_jbase_certbyflow_d` (`DATATYPE`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certbyflow
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certinfo
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certinfo`;
CREATE TABLE `jbase_certinfo` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `rsaCtmlName` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` text,
  `RSAENCCERTENTITY` text,
  `CARDID` varchar(50) DEFAULT NULL,
  `CREATECERTDATE` varchar(50) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` text,
  `SM2ENCCERTENTITY` text,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `LASTUPDATESTATUSDATE` char(50) DEFAULT NULL,
  `RAID` char(50) DEFAULT NULL,
  `djReason` int(10) DEFAULT NULL,
  `updateTime` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_certinfo_userid` (`USERID`) USING BTREE,
  KEY `IX_jbase_certinfo_subject` (`SUBJECT`(255)) USING BTREE,
  KEY `IX_jbase_certinfo_idcard` (`IDCARD`) USING BTREE,
  KEY `IX_jbase_certinfo_ispo_s_6` (`ISPOLICE`,`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jbase_certinfo_status_6` (`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jbase_certinfo_6_n_ct_nb` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`NAME`,`CERTTYPE`,`NOTBEFORE`) USING BTREE,
  KEY `IX_jbase_certinfo_cardid` (`CARDID`),
  KEY `IX_jbase_certinfo_notbefore` (`PROVINCE`,`NOTBEFORE`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certinfo
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certinfo_delete
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certinfo_delete`;
CREATE TABLE `jbase_certinfo_delete` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `rsaCtmlName` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` text,
  `RSAENCCERTENTITY` text,
  `CARDID` varchar(50) DEFAULT NULL,
  `CREATECERTDATE` varchar(50) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` text,
  `SM2ENCCERTENTITY` text,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `LASTUPDATESTATUSDATE` char(50) DEFAULT NULL,
  `RAID` varchar(50) DEFAULT NULL,
  `djReason` int(10) DEFAULT NULL,
  `deleteTime` char(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_certinfo_idcard` (`IDCARD`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certinfo_delete
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certmake_status
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certmake_status`;
CREATE TABLE `jbase_certmake_status` (
  `USERID` char(32) NOT NULL,
  `YQTIME` char(10) DEFAULT NULL,
  `ISSELFMAKECERT` int(10) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `OPTTYPE` int(11) DEFAULT NULL,
  `createTime` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `IX_jbase_CertMake_Status_i_6` (`ISSELFMAKECERT`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certmake_status
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certsn
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certsn`;
CREATE TABLE `jbase_certsn` (
  `CARDID` varchar(50) NOT NULL DEFAULT '',
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`CARDID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certsn
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certstats_expire
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certstats_expire`;
CREATE TABLE `jbase_certstats_expire` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `counts` int(10) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  `notAfter` varchar(50) DEFAULT NULL,
  `notAfterMon` int(10) DEFAULT NULL,
  `modelCode` varchar(50) DEFAULT NULL,
  `modelName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_certstats_expire_m6` (`modelCode`,`notAfterMon`,`province`,`city`,`country`,`subordinate`,`subordinate2`,`subordinate3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certstats_expire
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certstats_expire_yd
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certstats_expire_yd`;
CREATE TABLE `jbase_certstats_expire_yd` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `counts` int(10) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  `notAfter` varchar(50) DEFAULT NULL,
  `notAfterMon` int(10) DEFAULT NULL,
  `modelCode` varchar(50) DEFAULT NULL,
  `modelName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_certstats_expire_m6` (`modelCode`,`notAfterMon`,`province`,`city`,`country`,`subordinate`,`subordinate2`,`subordinate3`) USING BTREE,
  KEY `IX_jbase_certstats_expire_yd_m6` (`modelCode`,`notAfterMon`,`province`,`city`,`country`,`subordinate`,`subordinate2`,`subordinate3`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certstats_expire_yd
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certstats_nomatch
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certstats_nomatch`;
CREATE TABLE `jbase_certstats_nomatch` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deptid` char(32) DEFAULT NULL,
  `modelcode` varchar(32) DEFAULT NULL,
  `no_match_reason` int(10) DEFAULT NULL,
  `counts` int(10) DEFAULT NULL,
  `yearmonth` char(10) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_certstats_no_ym_n_6` (`yearmonth`,`no_match_reason`,`province`,`city`,`country`,`subordinate`,`subordinate2`,`subordinate3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certstats_nomatch
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certstats_nomatchtmp
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certstats_nomatchtmp`;
CREATE TABLE `jbase_certstats_nomatchtmp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deptid` char(32) DEFAULT NULL,
  `modelcode` varchar(32) DEFAULT NULL,
  `no_match_reason` int(10) DEFAULT NULL,
  `counts` int(10) DEFAULT NULL,
  `yearmonth` char(10) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_certstats_no_temp` (`yearmonth`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certstats_nomatchtmp
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certtrail
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certtrail`;
CREATE TABLE `jbase_certtrail` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOTAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `RSACTMLNAME` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` text,
  `RSAENCCERTENTITY` text,
  `CARDID` varchar(50) DEFAULT NULL,
  `CREATECERTDATE` varchar(50) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` text,
  `SM2ENCCERTENTITY` text,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `LASTUPDATESTATUSDATE` char(50) DEFAULT NULL,
  `RAID` char(50) DEFAULT NULL,
  `DJREASON` int(10) DEFAULT NULL,
  `UPDATETIME` varchar(50) DEFAULT NULL,
  `OPERATETYPE` int(10) DEFAULT NULL,
  `OPERATEUSERID` varchar(32) DEFAULT NULL,
  `OPERATEUSERNAME` varchar(120) DEFAULT NULL,
  `OPERATETIME` varchar(50) DEFAULT NULL,
  `OPERATEMODE` int(10) DEFAULT NULL,
  `DEPICT` varchar(2000) DEFAULT NULL,
  `IP` varchar(30) DEFAULT NULL,
  `CERTID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_certTrail_userId` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certtrail
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certtrail_delete
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certtrail_delete`;
CREATE TABLE `jbase_certtrail_delete` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOTAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `RSACTMLNAME` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` text,
  `RSAENCCERTENTITY` text,
  `CARDID` varchar(50) DEFAULT NULL,
  `CREATECERTDATE` varchar(50) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` text,
  `SM2ENCCERTENTITY` text,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `LASTUPDATESTATUSDATE` char(50) DEFAULT NULL,
  `RAID` char(50) DEFAULT NULL,
  `DJREASON` int(10) DEFAULT NULL,
  `UPDATETIME` varchar(50) DEFAULT NULL,
  `OPERATETYPE` int(10) DEFAULT NULL,
  `OPERATEUSERID` varchar(32) DEFAULT NULL,
  `OPERATEUSERNAME` varchar(120) DEFAULT NULL,
  `OPERATETIME` varchar(50) DEFAULT NULL,
  `OPERATEMODE` int(10) DEFAULT NULL,
  `DEPICT` varchar(2000) DEFAULT NULL,
  `IP` varchar(30) DEFAULT NULL,
  `CERTID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certtrail_delete
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certwarning_nomatchnow
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certwarning_nomatchnow`;
CREATE TABLE `jbase_certwarning_nomatchnow` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `USERID` char(32) DEFAULT NULL,
  `DEPTID` char(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `NO_MATCH_REASON` int(10) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_certwar_no_now_ud` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certwarning_nomatchnow
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_certwarning_nomatchold
-- ----------------------------
DROP TABLE IF EXISTS `jbase_certwarning_nomatchold`;
CREATE TABLE `jbase_certwarning_nomatchold` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `USERID` char(32) DEFAULT NULL,
  `DEPTID` char(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `NO_MATCH_REASON` int(10) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_certwar_no_old_uid` (`USERID`) USING BTREE,
  KEY `IX_jbase_certwar_no_old_did` (`DEPTID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_certwarning_nomatchold
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_cert_error
-- ----------------------------
DROP TABLE IF EXISTS `jbase_cert_error`;
CREATE TABLE `jbase_cert_error` (
  `ID` varchar(32) NOT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `IDCARD` varchar(30) DEFAULT NULL,
  `CREATETIME` varchar(40) DEFAULT NULL,
  `RELEASEUSERID` varchar(32) DEFAULT NULL,
  `RELEASEUSERNAME` varchar(120) DEFAULT NULL,
  `ERRORMSG` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_cert_error
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_cert_raid
-- ----------------------------
DROP TABLE IF EXISTS `jbase_cert_raid`;
CREATE TABLE `jbase_cert_raid` (
  `IDCARD` varchar(18) NOT NULL DEFAULT '',
  `RAID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDCARD`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_cert_raid
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_cert_server
-- ----------------------------
DROP TABLE IF EXISTS `jbase_cert_server`;
CREATE TABLE `jbase_cert_server` (
  `ID` char(32) NOT NULL,
  `DOMAIN` varchar(255) NOT NULL,
  `IPADDR` char(15) DEFAULT NULL,
  `OPTSYS` varchar(60) DEFAULT NULL,
  `SMODEL` varchar(255) DEFAULT NULL,
  `APPSYS` varchar(60) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `DEPID` char(32) DEFAULT NULL,
  `DEPCODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOAFTER` char(50) DEFAULT NULL,
  `SUBJECT` varchar(255) NOT NULL,
  `RSASIGNCERTENTITY` varchar(2000) DEFAULT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `CTMLNAME` varchar(255) DEFAULT NULL,
  `CREATETIME` varchar(50) DEFAULT NULL,
  `UPDATETIME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_cert_server
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_controlmanage_info
-- ----------------------------
DROP TABLE IF EXISTS `jbase_controlmanage_info`;
CREATE TABLE `jbase_controlmanage_info` (
  `ID` char(32) NOT NULL,
  `ORDERNUM` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_controlmanage_info
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_department
-- ----------------------------
DROP TABLE IF EXISTS `jbase_department`;
CREATE TABLE `jbase_department` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PID` char(32) DEFAULT NULL,
  `PCODE` char(12) DEFAULT NULL,
  `PNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `CREATETIME` char(40) NOT NULL,
  `isFlow` int(10) DEFAULT NULL,
  `shortName` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_department_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jbase_department_p_s_6_pid` (`PCODE`,`SORT`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`PID`) USING BTREE,
  KEY `IX_jbase_department_pid_6` (`PID`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jbase_department_code` (`CODE`) USING BTREE,
  KEY `IX_jbase_department_name` (`NAME`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_department
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_departmentbyflow
-- ----------------------------
DROP TABLE IF EXISTS `jbase_departmentbyflow`;
CREATE TABLE `jbase_departmentbyflow` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PID` char(32) DEFAULT NULL,
  `PCODE` char(12) DEFAULT NULL,
  `PNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `PUBLICID` varchar(50) DEFAULT NULL,
  `DATATYPE` int(10) DEFAULT NULL,
  `DEPARTMENTID` char(32) DEFAULT NULL,
  `SUBMITUSERID` char(32) DEFAULT NULL,
  `SUBMITTYPE` int(10) DEFAULT NULL,
  `REASON` varchar(1000) DEFAULT NULL,
  `ISBANJIE` int(10) DEFAULT NULL,
  `shortName` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_departmentbyflow_s` (`SUBMITUSERID`,`PUBLICID`,`DATATYPE`) USING BTREE,
  KEY `IX_jbase_departmentbyflow_p` (`PUBLICID`,`DATATYPE`,`ISBANJIE`) USING BTREE,
  KEY `IX_jbase_departmentbyflow_i` (`ISBANJIE`,`CODE`,`NAME`,`PID`,`DEPARTMENTID`) USING BTREE,
  KEY `IX_jbase_departmentbyflow_pid` (`PID`) USING BTREE,
  KEY `IX_jbase_departmentbyflow_did` (`DEPARTMENTID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_departmentbyflow
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_departmenttrail
-- ----------------------------
DROP TABLE IF EXISTS `jbase_departmenttrail`;
CREATE TABLE `jbase_departmenttrail` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PID` char(32) DEFAULT NULL,
  `PCODE` char(12) DEFAULT NULL,
  `PNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SORT` int(10) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `isFlow` int(10) DEFAULT NULL,
  `shortName` varchar(120) DEFAULT NULL,
  `OPERATETYPE` int(10) DEFAULT NULL,
  `OPERATEUSERID` varchar(32) DEFAULT NULL,
  `OPERATEUSERNAME` varchar(120) DEFAULT NULL,
  `OPERATETIME` varchar(50) DEFAULT NULL,
  `DEPICT` varchar(2000) DEFAULT NULL,
  `IP` varchar(30) DEFAULT NULL,
  `DEPTID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_departmenttrail
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_department_delete
-- ----------------------------
DROP TABLE IF EXISTS `jbase_department_delete`;
CREATE TABLE `jbase_department_delete` (
  `id` char(32) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `deletetime` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_department_delete
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_department_error
-- ----------------------------
DROP TABLE IF EXISTS `jbase_department_error`;
CREATE TABLE `jbase_department_error` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `CODE` varchar(120) DEFAULT NULL,
  `RELEASEUSERID` char(32) DEFAULT NULL,
  `RELEASEUSERNAME` varchar(40) DEFAULT NULL,
  `ERRORMSG` varchar(2000) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_department_error_name-code-emsg` (`NAME`,`CODE`,`ERRORMSG`(255)) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_department_error
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_deptrail_delete
-- ----------------------------
DROP TABLE IF EXISTS `jbase_deptrail_delete`;
CREATE TABLE `jbase_deptrail_delete` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PID` char(32) DEFAULT NULL,
  `PCODE` char(12) DEFAULT NULL,
  `PNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SORT` int(10) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `isFlow` int(10) DEFAULT NULL,
  `shortName` varchar(120) DEFAULT NULL,
  `OPERATETYPE` int(10) DEFAULT NULL,
  `OPERATEUSERID` varchar(32) DEFAULT NULL,
  `OPERATEUSERNAME` varchar(120) DEFAULT NULL,
  `OPERATETIME` varchar(50) DEFAULT NULL,
  `DEPICT` varchar(2000) DEFAULT NULL,
  `IP` varchar(30) DEFAULT NULL,
  `DEPTID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_deptrail_delete
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_devicecardinterva
-- ----------------------------
DROP TABLE IF EXISTS `jbase_devicecardinterva`;
CREATE TABLE `jbase_devicecardinterva` (
  `ID` char(32) NOT NULL,
  `CARDINTERVA` varchar(500) DEFAULT NULL COMMENT '卡号区间',
  `NAME` varchar(63) DEFAULT NULL COMMENT '设备描述名称（用于页面显示名称）',
  `COMPANY` varchar(63) DEFAULT NULL COMMENT '公司名称',
  `TYPE` int(2) DEFAULT NULL COMMENT '设备类别（用于区分相同公司的不同型号设备）',
  `BATCH` varchar(50) DEFAULT NULL COMMENT '设备生产批次（非必填项）',
  `ALGO` varchar(50) DEFAULT NULL COMMENT '算法标识：RSA、SM2、RSA+SM2',
  `USERTYPE` varchar(63) DEFAULT NULL COMMENT '介质使用范围：警员、辅警',
  `OWNERNAME` varchar(63) DEFAULT NULL COMMENT '设备所有者姓名',
  `OWNERID` char(32) DEFAULT NULL,
  `REGISTRANTNAME` varchar(100) DEFAULT NULL COMMENT '领取人',
  `REGUSTERTIME` char(50) DEFAULT NULL,
  `CREATETIME` char(50) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `REGISTRANTDEPNAME` varchar(100) DEFAULT NULL COMMENT '领取部门',
  `BOOKERS` varchar(100) DEFAULT NULL COMMENT '登记人',
  `BOOKERSID` char(32) DEFAULT NULL,
  `CARDNUMBER` int(10) DEFAULT NULL,
  `REGISTRANTID` char(32) DEFAULT NULL,
  `REGISTRANTDEPID` char(32) DEFAULT NULL,
  `DEVICEDRIVEID` char(32) DEFAULT NULL,
  `DEVICEDRIVENAME` varchar(50) DEFAULT NULL,
  `USESCENE` varchar(50) DEFAULT NULL,
  `DEVICETYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_devicecardinterva_6_more` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`ALGO`,`REGUSTERTIME`) USING BTREE,
  KEY `IX_devicecardinterva_sort6more` (`REGUSTERTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`ALGO`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_devicecardinterva
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_devicedrive
-- ----------------------------
DROP TABLE IF EXISTS `jbase_devicedrive`;
CREATE TABLE `jbase_devicedrive` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `FIRM` varchar(30) DEFAULT NULL,
  `ALGORITHM` varchar(30) DEFAULT NULL,
  `CSPNAME` varchar(100) DEFAULT NULL,
  `SKFLIBNAME` varchar(50) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `USESCOPE` varchar(50) DEFAULT NULL,
  `USESCENE` varchar(50) DEFAULT NULL,
  `FIRMNAME` varchar(50) DEFAULT NULL,
  `ALGORITHMNAME` varchar(50) DEFAULT NULL,
  `TYPENAME` varchar(50) DEFAULT NULL,
  `USESCOPENAME` varchar(50) DEFAULT NULL,
  `USESCENENAME` varchar(50) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `FLAGSTART` varchar(4) DEFAULT NULL,
  `FLAGEND` varchar(2) DEFAULT NULL,
  `RSATEMPLATE` varchar(50) DEFAULT NULL,
  `GMTEMPLATE` varchar(50) DEFAULT NULL,
  `sblx` varchar(50) DEFAULT NULL,
  `sblxName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_devicedrive
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_deviceinfo
-- ----------------------------
DROP TABLE IF EXISTS `jbase_deviceinfo`;
CREATE TABLE `jbase_deviceinfo` (
  `ID` char(32) NOT NULL,
  `CARDID` varchar(32) DEFAULT NULL,
  `COMPANY` varchar(100) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `BATCH` varchar(50) DEFAULT NULL,
  `ALGO` varchar(50) DEFAULT NULL,
  `USERTYPE` varchar(50) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `OWNERNAME` varchar(100) DEFAULT NULL,
  `OWNERID` char(32) DEFAULT NULL,
  `REGISTRANTNAME` varchar(100) DEFAULT NULL,
  `SYSCARDTIME` char(50) DEFAULT NULL,
  `REGUSTERTIME` char(50) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `REGISTRANTDEPNAME` varchar(50) DEFAULT NULL,
  `BOOKERS` varchar(50) DEFAULT NULL,
  `BOOKERSID` char(32) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `CARDINTERVAID` char(32) DEFAULT NULL,
  `REGISTRANTID` char(32) DEFAULT NULL,
  `REGISTRANTDEPID` char(32) DEFAULT NULL,
  `DEVICEDRIVEID` char(32) DEFAULT NULL,
  `DEVICEDRIVENAME` varchar(50) DEFAULT NULL,
  `USESCENE` varchar(50) DEFAULT NULL,
  `DEVICETYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_deviceinfo_6_more` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`OWNERNAME`,`STATUS`,`ALGO`,`CREATETIME`) USING BTREE,
  KEY `IX_jbase_deviceinfo_sort6more` (`CARDID`,`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`OWNERNAME`,`STATUS`,`ALGO`) USING BTREE,
  KEY `IX_deviceinfo_status6more` (`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_deviceinfo
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_devicelog
-- ----------------------------
DROP TABLE IF EXISTS `jbase_devicelog`;
CREATE TABLE `jbase_devicelog` (
  `ID` char(32) NOT NULL,
  `OPTTIME` char(50) DEFAULT NULL,
  `INFOID` char(32) DEFAULT NULL,
  `OPTUSERID` char(32) DEFAULT NULL,
  `OPTUSERNAME` varchar(50) DEFAULT NULL,
  `OPTDEPID` char(32) DEFAULT NULL,
  `OPTDEPNAME` varchar(120) DEFAULT NULL,
  `OPTTYPE` int(11) DEFAULT NULL,
  `OPTIP` varchar(50) DEFAULT NULL,
  `OPTUSERDN` varchar(512) DEFAULT NULL,
  `OPTMSG` varchar(500) DEFAULT NULL,
  `LOGTYPE` int(11) DEFAULT NULL,
  `APPCODE` varchar(50) DEFAULT NULL,
  `OPTMODEL` varchar(100) DEFAULT NULL,
  `OPTUSERTYPE` int(11) DEFAULT NULL,
  `MARK` int(11) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `CARDINTERVAID` char(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_devicelog_infoid` (`INFOID`) USING BTREE,
  KEY `IX_jbase_devicelog_userid` (`OPTUSERID`) USING BTREE,
  KEY `IX_jbase_devicelog_deptid` (`OPTDEPID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_devicelog
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_flow_form
-- ----------------------------
DROP TABLE IF EXISTS `jbase_flow_form`;
CREATE TABLE `jbase_flow_form` (
  `ID` char(32) NOT NULL,
  `PIID` int(11) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(400) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `ASKER` varchar(126) DEFAULT NULL,
  `ASKERID` char(32) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `TITLE` varchar(2000) DEFAULT NULL,
  `ISBANJIE` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_flow_form_piid` (`PIID`) USING BTREE,
  KEY `IX_jbase_flow_form_askerid` (`ASKERID`) USING BTREE,
  KEY `IX_jbase_flow_form_6_more` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`ASKER`,`ISBANJIE`,`CREATETIME`) USING BTREE,
  KEY `IX_jbase_flow_form_sort_6_more` (`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`ASKER`,`ISBANJIE`) USING BTREE,
  KEY `IX_jbase_flow_form_isbc` (`ISBANJIE`,`CREATETIME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_flow_form
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_flow_memo
-- ----------------------------
DROP TABLE IF EXISTS `jbase_flow_memo`;
CREATE TABLE `jbase_flow_memo` (
  `OPINIONID` char(32) DEFAULT NULL,
  `ID` char(32) NOT NULL,
  `CLOUDNODE` int(11) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `PIID` int(11) DEFAULT NULL,
  `TIID` int(11) DEFAULT NULL,
  `CONTENT` varchar(4000) DEFAULT NULL,
  `ISCHILD` int(11) DEFAULT '0',
  `NODE_NAME` varchar(80) DEFAULT NULL,
  `NACTOR_NAME` varchar(4000) DEFAULT NULL,
  `NNODE_NAME` varchar(80) DEFAULT NULL,
  `PARENTID` char(80) DEFAULT NULL,
  `RELEASE_USER_ID` char(32) DEFAULT NULL,
  `RELEASE_USER_NAME` varchar(80) DEFAULT NULL,
  `RELEASE_DEPT_ID` char(32) DEFAULT NULL,
  `RELEASE_DEPT_NAME` varchar(160) DEFAULT NULL,
  `NODETYPE` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_flow_memo_opinionid` (`OPINIONID`) USING BTREE,
  KEY `IX_jbase_flow_memo_piid-tiid` (`PIID`,`TIID`) USING BTREE,
  KEY `IX_jbase_flow_memo_parentid` (`PARENTID`) USING BTREE,
  KEY `IX_jbase_flow_memo_userid` (`RELEASE_USER_ID`) USING BTREE,
  KEY `IX_jbase_flow_memo_deptid` (`RELEASE_DEPT_ID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_flow_memo
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_flow_opinions
-- ----------------------------
DROP TABLE IF EXISTS `jbase_flow_opinions`;
CREATE TABLE `jbase_flow_opinions` (
  `ID` char(32) NOT NULL,
  `RELEASE_DEPT_ID` char(32) DEFAULT NULL,
  `RELEASE_DEPT_NAME` varchar(200) DEFAULT NULL,
  `RELEASE_USER_ID` char(32) DEFAULT NULL,
  `RELEASE_USER_NAME` varchar(200) DEFAULT NULL,
  `PIID` int(11) DEFAULT NULL,
  `TIID` int(11) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT NULL,
  `TASKNAME` varchar(200) DEFAULT NULL,
  `OPINIONFLAG` varchar(4) DEFAULT NULL,
  `GWFORMID` char(32) DEFAULT NULL,
  `DAIBANID` char(32) DEFAULT NULL,
  `ISVALID` char(2) DEFAULT NULL,
  `ISDRAFT` char(2) DEFAULT NULL,
  `OPINION` longtext,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_flow_opinions_deptid` (`RELEASE_DEPT_ID`) USING BTREE,
  KEY `IX_jbase_flow_opinions_userid` (`RELEASE_USER_ID`) USING BTREE,
  KEY `IX_jbase_flow_opinions_piid-tiid` (`PIID`,`TIID`) USING BTREE,
  KEY `IX_jbase_flow_opinions_daibanid` (`DAIBANID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_flow_opinions
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_iport_temp
-- ----------------------------
DROP TABLE IF EXISTS `jbase_iport_temp`;
CREATE TABLE `jbase_iport_temp` (
  `id` varchar(32) DEFAULT NULL,
  `COL1` varchar(100) DEFAULT NULL,
  `COL2` varchar(100) DEFAULT NULL,
  `COL3` varchar(100) DEFAULT NULL,
  `COL4` varchar(100) DEFAULT NULL,
  `COL5` varchar(100) DEFAULT NULL,
  `COL6` varchar(100) DEFAULT NULL,
  `COL7` varchar(100) DEFAULT NULL,
  `COL8` varchar(100) DEFAULT NULL,
  `COL9` varchar(100) DEFAULT NULL,
  `COL10` varchar(100) DEFAULT NULL,
  `COL11` varchar(100) DEFAULT NULL,
  `COL12` varchar(100) DEFAULT NULL,
  `COL13` varchar(100) DEFAULT NULL,
  `COL14` varchar(100) DEFAULT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `errorMsg` varchar(300) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `state` char(1) DEFAULT NULL,
  `dic_temp` varchar(50) DEFAULT NULL,
  `opttype` varchar(2) DEFAULT NULL,
  `typeCol` varchar(2) DEFAULT NULL,
  `dataCol` varchar(500) DEFAULT NULL
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_iport_temp
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_metadata_attribute
-- ----------------------------
DROP TABLE IF EXISTS `jbase_metadata_attribute`;
CREATE TABLE `jbase_metadata_attribute` (
  `ID` char(32) NOT NULL,
  `ATTRNAME` varchar(40) DEFAULT NULL,
  `ATTRCOL` varchar(5) DEFAULT NULL,
  `FILLMODE` varchar(20) DEFAULT NULL,
  `FILLMODENAME` varchar(40) DEFAULT NULL,
  `ISONLY` int(11) DEFAULT NULL,
  `CHECKMODE` varchar(20) DEFAULT NULL,
  `TIMEFORMAT` varchar(50) DEFAULT NULL,
  `REGEX` varchar(255) DEFAULT NULL,
  `ATTRDIC` varchar(20) DEFAULT NULL,
  `ATTRDICVAL` varchar(50) DEFAULT NULL,
  `ISREQUIRED` int(11) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `ATTRCODE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_metadata_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_metadata_model
-- ----------------------------
DROP TABLE IF EXISTS `jbase_metadata_model`;
CREATE TABLE `jbase_metadata_model` (
  `ID` char(32) NOT NULL,
  `MODELNAME` varchar(40) DEFAULT NULL,
  `PKIUSERTYPE` varchar(40) DEFAULT NULL,
  `DESCRIPTION` varchar(800) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `MODELCODE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_metadata_model
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_metadata_model_attribute
-- ----------------------------
DROP TABLE IF EXISTS `jbase_metadata_model_attribute`;
CREATE TABLE `jbase_metadata_model_attribute` (
  `ID` char(32) NOT NULL,
  `MODELID` varchar(32) DEFAULT NULL,
  `ATTRID` char(32) DEFAULT NULL,
  `ATTRSORT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_metadata_model_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_power_application
-- ----------------------------
DROP TABLE IF EXISTS `jbase_power_application`;
CREATE TABLE `jbase_power_application` (
  `ID` char(32) NOT NULL,
  `APPNAME` varchar(60) DEFAULT NULL,
  `APPCODE` varchar(20) DEFAULT NULL,
  `ISRELEASEAC` int(10) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `DEPLOYADDR` varchar(255) DEFAULT NULL,
  `ACCESSADDR` varchar(200) DEFAULT NULL,
  `MANAGER` varchar(50) DEFAULT NULL,
  `MANAGERDEP` varchar(120) DEFAULT NULL,
  `MANAGERCONTACT` varchar(50) DEFAULT NULL,
  `DEVELOPUNIT` varchar(120) DEFAULT NULL,
  `UNITCONTACT` varchar(50) DEFAULT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `RELEASEUSERID` char(32) DEFAULT NULL,
  `APPJC` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_power_application
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_power_black
-- ----------------------------
DROP TABLE IF EXISTS `jbase_power_black`;
CREATE TABLE `jbase_power_black` (
  `ID` char(32) NOT NULL,
  `APPID` char(32) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_power_black
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_power_group
-- ----------------------------
DROP TABLE IF EXISTS `jbase_power_group`;
CREATE TABLE `jbase_power_group` (
  `ID` char(32) NOT NULL,
  `CODE` varchar(20) DEFAULT NULL,
  `NAME` varchar(40) DEFAULT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `APPID` char(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_power_group
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_power_groupcon
-- ----------------------------
DROP TABLE IF EXISTS `jbase_power_groupcon`;
CREATE TABLE `jbase_power_groupcon` (
  `ID` char(32) NOT NULL,
  `GROUPID` char(32) DEFAULT NULL,
  `GROUPNAME` varchar(40) DEFAULT NULL,
  `DICID` char(32) DEFAULT NULL,
  `DICNAME` varchar(510) DEFAULT NULL,
  `DICVAL` varchar(1000) DEFAULT NULL,
  `ISORG` int(10) DEFAULT NULL,
  `CONID` char(32) DEFAULT NULL,
  `CONVAL` varchar(100) DEFAULT NULL,
  `CONSORT` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_power_groupcon
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_power_resource
-- ----------------------------
DROP TABLE IF EXISTS `jbase_power_resource`;
CREATE TABLE `jbase_power_resource` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(40) DEFAULT NULL,
  `CODE` varchar(20) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `APPID` char(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_power_resource
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_power_role
-- ----------------------------
DROP TABLE IF EXISTS `jbase_power_role`;
CREATE TABLE `jbase_power_role` (
  `id` char(32) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `appId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_power_role
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_power_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `jbase_power_role_resource`;
CREATE TABLE `jbase_power_role_resource` (
  `id` char(32) NOT NULL,
  `appId` char(32) DEFAULT NULL,
  `appname` varchar(60) DEFAULT NULL,
  `roleid` char(32) DEFAULT NULL,
  `rolename` varchar(40) DEFAULT NULL,
  `resourceid` char(32) DEFAULT NULL,
  `resourcename` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_power_role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_power_rule
-- ----------------------------
DROP TABLE IF EXISTS `jbase_power_rule`;
CREATE TABLE `jbase_power_rule` (
  `ID` char(32) NOT NULL,
  `APPID` char(32) DEFAULT NULL,
  `APPNAME` varchar(60) DEFAULT NULL,
  `ROLEID` char(32) NOT NULL,
  `ROLENAME` varchar(40) DEFAULT NULL,
  `YWID` char(32) DEFAULT NULL,
  `YWNAME` varchar(120) DEFAULT NULL,
  `ISYJ` int(10) DEFAULT NULL,
  `SXRQ` char(32) NOT NULL,
  `AUTHTYPE` int(10) DEFAULT NULL,
  `RELEASEUSERID` char(32) DEFAULT NULL,
  `RELEASEUSERNAME` varchar(50) DEFAULT NULL,
  `RELEASEUSERDEPID` char(32) DEFAULT NULL,
  `RELEASEUSERDEPNAME` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_power_rule
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_power_usergroup
-- ----------------------------
DROP TABLE IF EXISTS `jbase_power_usergroup`;
CREATE TABLE `jbase_power_usergroup` (
  `id` char(32) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `remark` varchar(400) DEFAULT NULL,
  `appId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_power_usergroup
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_power_usergroup_member
-- ----------------------------
DROP TABLE IF EXISTS `jbase_power_usergroup_member`;
CREATE TABLE `jbase_power_usergroup_member` (
  `id` char(32) NOT NULL,
  `groupid` char(32) DEFAULT NULL,
  `groupname` varchar(40) DEFAULT NULL,
  `userid` char(32) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `usersort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_power_usergroup_member
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_syncerrordata
-- ----------------------------
DROP TABLE IF EXISTS `jbase_syncerrordata`;
CREATE TABLE `jbase_syncerrordata` (
  `id` varchar(50) NOT NULL,
  `objId` varchar(50) DEFAULT NULL,
  `objName` varchar(255) DEFAULT NULL,
  `errorMsg` varchar(2000) DEFAULT NULL,
  `optType` varchar(50) DEFAULT NULL,
  `update_time` varchar(40) DEFAULT NULL,
  `objCode` varchar(50) DEFAULT NULL,
  `dataType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_syncerrordata
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_sync_inittime
-- ----------------------------
DROP TABLE IF EXISTS `jbase_sync_inittime`;
CREATE TABLE `jbase_sync_inittime` (
  `id` varchar(50) NOT NULL,
  `execute_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_sync_inittime
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_user
-- ----------------------------
DROP TABLE IF EXISTS `jbase_user`;
CREATE TABLE `jbase_user` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `DEPID` char(32) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `CERTDN` varchar(255) DEFAULT NULL,
  `LOGINID` varchar(32) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `MODELNAME` varchar(40) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(11) DEFAULT NULL,
  `SPAREMOBILE` varchar(50) DEFAULT NULL,
  `SMALLMARK` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SEX` int(10) DEFAULT NULL,
  `BIRTHYEAR` int(11) DEFAULT NULL,
  `BIRTHMONTH` int(11) DEFAULT NULL,
  `BIRTHDAY` int(11) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ISRETIRE` int(10) DEFAULT NULL,
  `ISPARTTIMEJOB` int(10) DEFAULT NULL,
  `ISPARTTIMEUSER` int(10) DEFAULT NULL,
  `ORIGINALUSERID` char(32) DEFAULT NULL,
  `SORT` int(10) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `zerenId` char(32) DEFAULT NULL,
  `zerenName` varchar(120) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `zerenStatus` int(10) DEFAULT NULL,
  `isFlow` int(10) DEFAULT NULL,
  `LASTOPERATEDATE` varchar(50) DEFAULT NULL,
  `YDCERTDN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_user_mobile` (`MOBILE`) USING BTREE,
  KEY `IX_jbase_user_email` (`EMAIL`) USING BTREE,
  KEY `IX_jbase_user_certdn` (`CERTDN`,`STATUS`) USING BTREE,
  KEY `IX_jbase_user_namepwd` (`NAME`,`PASSWORD`,`STATUS`) USING BTREE,
  KEY `IX_jbase_user_ispo_ispa_s_6` (`ISPOLICE`,`ISPARTTIMEUSER`,`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jbase_user_md_ispa_s_6` (`MODELCODE`,`ISPARTTIMEUSER`,`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jbase_user_6_more` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`STATUS`,`DEPID`,`ISPARTTIMEUSER`,`ISPOLICE`,`NAME`,`MODELCODE`,`CERTDN`,`ISRETIRE`) USING BTREE,
  KEY `IX_jbase_code_sort_6_more` (`CODE`,`SORT`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`STATUS`,`DEPID`,`ISPARTTIMEUSER`,`ISPOLICE`,`NAME`,`MODELCODE`,`CERTDN`,`ISRETIRE`) USING BTREE,
  KEY `IX_jbase_user_zenrenId` (`zerenId`,`STATUS`) USING BTREE,
  KEY `IX_jbase_user_oid_ispa` (`ORIGINALUSERID`,`ISPARTTIMEUSER`) USING BTREE,
  KEY `IX_jbase_user_idcard` (`IDCARD`,`PASSWORD`),
  KEY `IX_jbase_user_status` (`STATUS`,`MODELCODE`,`ISRETIRE`,`CODE`,`SORT`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_user
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userapp
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userapp`;
CREATE TABLE `jbase_userapp` (
  `innerId` char(40) NOT NULL,
  `userId` char(40) DEFAULT NULL,
  `configManagerId` char(40) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`innerId`),
  KEY `IX_jbase_userapp_userid` (`userId`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userapp
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userbyflow
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userbyflow`;
CREATE TABLE `jbase_userbyflow` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `DEPID` char(32) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `CERTDN` varchar(255) DEFAULT NULL,
  `LOGINID` varchar(32) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `MODELNAME` varchar(40) DEFAULT NULL,
  `POLICEIDNUMBER` varchar(20) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(11) DEFAULT NULL,
  `SPAREMOBILE` varchar(50) DEFAULT NULL,
  `SMALLMARK` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SEX` char(2) DEFAULT NULL,
  `BIRTHYEAR` int(11) DEFAULT NULL,
  `BIRTHMONTH` int(11) DEFAULT NULL,
  `BIRTHDAY` int(11) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `ISRETIRE` int(11) DEFAULT NULL,
  `ISPARTTIMEJOB` int(11) DEFAULT NULL,
  `ISPARTTIMEUSER` int(10) DEFAULT NULL,
  `ORIGINALUSERID` char(32) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `ISMAKECERT` char(2) DEFAULT NULL,
  `DATATYPE` int(10) DEFAULT NULL,
  `PUBLICID` char(32) DEFAULT NULL,
  `ISBANJIE` int(11) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `REASON` varchar(400) DEFAULT NULL,
  `zerenId` char(32) DEFAULT NULL,
  `zerenName` varchar(120) DEFAULT NULL,
  `ZERENDEPID` char(32) DEFAULT NULL,
  `parttimeJobCode` varchar(4000) DEFAULT NULL,
  `parttimeJobId` varchar(4000) DEFAULT NULL,
  `parttimeJobName` varchar(4000) DEFAULT NULL,
  `ISSELFMAKECERT` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `SUBMITTYPE` int(10) DEFAULT NULL,
  `SUBMITUSERID` char(32) DEFAULT NULL,
  `ISMAKEWIRELESSCERT` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_userbyflow_p_d_u` (`PUBLICID`,`DATATYPE`,`USERID`) USING BTREE,
  KEY `IX_jbase_userbyflow_userid` (`USERID`) USING BTREE,
  KEY `IX_jbase_userbyflow_s_p_d` (`SUBMITUSERID`,`PUBLICID`,`DATATYPE`) USING BTREE,
  KEY `IX_jbase_userbyflow_is_m_e` (`ISPARTTIMEUSER`,`MOBILE`,`EMAIL`) USING BTREE,
  KEY `IX_jbase_userbyflow_isb_d` (`ISBANJIE`,`DATATYPE`) USING BTREE,
  KEY `IX_jbase_userbyflow_d` (`DATATYPE`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userbyflow
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userbyflow_devicema
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userbyflow_devicema`;
CREATE TABLE `jbase_userbyflow_devicema` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `DEPID` char(32) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `CERTDN` varchar(255) DEFAULT NULL,
  `LOGINID` varchar(32) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `MODELNAME` varchar(40) DEFAULT NULL,
  `POLICEIDNUMBER` varchar(20) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `MOBILE` char(11) DEFAULT NULL,
  `SPAREMOBILE` varchar(50) DEFAULT NULL,
  `SMALLMARK` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SEX` char(2) DEFAULT NULL,
  `BIRTHYEAR` int(10) DEFAULT NULL,
  `BIRTHMONTH` int(10) DEFAULT NULL,
  `BIRTHDAY` int(10) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ISRETIRE` int(10) DEFAULT NULL,
  `ISPARTTIMEJOB` int(10) DEFAULT NULL,
  `ISPARTTIMEUSER` int(10) DEFAULT NULL,
  `ORIGINALUSERID` char(32) DEFAULT NULL,
  `SORT` int(10) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `ISMAKECERT` char(2) DEFAULT NULL,
  `DATATYPE` int(10) DEFAULT NULL,
  `PUBLICID` char(32) DEFAULT NULL,
  `ISBANJIE` int(10) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `REASON` varchar(400) DEFAULT NULL,
  `zerenId` char(32) DEFAULT NULL,
  `zerenName` varchar(120) DEFAULT NULL,
  `ZERENDEPID` char(32) DEFAULT NULL,
  `parttimeJobCode` varchar(4000) DEFAULT NULL,
  `parttimeJobId` varchar(4000) DEFAULT NULL,
  `parttimeJobName` varchar(4000) DEFAULT NULL,
  `ISSELFMAKECERT` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `SUBMITTYPE` int(10) DEFAULT NULL,
  `SUBMITUSERID` char(32) DEFAULT NULL,
  `ISMAKEWIRELESSCERT` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_userbyflow_p_d_u` (`PUBLICID`,`DATATYPE`,`USERID`) USING BTREE,
  KEY `IX_jbase_userbyflow_userid` (`USERID`) USING BTREE,
  KEY `IX_jbase_userbyflow_s_p_d` (`SUBMITUSERID`,`PUBLICID`,`DATATYPE`) USING BTREE,
  KEY `IX_jbase_userbyflow_is_m_e` (`ISPARTTIMEUSER`,`MOBILE`,`EMAIL`) USING BTREE,
  KEY `IX_jbase_userbyflow_isb_d` (`ISBANJIE`,`DATATYPE`) USING BTREE,
  KEY `IX_jbase_userbyflow_dm_d` (`DATATYPE`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userbyflow_devicema
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userextattr
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userextattr`;
CREATE TABLE `jbase_userextattr` (
  `ID` char(32) NOT NULL,
  `USERID` char(32) DEFAULT NULL,
  `COL1` varchar(255) DEFAULT NULL,
  `COL2` varchar(255) DEFAULT NULL,
  `COL3` varchar(255) DEFAULT NULL,
  `COL4` varchar(255) DEFAULT NULL,
  `COL5` varchar(255) DEFAULT NULL,
  `COL6` varchar(255) DEFAULT NULL,
  `COL7` varchar(255) DEFAULT NULL,
  `COL8` varchar(255) DEFAULT NULL,
  `COL9` varchar(255) DEFAULT NULL,
  `COL10` varchar(255) DEFAULT NULL,
  `COL11` varchar(255) DEFAULT NULL,
  `COL12` varchar(255) DEFAULT NULL,
  `COL13` varchar(255) DEFAULT NULL,
  `COL14` varchar(255) DEFAULT NULL,
  `COL15` varchar(255) DEFAULT NULL,
  `COL16` varchar(255) DEFAULT NULL,
  `COL17` varchar(255) DEFAULT NULL,
  `COL18` varchar(255) DEFAULT NULL,
  `COL19` varchar(255) DEFAULT NULL,
  `COL20` varchar(255) DEFAULT NULL,
  `updateTime` char(40) DEFAULT NULL,
  `COL21` varchar(255) DEFAULT NULL,
  `COL22` varchar(255) DEFAULT NULL,
  `COL23` varchar(255) DEFAULT NULL,
  `COL24` varchar(255) DEFAULT NULL,
  `COL25` varchar(255) DEFAULT NULL,
  `COL26` varchar(255) DEFAULT NULL,
  `COL27` varchar(255) DEFAULT NULL,
  `COL28` varchar(255) DEFAULT NULL,
  `COL29` varchar(255) DEFAULT NULL,
  `COL30` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_userextattr_uid` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userextattr
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userextattrbyflow
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userextattrbyflow`;
CREATE TABLE `jbase_userextattrbyflow` (
  `ID` char(32) NOT NULL,
  `USERID` char(32) DEFAULT NULL,
  `PUBLICID` char(32) DEFAULT NULL,
  `ISBANJIE` int(11) DEFAULT NULL,
  `SUBMITUSERID` char(32) DEFAULT NULL,
  `DATATYPE` int(11) DEFAULT NULL,
  `COL1` varchar(255) DEFAULT NULL,
  `COL2` varchar(255) DEFAULT NULL,
  `COL3` varchar(255) DEFAULT NULL,
  `COL4` varchar(255) DEFAULT NULL,
  `COL5` varchar(255) DEFAULT NULL,
  `COL6` varchar(255) DEFAULT NULL,
  `COL7` varchar(255) DEFAULT NULL,
  `COL8` varchar(255) DEFAULT NULL,
  `COL9` varchar(255) DEFAULT NULL,
  `COL10` varchar(255) DEFAULT NULL,
  `COL11` varchar(255) DEFAULT NULL,
  `COL12` varchar(255) DEFAULT NULL,
  `COL13` varchar(255) DEFAULT NULL,
  `COL14` varchar(255) DEFAULT NULL,
  `COL15` varchar(255) DEFAULT NULL,
  `COL16` varchar(255) DEFAULT NULL,
  `COL17` varchar(255) DEFAULT NULL,
  `COL18` varchar(255) DEFAULT NULL,
  `COL19` varchar(255) DEFAULT NULL,
  `COL20` varchar(255) DEFAULT NULL,
  `COL21` varchar(255) DEFAULT NULL,
  `COL22` varchar(255) DEFAULT NULL,
  `COL23` varchar(255) DEFAULT NULL,
  `COL24` varchar(255) DEFAULT NULL,
  `COL25` varchar(255) DEFAULT NULL,
  `COL26` varchar(255) DEFAULT NULL,
  `COL27` varchar(255) DEFAULT NULL,
  `COL28` varchar(255) DEFAULT NULL,
  `COL29` varchar(255) DEFAULT NULL,
  `COL30` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_userextattbyflow_uid` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userextattrbyflow
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userextattr_trail
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userextattr_trail`;
CREATE TABLE `jbase_userextattr_trail` (
  `ID` char(32) NOT NULL,
  `TRAILID` varchar(32) DEFAULT NULL,
  `USERID` varchar(32) DEFAULT NULL,
  `COL1` varchar(255) DEFAULT NULL,
  `COL2` varchar(255) DEFAULT NULL,
  `COL3` varchar(255) DEFAULT NULL,
  `COL4` varchar(255) DEFAULT NULL,
  `COL5` varchar(255) DEFAULT NULL,
  `COL6` varchar(255) DEFAULT NULL,
  `COL7` varchar(255) DEFAULT NULL,
  `COL8` varchar(255) DEFAULT NULL,
  `COL9` varchar(255) DEFAULT NULL,
  `COL10` varchar(255) DEFAULT NULL,
  `COL11` varchar(255) DEFAULT NULL,
  `COL12` varchar(255) DEFAULT NULL,
  `COL13` varchar(255) DEFAULT NULL,
  `COL14` varchar(255) DEFAULT NULL,
  `COL15` varchar(255) DEFAULT NULL,
  `COL16` varchar(255) DEFAULT NULL,
  `COL17` varchar(255) DEFAULT NULL,
  `COL18` varchar(255) DEFAULT NULL,
  `COL19` varchar(255) DEFAULT NULL,
  `COL20` varchar(255) DEFAULT NULL,
  `COL21` varchar(255) DEFAULT NULL,
  `COL22` varchar(255) DEFAULT NULL,
  `COL23` varchar(255) DEFAULT NULL,
  `COL24` varchar(255) DEFAULT NULL,
  `COL25` varchar(255) DEFAULT NULL,
  `COL26` varchar(255) DEFAULT NULL,
  `COL27` varchar(255) DEFAULT NULL,
  `COL28` varchar(255) DEFAULT NULL,
  `COL29` varchar(255) DEFAULT NULL,
  `COL30` varchar(255) DEFAULT NULL,
  `updateTime` char(40) DEFAULT NULL,
  `columnTranslate` text,
  `valueTranslate` text,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userextattr_trail
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userextflow_devicema
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userextflow_devicema`;
CREATE TABLE `jbase_userextflow_devicema` (
  `ID` char(32) NOT NULL,
  `USERID` char(32) DEFAULT NULL,
  `DATATYPE` int(10) DEFAULT NULL,
  `SUBMITUSERID` char(32) DEFAULT NULL,
  `PUBLICID` char(32) DEFAULT NULL,
  `COL1` varchar(255) DEFAULT NULL,
  `COL2` varchar(255) DEFAULT NULL,
  `COL3` varchar(255) DEFAULT NULL,
  `COL4` varchar(255) DEFAULT NULL,
  `COL5` varchar(255) DEFAULT NULL,
  `COL6` varchar(255) DEFAULT NULL,
  `COL7` varchar(255) DEFAULT NULL,
  `COL8` varchar(255) DEFAULT NULL,
  `COL9` varchar(255) DEFAULT NULL,
  `COL10` varchar(255) DEFAULT NULL,
  `COL11` varchar(255) DEFAULT NULL,
  `COL12` varchar(255) DEFAULT NULL,
  `COL13` varchar(255) DEFAULT NULL,
  `COL14` varchar(255) DEFAULT NULL,
  `COL15` varchar(255) DEFAULT NULL,
  `COL16` varchar(255) DEFAULT NULL,
  `COL17` varchar(255) DEFAULT NULL,
  `COL18` varchar(255) DEFAULT NULL,
  `COL19` varchar(255) DEFAULT NULL,
  `COL20` varchar(255) DEFAULT NULL,
  `ISBANJIE` int(10) DEFAULT NULL,
  `COL21` varchar(255) DEFAULT NULL,
  `COL22` varchar(255) DEFAULT NULL,
  `COL23` varchar(255) DEFAULT NULL,
  `COL24` varchar(255) DEFAULT NULL,
  `COL25` varchar(255) DEFAULT NULL,
  `COL26` varchar(255) DEFAULT NULL,
  `COL27` varchar(255) DEFAULT NULL,
  `COL28` varchar(255) DEFAULT NULL,
  `COL29` varchar(255) DEFAULT NULL,
  `COL30` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_userextattbyflow_uid` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userextflow_devicema
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userexttrail_del
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userexttrail_del`;
CREATE TABLE `jbase_userexttrail_del` (
  `ID` char(32) NOT NULL,
  `USERID` varchar(32) DEFAULT NULL,
  `TRAILID` varchar(32) DEFAULT NULL,
  `COL1` varchar(255) DEFAULT NULL,
  `COL2` varchar(255) DEFAULT NULL,
  `COL3` varchar(255) DEFAULT NULL,
  `COL4` varchar(255) DEFAULT NULL,
  `COL5` varchar(255) DEFAULT NULL,
  `COL6` varchar(255) DEFAULT NULL,
  `COL7` varchar(255) DEFAULT NULL,
  `COL8` varchar(255) DEFAULT NULL,
  `COL9` varchar(255) DEFAULT NULL,
  `COL10` varchar(255) DEFAULT NULL,
  `COL11` varchar(255) DEFAULT NULL,
  `COL12` varchar(255) DEFAULT NULL,
  `COL13` varchar(255) DEFAULT NULL,
  `COL14` varchar(255) DEFAULT NULL,
  `COL15` varchar(255) DEFAULT NULL,
  `COL16` varchar(255) DEFAULT NULL,
  `COL17` varchar(255) DEFAULT NULL,
  `COL18` varchar(255) DEFAULT NULL,
  `COL19` varchar(255) DEFAULT NULL,
  `COL20` varchar(255) DEFAULT NULL,
  `COL21` varchar(255) DEFAULT NULL,
  `COL22` varchar(255) DEFAULT NULL,
  `COL23` varchar(255) DEFAULT NULL,
  `COL24` varchar(255) DEFAULT NULL,
  `COL25` varchar(255) DEFAULT NULL,
  `COL26` varchar(255) DEFAULT NULL,
  `COL27` varchar(255) DEFAULT NULL,
  `COL28` varchar(255) DEFAULT NULL,
  `COL29` varchar(255) DEFAULT NULL,
  `COL30` varchar(255) DEFAULT NULL,
  `updateTime` char(40) DEFAULT NULL,
  `columnTranslate` text,
  `valueTranslate` text,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userexttrail_del
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userstats_abnor
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userstats_abnor`;
CREATE TABLE `jbase_userstats_abnor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deptid` char(32) DEFAULT NULL,
  `modelcode` char(32) DEFAULT NULL,
  `EXCEPTIONREASON` int(10) NOT NULL,
  `counts` int(10) DEFAULT NULL,
  `yearmonth` char(10) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_userstats_ab_ym_e_6` (`yearmonth`,`EXCEPTIONREASON`,`province`,`city`,`country`,`subordinate`,`subordinate2`,`subordinate3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userstats_abnor
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userstats_abnornow
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userstats_abnornow`;
CREATE TABLE `jbase_userstats_abnornow` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `USERID` char(32) DEFAULT NULL,
  `DEPTID` char(32) DEFAULT NULL,
  `MODELCODE` char(32) DEFAULT NULL,
  `EXCEPTIONREASON` int(10) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_userstats_ab_td_uid` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userstats_abnornow
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userstats_abnorold
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userstats_abnorold`;
CREATE TABLE `jbase_userstats_abnorold` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `USERID` char(32) DEFAULT NULL,
  `DEPTID` char(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `EXCEPTIONREASON` int(10) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_userstats_ab_yd_uid` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userstats_abnorold
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userstats_abnortmp
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userstats_abnortmp`;
CREATE TABLE `jbase_userstats_abnortmp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deptid` char(32) DEFAULT NULL,
  `modelcode` char(32) DEFAULT NULL,
  `EXCEPTIONREASON` int(10) DEFAULT NULL,
  `counts` int(10) DEFAULT NULL,
  `yearmonth` char(10) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_userstats_ab_tmp` (`yearmonth`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userstats_abnortmp
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_userstats_retire
-- ----------------------------
DROP TABLE IF EXISTS `jbase_userstats_retire`;
CREATE TABLE `jbase_userstats_retire` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modelcode` varchar(32) DEFAULT NULL,
  `counts` int(10) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  `retireDate` bigint(19) DEFAULT NULL,
  `retireMon` char(4) DEFAULT NULL,
  `modelName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_userstatret_m_r_r_6` (`modelcode`,`retireMon`,`retireDate`,`province`,`city`,`country`,`subordinate`,`subordinate2`,`subordinate3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_userstats_retire
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_usertrail
-- ----------------------------
DROP TABLE IF EXISTS `jbase_usertrail`;
CREATE TABLE `jbase_usertrail` (
  `ID` char(32) NOT NULL,
  `USERID` varchar(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `DEPID` char(32) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `CERTDN` varchar(255) DEFAULT NULL,
  `LOGINID` varchar(32) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `MODELNAME` varchar(40) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(11) DEFAULT NULL,
  `SPAREMOBILE` varchar(50) DEFAULT NULL,
  `SMALLMARK` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SEX` int(10) DEFAULT NULL,
  `BIRTHYEAR` int(11) DEFAULT NULL,
  `BIRTHMONTH` int(11) DEFAULT NULL,
  `BIRTHDAY` int(11) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ISRETIRE` int(10) DEFAULT NULL,
  `ISPARTTIMEJOB` int(10) DEFAULT NULL,
  `ISPARTTIMEUSER` int(10) DEFAULT NULL,
  `ORIGINALTRAILID` char(32) DEFAULT NULL,
  `ORIGINALUSERID` char(32) DEFAULT NULL,
  `SORT` int(10) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `zerenId` char(32) DEFAULT NULL,
  `zerenName` varchar(120) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `zerenStatus` int(10) DEFAULT NULL,
  `isFlow` int(10) DEFAULT NULL,
  `LASTOPERATEDATE` varchar(50) DEFAULT NULL,
  `YDCERTDN` varchar(255) DEFAULT NULL,
  `OPERATETYPE` int(10) DEFAULT NULL,
  `OPERATEUSERID` varchar(32) DEFAULT NULL,
  `OPERATEUSERNAME` varchar(120) DEFAULT NULL,
  `OPERATETIME` varchar(50) DEFAULT NULL,
  `DEPICT` varchar(2000) DEFAULT NULL,
  `IP` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_userTrail_uid` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_usertrail
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_usertrail_delete
-- ----------------------------
DROP TABLE IF EXISTS `jbase_usertrail_delete`;
CREATE TABLE `jbase_usertrail_delete` (
  `ID` char(32) NOT NULL,
  `USERID` varchar(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `DEPID` char(32) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `CERTDN` varchar(255) DEFAULT NULL,
  `LOGINID` varchar(32) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `MODELNAME` varchar(40) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(11) DEFAULT NULL,
  `SPAREMOBILE` varchar(50) DEFAULT NULL,
  `SMALLMARK` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SEX` int(10) DEFAULT NULL,
  `BIRTHYEAR` int(11) DEFAULT NULL,
  `BIRTHMONTH` int(11) DEFAULT NULL,
  `BIRTHDAY` int(11) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ISRETIRE` int(10) DEFAULT NULL,
  `ISPARTTIMEJOB` int(10) DEFAULT NULL,
  `ISPARTTIMEUSER` int(10) DEFAULT NULL,
  `ORIGINALTRAILID` char(32) DEFAULT NULL,
  `ORIGINALUSERID` char(32) DEFAULT NULL,
  `SORT` int(10) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `zerenId` char(32) DEFAULT NULL,
  `zerenName` varchar(120) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `zerenStatus` int(10) DEFAULT NULL,
  `isFlow` int(10) DEFAULT NULL,
  `LASTOPERATEDATE` varchar(50) DEFAULT NULL,
  `YDCERTDN` varchar(255) DEFAULT NULL,
  `OPERATETYPE` int(10) DEFAULT NULL,
  `OPERATEUSERID` varchar(32) DEFAULT NULL,
  `OPERATEUSERNAME` varchar(120) DEFAULT NULL,
  `OPERATETIME` varchar(50) DEFAULT NULL,
  `DEPICT` varchar(2000) DEFAULT NULL,
  `IP` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_userTrail_uid` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_usertrail_delete
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_user_answer
-- ----------------------------
DROP TABLE IF EXISTS `jbase_user_answer`;
CREATE TABLE `jbase_user_answer` (
  `id` varchar(32) NOT NULL,
  `userid` varchar(32) DEFAULT NULL,
  `questionid` varchar(10) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_user_answer_us_qu_an` (`userid`,`questionid`,`answer`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_user_answer
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_user_delete
-- ----------------------------
DROP TABLE IF EXISTS `jbase_user_delete`;
CREATE TABLE `jbase_user_delete` (
  `id` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `idcard` char(18) DEFAULT NULL,
  `deletetime` char(30) DEFAULT NULL,
  `depid` varchar(32) DEFAULT NULL,
  `code` varchar(12) DEFAULT NULL,
  `depname` varchar(120) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  `certdn` varchar(255) DEFAULT NULL,
  `ydcertdn` varchar(255) DEFAULT NULL,
  `loginid` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `modelcode` varchar(32) DEFAULT NULL,
  `modelname` varchar(40) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `rankname` varchar(255) DEFAULT NULL,
  `policeclass` varchar(255) DEFAULT NULL,
  `policeclassname` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `positionname` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `postname` varchar(255) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `mobile` char(11) DEFAULT NULL,
  `sparemobile` varchar(50) DEFAULT NULL,
  `smallmark` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `BIRTHYEAR` int(11) DEFAULT NULL,
  `BIRTHMONTH` int(11) DEFAULT NULL,
  `BIRTHDAY` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `isretire` int(11) DEFAULT NULL,
  `isparttimejob` int(11) DEFAULT NULL,
  `isparttimeuser` int(11) DEFAULT NULL,
  `originaluserid` char(32) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `createtime` char(40) DEFAULT NULL,
  `ZERENID` char(32) DEFAULT NULL,
  `ZERENNAME` varchar(120) DEFAULT NULL,
  `ISPOLICE` int(11) DEFAULT NULL,
  `isFlow` int(11) DEFAULT NULL,
  `lastOperateDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_user_delete
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_user_error
-- ----------------------------
DROP TABLE IF EXISTS `jbase_user_error`;
CREATE TABLE `jbase_user_error` (
  `id` char(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `idCard` varchar(30) DEFAULT NULL,
  `modelName` varchar(50) DEFAULT NULL,
  `createTime` varchar(40) DEFAULT NULL,
  `releaseUserId` varchar(32) DEFAULT NULL,
  `releaseUserName` varchar(120) DEFAULT NULL,
  `errorMsg` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_user_error
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_user_photoinfo
-- ----------------------------
DROP TABLE IF EXISTS `jbase_user_photoinfo`;
CREATE TABLE `jbase_user_photoinfo` (
  `id` varchar(32) NOT NULL,
  `userid` varchar(32) DEFAULT NULL,
  `photoType` int(2) DEFAULT NULL,
  `tiJiaoStatus` int(2) DEFAULT NULL,
  `createTime` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_user_photoinfo_us_tjs_pt` (`userid`,`photoType`,`tiJiaoStatus`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_user_photoinfo
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_validatecode
-- ----------------------------
DROP TABLE IF EXISTS `jbase_validatecode`;
CREATE TABLE `jbase_validatecode` (
  `ID` char(32) NOT NULL,
  `VALIDKEY` varchar(200) DEFAULT NULL,
  `CODE` varchar(20) NOT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JBASE_VALIDATECODE_V_C_ct` (`VALIDKEY`,`CODE`,`CREATETIME`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_validatecode
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_certbyflow
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_certbyflow`;
CREATE TABLE `jbase_wireless_certbyflow` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `rsaCtmlName` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` varchar(2000) DEFAULT NULL,
  `RSAENCCERTENTITY` varchar(2000) DEFAULT NULL,
  `CARDID` varchar(50) DEFAULT NULL,
  `PUBLICID` char(32) DEFAULT NULL,
  `DATATYPE` int(10) DEFAULT NULL,
  `CERTID` char(32) DEFAULT NULL,
  `YQTIME` varchar(40) DEFAULT NULL,
  `REASON` varchar(800) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` varchar(2000) DEFAULT NULL,
  `SM2ENCCERTENTITY` varchar(2000) DEFAULT NULL,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `SUBMITUSERID` char(32) DEFAULT NULL,
  `ISSELFMAKECERT` int(10) DEFAULT NULL,
  `SUBMITTYPE` int(10) DEFAULT NULL,
  `MODELNAME` varchar(40) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `BFREASONSTA` int(10) DEFAULT NULL,
  `EQUIPMENTNUM` varchar(50) DEFAULT NULL,
  `PHONENUM` varchar(50) DEFAULT NULL,
  `ALIAS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_wcertbyflow_s_p_d_st` (`SUBMITUSERID`,`PUBLICID`,`DATATYPE`,`SUBMITTYPE`) USING BTREE,
  KEY `IX_jbase_wcertbyflow_uid_more` (`USERID`,`DATATYPE`,`PUBLICID`,`SUBMITTYPE`) USING BTREE,
  KEY `IX_jbase_wcertbyflow_pid_d_st` (`PUBLICID`,`DATATYPE`,`SUBMITTYPE`) USING BTREE,
  KEY `IX_jbase_wcertbyflow_d` (`DATATYPE`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_certbyflow
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_certinfo
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_certinfo`;
CREATE TABLE `jbase_wireless_certinfo` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `rsaCtmlName` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` text,
  `RSAENCCERTENTITY` text,
  `CARDID` varchar(50) DEFAULT NULL,
  `CREATECERTDATE` varchar(50) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` text,
  `SM2ENCCERTENTITY` text,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `LASTUPDATESTATUSDATE` char(50) DEFAULT NULL,
  `RAID` varchar(50) DEFAULT NULL,
  `DJREASON` int(10) DEFAULT NULL,
  `updateTime` char(50) DEFAULT NULL,
  `EQUIPMENTNUM` varchar(30) DEFAULT NULL,
  `PHONENUM` varchar(15) DEFAULT NULL,
  `OPERATOR` varchar(10) DEFAULT NULL,
  `ALIAS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_wcertinfo_userid` (`USERID`) USING BTREE,
  KEY `IX_jbase_wcertinfo_subject` (`SUBJECT`(255)) USING BTREE,
  KEY `IX_jbase_wcertinfo_idcard` (`IDCARD`) USING BTREE,
  KEY `IX_jbase_wcertinfo_ispo_s_6` (`ISPOLICE`,`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jbase_wcertinfo_status_6` (`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jbase_wcertinfo_6_n_ct_nb` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`NAME`,`CERTTYPE`,`NOTBEFORE`) USING BTREE,
  KEY `IX_jbase_wcertinfo_cardid` (`CARDID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_certinfo
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_certmake_status
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_certmake_status`;
CREATE TABLE `jbase_wireless_certmake_status` (
  `USERID` char(32) NOT NULL,
  `YQTIME` char(10) DEFAULT NULL,
  `ISSELFMAKECERT` int(10) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `OPTTYPE` int(11) DEFAULT NULL,
  `certinfoId` varchar(32) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `TEL` varchar(11) DEFAULT NULL,
  `DEVICE` varchar(100) DEFAULT NULL,
  `createTime` varchar(40) DEFAULT NULL,
  `sort` int(10) DEFAULT '0',
  `batch` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_WCertMake_Status_i_6` (`ISSELFMAKECERT`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_certmake_status
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_certsn
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_certsn`;
CREATE TABLE `jbase_wireless_certsn` (
  `CARDID` varchar(50) NOT NULL DEFAULT '',
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`CARDID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_certsn
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_certtrail
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_certtrail`;
CREATE TABLE `jbase_wireless_certtrail` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOTAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `RSACTMLNAME` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` text,
  `RSAENCCERTENTITY` text,
  `CARDID` varchar(50) DEFAULT NULL,
  `CREATECERTDATE` varchar(50) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` text,
  `SM2ENCCERTENTITY` text,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `LASTUPDATESTATUSDATE` char(50) DEFAULT NULL,
  `RAID` char(50) DEFAULT NULL,
  `DJREASON` int(10) DEFAULT NULL,
  `UPDATETIME` varchar(50) DEFAULT NULL,
  `OPERATETYPE` int(10) DEFAULT NULL,
  `OPERATEUSERID` varchar(32) DEFAULT NULL,
  `OPERATEUSERNAME` varchar(120) DEFAULT NULL,
  `OPERATETIME` varchar(50) DEFAULT NULL,
  `OPERATEMODE` int(10) DEFAULT NULL,
  `DEPICT` varchar(2000) DEFAULT NULL,
  `ALIAS` varchar(100) DEFAULT NULL,
  `EQUIPMENTNUM` varchar(30) DEFAULT NULL,
  `PHONENUM` varchar(15) DEFAULT NULL,
  `OPERATOR` varchar(10) DEFAULT NULL,
  `IP` varchar(30) DEFAULT NULL,
  `CERTID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_wirel_certTrail_userId` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_certtrail
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_certtrai_delete
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_certtrai_delete`;
CREATE TABLE `jbase_wireless_certtrai_delete` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOTAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `RSACTMLNAME` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` text,
  `RSAENCCERTENTITY` text,
  `CARDID` varchar(50) DEFAULT NULL,
  `CREATECERTDATE` varchar(50) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` text,
  `SM2ENCCERTENTITY` text,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `LASTUPDATESTATUSDATE` char(50) DEFAULT NULL,
  `RAID` char(50) DEFAULT NULL,
  `DJREASON` int(10) DEFAULT NULL,
  `UPDATETIME` varchar(50) DEFAULT NULL,
  `OPERATETYPE` int(10) DEFAULT NULL,
  `OPERATEUSERID` varchar(32) DEFAULT NULL,
  `OPERATEUSERNAME` varchar(120) DEFAULT NULL,
  `OPERATETIME` varchar(50) DEFAULT NULL,
  `OPERATEMODE` int(10) DEFAULT NULL,
  `DEPICT` varchar(2000) DEFAULT NULL,
  `ALIAS` varchar(100) DEFAULT NULL,
  `EQUIPMENTNUM` varchar(30) DEFAULT NULL,
  `PHONENUM` varchar(15) DEFAULT NULL,
  `OPERATOR` varchar(10) DEFAULT NULL,
  `IP` varchar(30) DEFAULT NULL,
  `CERTID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_certtrai_delete
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_cert_download
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_cert_download`;
CREATE TABLE `jbase_wireless_cert_download` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `rsaCtmlName` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` varchar(2000) DEFAULT NULL,
  `RSAENCCERTENTITY` varchar(2000) DEFAULT NULL,
  `CARDID` varchar(50) DEFAULT NULL,
  `CREATECERTDATE` varchar(50) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` varchar(2000) DEFAULT NULL,
  `SM2ENCCERTENTITY` varchar(2000) DEFAULT NULL,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `LASTUPDATESTATUSDATE` char(50) DEFAULT NULL,
  `RAID` varchar(50) DEFAULT NULL,
  `DJREASON` int(10) DEFAULT NULL,
  `updateTime` char(50) DEFAULT NULL,
  `EQUIPMENTNUM` varchar(30) DEFAULT NULL,
  `PHONENUM` varchar(15) DEFAULT NULL,
  `OPERATOR` varchar(10) DEFAULT NULL,
  `ALIAS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_wcertinfo_userid` (`USERID`) USING BTREE,
  KEY `IX_jbase_wcertinfo_subject` (`SUBJECT`(255)) USING BTREE,
  KEY `IX_jbase_wcertinfo_idcard` (`IDCARD`) USING BTREE,
  KEY `IX_jbase_wcertinfo_ispo_s_6` (`ISPOLICE`,`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jbase_wcertinfo_status_6` (`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jbase_wcertinfo_6_n_ct_nb` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`NAME`,`CERTTYPE`,`NOTBEFORE`) USING BTREE,
  KEY `IX_jbase_wcertinfo_cardid` (`CARDID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_cert_download
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_cert_error
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_cert_error`;
CREATE TABLE `jbase_wireless_cert_error` (
  `ID` varchar(32) NOT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `IDCARD` varchar(30) DEFAULT NULL,
  `CREATETIME` varchar(40) DEFAULT NULL,
  `RELEASEUSERID` varchar(32) DEFAULT NULL,
  `RELEASEUSERNAME` varchar(120) DEFAULT NULL,
  `ERRORMSG` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_cert_error
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_cert_raid
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_cert_raid`;
CREATE TABLE `jbase_wireless_cert_raid` (
  `IDCARD` varchar(18) NOT NULL DEFAULT '',
  `RAID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDCARD`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_cert_raid
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_cert_server
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_cert_server`;
CREATE TABLE `jbase_wireless_cert_server` (
  `ID` char(32) NOT NULL,
  `DOMAIN` varchar(255) NOT NULL,
  `IPADDR` char(15) DEFAULT NULL,
  `OPTSYS` varchar(60) DEFAULT NULL,
  `SMODEL` varchar(255) DEFAULT NULL,
  `APPSYS` varchar(60) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
  `DEPID` char(32) DEFAULT NULL,
  `DEPCODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOAFTER` char(50) DEFAULT NULL,
  `SUBJECT` varchar(255) NOT NULL,
  `RSASIGNCERTENTITY` varchar(2000) DEFAULT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_cert_server
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_devicecardinter
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_devicecardinter`;
CREATE TABLE `jbase_wireless_devicecardinter` (
  `ID` char(32) NOT NULL,
  `CARDINTERVA` varchar(500) DEFAULT NULL,
  `NAME` varchar(63) DEFAULT NULL,
  `COMPANY` varchar(63) DEFAULT NULL,
  `TYPE` int(10) DEFAULT NULL,
  `BATCH` varchar(50) DEFAULT NULL,
  `ALGO` varchar(50) DEFAULT NULL,
  `USERTYPE` varchar(63) DEFAULT NULL,
  `OWNERNAME` varchar(63) DEFAULT NULL,
  `OWNERID` char(32) DEFAULT NULL,
  `REGISTRANTNAME` varchar(100) DEFAULT NULL,
  `REGUSTERTIME` char(50) DEFAULT NULL,
  `CREATETIME` char(50) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `REGISTRANTDEPNAME` varchar(100) DEFAULT NULL,
  `BOOKERS` varchar(100) DEFAULT NULL,
  `BOOKERSID` char(32) DEFAULT NULL,
  `CARDNUMBER` int(10) DEFAULT NULL,
  `REGISTRANTID` char(32) DEFAULT NULL,
  `REGISTRANTDEPID` char(32) DEFAULT NULL,
  `DEVICEDRIVEID` char(32) DEFAULT NULL,
  `DEVICEDRIVENAME` varchar(50) DEFAULT NULL,
  `USESCENE` varchar(50) DEFAULT NULL,
  `DEVICETYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_wdevicecardinterva_6_more` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`ALGO`,`REGUSTERTIME`) USING BTREE,
  KEY `IX_wdevicecardinterva_sort6more` (`REGUSTERTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`ALGO`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_devicecardinter
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_deviceinfo
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_deviceinfo`;
CREATE TABLE `jbase_wireless_deviceinfo` (
  `ID` char(32) NOT NULL,
  `CARDID` varchar(32) DEFAULT NULL,
  `COMPANY` varchar(100) DEFAULT NULL,
  `TYPE` int(10) DEFAULT NULL,
  `BATCH` varchar(50) DEFAULT NULL,
  `ALGO` varchar(50) DEFAULT NULL,
  `USERTYPE` varchar(50) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `OWNERNAME` varchar(100) DEFAULT NULL,
  `OWNERID` char(32) DEFAULT NULL,
  `REGISTRANTNAME` varchar(100) DEFAULT NULL,
  `SYSCARDTIME` char(50) DEFAULT NULL,
  `REGUSTERTIME` char(50) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `REGISTRANTDEPNAME` varchar(120) DEFAULT NULL,
  `BOOKERS` varchar(50) DEFAULT NULL,
  `BOOKERSID` char(32) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `CARDINTERVAID` char(32) DEFAULT NULL,
  `REGISTRANTID` char(32) DEFAULT NULL,
  `REGISTRANTDEPID` char(32) DEFAULT NULL,
  `DEVICEDRIVEID` char(32) DEFAULT NULL,
  `DEVICEDRIVENAME` varchar(50) DEFAULT NULL,
  `USESCENE` varchar(50) DEFAULT NULL,
  `DEVICETYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_wdeviceinfo_6_more` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`OWNERNAME`,`STATUS`,`ALGO`,`CREATETIME`) USING BTREE,
  KEY `IX_jbase_wdeviceinfo_sort6more` (`CARDID`,`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`OWNERNAME`,`STATUS`,`ALGO`) USING BTREE,
  KEY `IX_wdeviceinfo_status6more` (`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_deviceinfo
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_deviceinfo_del
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_deviceinfo_del`;
CREATE TABLE `jbase_wireless_deviceinfo_del` (
  `ID` char(32) NOT NULL,
  `CARDID` varchar(32) DEFAULT NULL,
  `COMPANY` varchar(100) DEFAULT NULL,
  `TYPE` int(10) DEFAULT NULL,
  `BATCH` varchar(50) DEFAULT NULL,
  `ALGO` varchar(50) DEFAULT NULL,
  `USERTYPE` varchar(50) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `OWNERNAME` varchar(100) DEFAULT NULL,
  `OWNERID` char(32) DEFAULT NULL,
  `REGISTRANTNAME` varchar(100) DEFAULT NULL,
  `SYSCARDTIME` char(50) DEFAULT NULL,
  `REGUSTERTIME` char(50) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `REGISTRANTDEPNAME` varchar(120) DEFAULT NULL,
  `BOOKERS` varchar(50) DEFAULT NULL,
  `BOOKERSID` char(32) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `CARDINTERVAID` char(32) DEFAULT NULL,
  `REGISTRANTID` char(32) DEFAULT NULL,
  `REGISTRANTDEPID` char(32) DEFAULT NULL,
  `DEVICEDRIVEID` char(32) DEFAULT NULL,
  `DEVICEDRIVENAME` varchar(50) DEFAULT NULL,
  `USESCENE` varchar(50) DEFAULT NULL,
  `DEVICETYPE` varchar(50) DEFAULT NULL,
  `deleteTime` char(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_wdeviceinfodel_6_more` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`OWNERNAME`,`STATUS`,`ALGO`,`CREATETIME`) USING BTREE,
  KEY `IX_jbase_wdeviceinfodel_sort6more` (`CARDID`,`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`,`OWNERNAME`,`STATUS`,`ALGO`) USING BTREE,
  KEY `IX_wdeviceinfodel_status6more` (`STATUS`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_deviceinfo_del
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_devicelog
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_devicelog`;
CREATE TABLE `jbase_wireless_devicelog` (
  `ID` char(32) NOT NULL,
  `OPTTIME` char(50) DEFAULT NULL,
  `INFOID` char(32) DEFAULT NULL,
  `OPTUSERID` char(32) DEFAULT NULL,
  `OPTUSERNAME` varchar(50) DEFAULT NULL,
  `OPTDEPID` char(32) DEFAULT NULL,
  `optDepName` varchar(120) DEFAULT NULL,
  `OPTTYPE` int(10) DEFAULT NULL,
  `OPTIP` varchar(50) DEFAULT NULL,
  `OPTUSERDN` varchar(512) DEFAULT NULL,
  `OPTMSG` varchar(500) DEFAULT NULL,
  `LOGTYPE` int(10) DEFAULT NULL,
  `APPCODE` varchar(50) DEFAULT NULL,
  `OPTMODEL` varchar(100) DEFAULT NULL,
  `OPTUSERTYPE` int(10) DEFAULT NULL,
  `MARK` int(10) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `CARDINTERVAID` char(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_wdevicelog_infoid` (`INFOID`) USING BTREE,
  KEY `IX_jbase_wdevicelog_userid` (`OPTUSERID`) USING BTREE,
  KEY `IX_jbase_wdevicelog_deptid` (`OPTDEPID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_devicelog
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_devicemanager
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_devicemanager`;
CREATE TABLE `jbase_wireless_devicemanager` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `userId` varchar(32) DEFAULT NULL,
  `idCard` varchar(18) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `isDownLoad` char(2) DEFAULT NULL,
  `certId` varchar(32) DEFAULT NULL,
  `isBindCert` char(1) DEFAULT NULL,
  `phoneNum` varchar(50) DEFAULT NULL,
  `deviceNum` varchar(50) DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `safeCardType` varchar(50) DEFAULT NULL,
  `terminalType` varchar(50) DEFAULT NULL,
  `terminalSystem` varchar(50) DEFAULT NULL,
  `terminalbrand` varchar(50) DEFAULT NULL,
  `useType` varchar(10) DEFAULT NULL,
  `createTime` varchar(20) DEFAULT NULL,
  `updateTime` varchar(20) DEFAULT NULL,
  `isFlow` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name` (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_devicemanager
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_devicemanalog
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_devicemanalog`;
CREATE TABLE `jbase_wireless_devicemanalog` (
  `ID` char(32) NOT NULL DEFAULT '',
  `OPTTIME` char(50) DEFAULT NULL,
  `INFOID` char(32) DEFAULT NULL,
  `OPTUSERID` char(32) DEFAULT NULL,
  `OPTUSERNAME` varchar(50) DEFAULT NULL,
  `OPTDEPID` char(32) DEFAULT NULL,
  `OPTDEPNAME` varchar(120) DEFAULT NULL,
  `OPTTYPE` int(10) DEFAULT NULL,
  `OPTIP` varchar(50) DEFAULT NULL,
  `OPTUSERDN` varchar(512) DEFAULT NULL,
  `OPTMSG` varchar(500) DEFAULT NULL,
  `LOGTYPE` int(10) DEFAULT NULL,
  `APPCODE` varchar(50) DEFAULT NULL,
  `OPTMODEL` varchar(100) DEFAULT NULL,
  `OPTUSERTYPE` int(10) DEFAULT NULL,
  `MARK` int(10) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `CARDINTERVAID` char(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_devicemanalog
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_devicemgbyflow
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_devicemgbyflow`;
CREATE TABLE `jbase_wireless_devicemgbyflow` (
  `id` varchar(32) NOT NULL,
  `deviceId` varchar(32) DEFAULT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `idCard` varchar(18) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL COMMENT '下级1',
  `subordinate2` char(2) DEFAULT NULL COMMENT '下级2',
  `subordinate3` char(2) DEFAULT NULL COMMENT '下级3',
  `name` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `isDownLoad` char(1) DEFAULT NULL,
  `certId` varchar(32) DEFAULT NULL,
  `isBindCert` char(1) DEFAULT NULL,
  `phoneNum` varchar(50) DEFAULT NULL COMMENT '手机号',
  `deviceNum` varchar(50) DEFAULT NULL COMMENT '设备号',
  `operator` varchar(50) DEFAULT NULL COMMENT '运营商',
  `safeCardType` varchar(50) DEFAULT NULL COMMENT '安全卡类型',
  `terminalType` varchar(50) DEFAULT NULL COMMENT '终端类型',
  `terminalSystem` varchar(50) DEFAULT NULL COMMENT ' 终端系统',
  `terminalbrand` varchar(50) DEFAULT NULL COMMENT '终端品牌',
  `useType` varchar(10) DEFAULT '' COMMENT '应用类型',
  `createTime` varchar(20) DEFAULT NULL,
  `updateTime` varchar(20) DEFAULT NULL,
  `publicId` varchar(32) DEFAULT NULL,
  `SUBMITUSERID` char(32) DEFAULT NULL,
  `isBanjie` int(10) DEFAULT NULL,
  `submitType` int(10) DEFAULT NULL,
  `isSelfMakeCert` varchar(10) DEFAULT NULL,
  `dataType` int(2) DEFAULT NULL,
  `reason` varchar(400) DEFAULT NULL,
  `isMakeCert` varchar(10) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name` (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_devicemgbyflow
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_devicemg_delete
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_devicemg_delete`;
CREATE TABLE `jbase_wireless_devicemg_delete` (
  `id` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `idCard` varchar(18) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL COMMENT '下级1',
  `subordinate2` char(2) DEFAULT NULL COMMENT '下级2',
  `subordinate3` char(2) DEFAULT NULL COMMENT '下级3',
  `name` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `isDownLoad` char(1) DEFAULT NULL,
  `certId` varchar(32) DEFAULT NULL,
  `isBindCert` char(1) DEFAULT NULL,
  `phoneNum` varchar(50) DEFAULT NULL COMMENT '手机号',
  `deviceNum` varchar(50) DEFAULT NULL COMMENT '设备号',
  `operator` varchar(50) DEFAULT NULL COMMENT '运营商',
  `safeCardType` varchar(50) DEFAULT NULL COMMENT '安全卡类型',
  `terminalType` varchar(50) DEFAULT NULL COMMENT '终端类型',
  `terminalSystem` varchar(50) DEFAULT NULL COMMENT ' 终端系统',
  `terminalbrand` varchar(50) DEFAULT NULL COMMENT '终端品牌',
  `useType` varchar(10) DEFAULT NULL COMMENT '应用类型',
  `createTime` varchar(20) DEFAULT NULL,
  `updateTime` varchar(20) DEFAULT NULL,
  `deleteTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name` (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_devicemg_delete
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_device_error
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_device_error`;
CREATE TABLE `jbase_wireless_device_error` (
  `ID` char(32) NOT NULL,
  `CARDID` varchar(120) DEFAULT NULL,
  `SIGNCERTSN` varchar(120) DEFAULT NULL,
  `RELEASEUSERID` char(32) DEFAULT NULL,
  `RELEASEUSERNAME` varchar(40) DEFAULT NULL,
  `ERRORMSG` varchar(2000) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_department_error_name-code-emsg` (`CARDID`,`SIGNCERTSN`,`ERRORMSG`(255)) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_device_error
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_wireless_terminal_error
-- ----------------------------
DROP TABLE IF EXISTS `jbase_wireless_terminal_error`;
CREATE TABLE `jbase_wireless_terminal_error` (
  `id` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `idCard` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `phoneNum` varchar(50) DEFAULT NULL,
  `deviceNum` varchar(50) DEFAULT NULL,
  `errorMsg` varchar(2000) DEFAULT NULL,
  `createTime` varchar(50) DEFAULT NULL,
  `releaseUserId` varchar(50) DEFAULT NULL,
  `releaseUserName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_wireless_terminal_error_username` (`username`),
  KEY `IX_jbase_wireless_terminal_error_idCard` (`idCard`),
  KEY `IX_jbase_wireless_terminal_error_phoneNum` (`phoneNum`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_wireless_terminal_error
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_yd_certinfo_delete
-- ----------------------------
DROP TABLE IF EXISTS `jbase_yd_certinfo_delete`;
CREATE TABLE `jbase_yd_certinfo_delete` (
  `ID` char(32) NOT NULL,
  `RSASIGNCERTSN` varchar(40) DEFAULT NULL,
  `RSAENCCERTSN` varchar(40) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `NAME` varchar(120) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `SUBJECT` varchar(512) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(120) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `NOTBEFORE` char(50) DEFAULT NULL,
  `NOAFTER` char(50) DEFAULT NULL,
  `CERTTYPE` varchar(50) DEFAULT NULL,
  `rsaCtmlName` varchar(50) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `POLICECLASSNAME` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `RANKNAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `POSITIONNAME` varchar(255) DEFAULT NULL,
  `POST` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `RSASIGNCERTENTITY` text,
  `RSAENCCERTENTITY` text,
  `CARDID` varchar(50) DEFAULT NULL,
  `CREATECERTDATE` varchar(50) DEFAULT NULL,
  `SIGNDEP` varchar(120) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `SM2SIGNCERTSN` varchar(40) DEFAULT NULL,
  `SM2ENCCERTSN` varchar(40) DEFAULT NULL,
  `SM2SIGNCERTENTITY` text,
  `SM2ENCCERTENTITY` text,
  `SM2CTMLNAME` varchar(50) DEFAULT NULL,
  `ISPOLICE` int(10) DEFAULT NULL,
  `LASTUPDATESTATUSDATE` char(50) DEFAULT NULL,
  `RAID` varchar(50) DEFAULT NULL,
  `djReason` int(10) DEFAULT NULL,
  `deleteTime` char(40) DEFAULT NULL,
  `EQUIPMENTNUM` varchar(30) DEFAULT NULL,
  `PHONENUM` varchar(15) DEFAULT NULL,
  `OPERATOR` varchar(10) DEFAULT NULL,
  `ALIAS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_certinfo_idcard` (`IDCARD`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_yd_certinfo_delete
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_yd_certstats_nomatch
-- ----------------------------
DROP TABLE IF EXISTS `jbase_yd_certstats_nomatch`;
CREATE TABLE `jbase_yd_certstats_nomatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptid` char(32) DEFAULT NULL,
  `modelcode` varchar(32) DEFAULT NULL,
  `no_match_reason` int(11) DEFAULT NULL,
  `counts` int(11) DEFAULT NULL,
  `yearmonth` char(10) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_certstats_no_ym_n_6` (`no_match_reason`,`yearmonth`,`province`,`city`,`country`,`subordinate`,`subordinate2`,`subordinate3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_yd_certstats_nomatch
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_yd_certstats_nomatchtmp
-- ----------------------------
DROP TABLE IF EXISTS `jbase_yd_certstats_nomatchtmp`;
CREATE TABLE `jbase_yd_certstats_nomatchtmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptid` char(32) DEFAULT NULL,
  `modelcode` varchar(32) DEFAULT NULL,
  `no_match_reason` int(11) DEFAULT NULL,
  `counts` int(11) DEFAULT NULL,
  `yearmonth` char(10) DEFAULT NULL,
  `code` char(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jbase_yd_certstats_no_temp` (`yearmonth`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_yd_certstats_nomatchtmp
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_yd_certwarning_nomatchn
-- ----------------------------
DROP TABLE IF EXISTS `jbase_yd_certwarning_nomatchn`;
CREATE TABLE `jbase_yd_certwarning_nomatchn` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` char(32) DEFAULT NULL,
  `DEPTID` char(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `NO_MATCH_REASON` int(11) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_yd_certwar_no_now_ud` (`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_yd_certwarning_nomatchn
-- ----------------------------

-- ----------------------------
-- Table structure for jbase_yd_certwarning_nomatcho
-- ----------------------------
DROP TABLE IF EXISTS `jbase_yd_certwarning_nomatcho`;
CREATE TABLE `jbase_yd_certwarning_nomatcho` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` char(32) DEFAULT NULL,
  `DEPTID` char(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `NO_MATCH_REASON` int(11) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jbase_yd_certwar_no_old_uid` (`USERID`) USING BTREE,
  KEY `IX_jbase_yd_certwar_no_old_did` (`DEPTID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbase_yd_certwarning_nomatcho
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_action
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_action`;
CREATE TABLE `jbpm_action` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `class` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ISPROPAGATIONALLOWED_` bit(1) DEFAULT NULL,
  `ACTIONEXPRESSION_` varchar(255) DEFAULT NULL,
  `ISASYNC_` bit(1) DEFAULT NULL,
  `REFERENCEDACTION_` bigint(20) DEFAULT NULL,
  `ACTIONDELEGATION_` bigint(20) DEFAULT NULL,
  `EVENT_` bigint(20) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `TIMERNAME_` varchar(255) DEFAULT NULL,
  `DUEDATE_` varchar(255) DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `TIMERACTION_` bigint(20) DEFAULT NULL,
  `EXPRESSION_` varchar(4000) DEFAULT NULL,
  `EVENTINDEX_` int(11) DEFAULT NULL,
  `EXCEPTIONHANDLER_` bigint(20) DEFAULT NULL,
  `EXCEPTIONHANDLERINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_ACTION_REFACT` (`REFERENCEDACTION_`) USING BTREE,
  KEY `FK_CRTETIMERACT_TA` (`TIMERACTION_`) USING BTREE,
  KEY `FK_ACTION_PROCDEF` (`PROCESSDEFINITION_`) USING BTREE,
  KEY `FK_ACTION_EVENT` (`EVENT_`) USING BTREE,
  KEY `FK_ACTION_ACTNDEL` (`ACTIONDELEGATION_`) USING BTREE,
  KEY `FK_ACTION_EXPTHDL` (`EXCEPTIONHANDLER_`) USING BTREE,
  CONSTRAINT `jbpm_action_ibfk_1` FOREIGN KEY (`EXCEPTIONHANDLER_`) REFERENCES `jbpm_exceptionhandler` (`ID_`),
  CONSTRAINT `jbpm_action_ibfk_2` FOREIGN KEY (`ACTIONDELEGATION_`) REFERENCES `jbpm_delegation` (`ID_`),
  CONSTRAINT `jbpm_action_ibfk_3` FOREIGN KEY (`EVENT_`) REFERENCES `jbpm_event` (`ID_`),
  CONSTRAINT `jbpm_action_ibfk_4` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `jbpm_action_ibfk_5` FOREIGN KEY (`REFERENCEDACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `jbpm_action_ibfk_6` FOREIGN KEY (`TIMERACTION_`) REFERENCES `jbpm_action` (`ID_`)
) ENGINE=GsDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_action
-- ----------------------------
INSERT INTO `jbpm_action` VALUES ('1', 'A', null, '', null, '\0', null, '1', '1', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('2', 'A', null, '', null, '\0', null, '4', '2', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('3', 'A', null, '', null, '\0', null, '9', '3', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('4', 'A', null, '', null, '\0', null, '11', '4', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('5', 'A', null, '', null, '\0', null, '17', '5', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('6', 'A', null, '', null, '\0', null, '23', '6', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('7', 'A', null, '', null, '\0', null, '25', '7', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('8', 'A', null, '', null, '\0', null, '29', '8', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('9', 'A', null, '', null, '\0', null, '33', '9', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('10', 'A', null, '', null, '\0', null, '39', '10', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('11', 'A', null, '', null, '\0', null, '41', '11', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('12', 'A', null, '', null, '\0', null, '47', '12', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('13', 'A', null, '', null, '\0', null, '49', '13', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('14', 'A', null, '', null, '\0', null, '53', '14', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('15', 'A', null, '', null, '\0', null, '58', '15', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('16', 'A', null, '', null, '\0', null, '64', '16', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('17', 'A', null, '', null, '\0', null, '68', '17', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('18', 'A', null, '', null, '\0', null, '74', '18', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('19', 'A', null, '', null, '\0', null, '78', '19', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('20', 'A', null, '', null, '\0', null, '82', '20', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('21', 'A', null, '', null, '\0', null, '87', '21', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('22', 'A', null, '', null, '\0', null, '91', '22', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('23', 'A', null, '', null, '\0', null, '96', '23', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('24', 'A', null, '', null, '\0', null, '100', '24', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('25', 'A', null, '', null, '\0', null, '105', '25', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('26', 'A', null, '', null, '\0', null, '109', '26', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('27', 'A', null, '', null, '\0', null, '114', '27', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('28', 'A', null, '', null, '\0', null, '118', '28', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('29', 'A', null, '', null, '\0', null, '123', '29', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('30', 'A', null, '', null, '\0', null, '127', '30', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('31', 'A', null, '', null, '\0', null, '132', '31', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('32', 'A', null, '', null, '\0', null, '136', '32', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('33', 'A', null, '', null, '\0', null, '138', '33', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('34', 'A', null, '', null, '\0', null, '142', '34', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('35', 'A', null, '', null, '\0', null, '150', '35', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('36', 'A', null, '', null, '\0', null, '151', '36', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('37', 'A', null, '', null, '\0', null, '153', '37', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('38', 'A', null, '', null, '\0', null, '156', '38', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('39', 'A', null, '', null, '\0', null, '162', '39', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('40', 'A', null, '', null, '\0', null, '168', '40', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('41', 'A', null, '', null, '\0', null, '172', '41', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('42', 'A', null, '', null, '\0', null, '174', '42', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('43', 'A', null, '', null, '\0', null, '180', '43', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('44', 'A', null, '', null, '\0', null, '186', '44', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('45', 'A', null, '', null, '\0', null, '189', '45', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('46', 'A', null, '', null, '\0', null, '195', '46', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('47', 'A', null, '', null, '\0', null, '198', '47', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('48', 'A', null, '', null, '\0', null, '201', '48', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('49', 'A', null, '', null, '\0', null, '207', '49', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('50', 'A', null, '', null, '\0', null, '211', '50', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('51', 'A', null, '', null, '\0', null, '216', '51', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('52', 'A', null, '', null, '\0', null, '219', '52', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('53', 'A', null, '', null, '\0', null, '225', '53', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('54', 'A', null, '', null, '\0', null, '228', '54', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('55', 'A', null, '', null, '\0', null, '231', '55', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('56', 'A', null, '', null, '\0', null, '234', '56', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('57', 'A', null, '', null, '\0', null, '240', '57', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('58', 'A', null, '', null, '\0', null, '243', '58', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('59', 'A', null, '', null, '\0', null, '246', '59', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('60', 'A', null, '', null, '\0', null, '252', '60', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('61', 'A', null, '', null, '\0', null, '257', '61', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('62', 'A', null, '', null, '\0', null, '262', '62', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('63', 'A', null, '', null, '\0', null, '267', '63', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('64', 'A', null, '', null, '\0', null, '270', '64', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('65', 'A', null, '', null, '\0', null, '276', '65', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('66', 'A', null, '', null, '\0', null, '282', '66', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('67', 'A', null, '', null, '\0', null, '288', '67', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('68', 'A', null, '', null, '\0', null, '294', '68', null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `jbpm_action` VALUES ('69', 'A', null, '', null, '\0', null, '298', '69', null, null, null, null, null, null, null, '0', null, null);

-- ----------------------------
-- Table structure for jbpm_bytearray
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_bytearray`;
CREATE TABLE `jbpm_bytearray` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `FILEDEFINITION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_BYTEARR_FILDEF` (`FILEDEFINITION_`) USING BTREE,
  CONSTRAINT `jbpm_bytearray_ibfk_1` FOREIGN KEY (`FILEDEFINITION_`) REFERENCES `jbpm_moduledefinition` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_bytearray
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_byteblock
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_byteblock`;
CREATE TABLE `jbpm_byteblock` (
  `PROCESSFILE_` bigint(20) NOT NULL,
  `BYTES_` blob,
  `INDEX_` int(11) NOT NULL,
  PRIMARY KEY (`PROCESSFILE_`,`INDEX_`),
  KEY `FK_BYTEBLOCK_FILE` (`PROCESSFILE_`) USING BTREE,
  CONSTRAINT `jbpm_byteblock_ibfk_1` FOREIGN KEY (`PROCESSFILE_`) REFERENCES `jbpm_bytearray` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_byteblock
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_comment
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_comment`;
CREATE TABLE `jbpm_comment` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  `MESSAGE_` varchar(4000) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  `TOKENINDEX_` int(11) DEFAULT NULL,
  `TASKINSTANCEINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_COMMENT_TOKEN` (`TOKEN_`) USING BTREE,
  KEY `FK_COMMENT_TSK` (`TASKINSTANCE_`) USING BTREE,
  CONSTRAINT `jbpm_comment_ibfk_1` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`),
  CONSTRAINT `jbpm_comment_ibfk_2` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_comment
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_decisionconditions
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_decisionconditions`;
CREATE TABLE `jbpm_decisionconditions` (
  `DECISION_` bigint(20) NOT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `EXPRESSION_` varchar(255) DEFAULT NULL,
  `INDEX_` int(11) NOT NULL,
  PRIMARY KEY (`DECISION_`,`INDEX_`),
  KEY `FK_DECCOND_DEC` (`DECISION_`) USING BTREE,
  CONSTRAINT `jbpm_decisionconditions_ibfk_1` FOREIGN KEY (`DECISION_`) REFERENCES `jbpm_node` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_decisionconditions
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_delegation
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_delegation`;
CREATE TABLE `jbpm_delegation` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASSNAME_` varchar(4000) DEFAULT NULL,
  `CONFIGURATION_` varchar(4000) DEFAULT NULL,
  `CONFIGTYPE_` varchar(255) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_DELEGATION_PRCD` (`PROCESSDEFINITION_`) USING BTREE,
  CONSTRAINT `jbpm_delegation_ibfk_1` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`)
) ENGINE=GsDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_delegation
-- ----------------------------
INSERT INTO `jbpm_delegation` VALUES ('1', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '1');
INSERT INTO `jbpm_delegation` VALUES ('2', 'com.jit.jwf.handle.User', null, null, '1');
INSERT INTO `jbpm_delegation` VALUES ('3', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '1');
INSERT INTO `jbpm_delegation` VALUES ('4', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '1');
INSERT INTO `jbpm_delegation` VALUES ('5', 'com.jit.jwf.handle.User', null, null, '1');
INSERT INTO `jbpm_delegation` VALUES ('6', 'com.jit.jwf.handle.User', null, null, '1');
INSERT INTO `jbpm_delegation` VALUES ('7', 'com.jit.jwf.handle.User', null, null, '1');
INSERT INTO `jbpm_delegation` VALUES ('8', 'com.jit.jwf.handle.User', null, null, '1');
INSERT INTO `jbpm_delegation` VALUES ('9', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '2');
INSERT INTO `jbpm_delegation` VALUES ('10', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '2');
INSERT INTO `jbpm_delegation` VALUES ('11', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '2');
INSERT INTO `jbpm_delegation` VALUES ('12', 'com.jit.jwf.handle.User', null, null, '2');
INSERT INTO `jbpm_delegation` VALUES ('13', 'com.jit.jwf.handle.User', null, null, '2');
INSERT INTO `jbpm_delegation` VALUES ('14', 'com.jit.jwf.handle.User', null, null, '2');
INSERT INTO `jbpm_delegation` VALUES ('15', 'com.jit.jwf.handle.User', null, null, '2');
INSERT INTO `jbpm_delegation` VALUES ('16', 'com.jit.jwf.handle.User', null, null, '2');
INSERT INTO `jbpm_delegation` VALUES ('17', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '3');
INSERT INTO `jbpm_delegation` VALUES ('18', 'com.jit.jwf.handle.User', null, null, '3');
INSERT INTO `jbpm_delegation` VALUES ('19', 'com.jit.jwf.handle.User', null, null, '3');
INSERT INTO `jbpm_delegation` VALUES ('20', 'com.jit.jwf.handle.User', null, null, '3');
INSERT INTO `jbpm_delegation` VALUES ('21', 'com.jit.jwf.handle.User', null, null, '3');
INSERT INTO `jbpm_delegation` VALUES ('22', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '3');
INSERT INTO `jbpm_delegation` VALUES ('23', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '3');
INSERT INTO `jbpm_delegation` VALUES ('24', 'com.jit.jwf.handle.User', null, null, '3');
INSERT INTO `jbpm_delegation` VALUES ('25', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '4');
INSERT INTO `jbpm_delegation` VALUES ('26', 'com.jit.jwf.handle.User', null, null, '4');
INSERT INTO `jbpm_delegation` VALUES ('27', 'com.jit.jwf.handle.User', null, null, '4');
INSERT INTO `jbpm_delegation` VALUES ('28', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '4');
INSERT INTO `jbpm_delegation` VALUES ('29', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '4');
INSERT INTO `jbpm_delegation` VALUES ('30', 'com.jit.jwf.handle.User', null, null, '4');
INSERT INTO `jbpm_delegation` VALUES ('31', 'com.jit.jwf.handle.User', null, null, '4');
INSERT INTO `jbpm_delegation` VALUES ('32', 'com.jit.jwf.handle.User', null, null, '4');
INSERT INTO `jbpm_delegation` VALUES ('33', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '5');
INSERT INTO `jbpm_delegation` VALUES ('34', 'com.jit.jwf.handle.User', null, null, '5');
INSERT INTO `jbpm_delegation` VALUES ('35', 'com.jit.jwf.handle.User', null, null, '5');
INSERT INTO `jbpm_delegation` VALUES ('36', 'com.jit.jwf.handle.User', null, null, '5');
INSERT INTO `jbpm_delegation` VALUES ('37', 'com.jit.jwf.handle.User', null, null, '5');
INSERT INTO `jbpm_delegation` VALUES ('38', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '5');
INSERT INTO `jbpm_delegation` VALUES ('39', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '5');
INSERT INTO `jbpm_delegation` VALUES ('40', 'com.jit.jwf.handle.User', null, null, '5');
INSERT INTO `jbpm_delegation` VALUES ('41', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '6');
INSERT INTO `jbpm_delegation` VALUES ('42', 'com.jit.jwf.handle.User', null, null, '6');
INSERT INTO `jbpm_delegation` VALUES ('43', 'com.jit.jwf.handle.User', null, null, '6');
INSERT INTO `jbpm_delegation` VALUES ('44', 'com.jit.jwf.handle.User', null, null, '6');
INSERT INTO `jbpm_delegation` VALUES ('45', 'com.jit.jwf.handle.User', null, null, '6');
INSERT INTO `jbpm_delegation` VALUES ('46', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '6');
INSERT INTO `jbpm_delegation` VALUES ('47', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '6');
INSERT INTO `jbpm_delegation` VALUES ('48', 'com.jit.jwf.handle.User', null, null, '6');
INSERT INTO `jbpm_delegation` VALUES ('49', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '7');
INSERT INTO `jbpm_delegation` VALUES ('50', 'com.jit.jwf.handle.User', null, null, '7');
INSERT INTO `jbpm_delegation` VALUES ('51', 'com.jit.jwf.handle.User', null, null, '7');
INSERT INTO `jbpm_delegation` VALUES ('52', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '7');
INSERT INTO `jbpm_delegation` VALUES ('53', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '7');
INSERT INTO `jbpm_delegation` VALUES ('54', 'com.jit.jwf.handle.User', null, null, '7');
INSERT INTO `jbpm_delegation` VALUES ('55', 'com.jit.jwf.handle.User', null, null, '7');
INSERT INTO `jbpm_delegation` VALUES ('56', 'com.jit.jwf.handle.User', null, null, '7');
INSERT INTO `jbpm_delegation` VALUES ('57', 'com.jit.jwf.handle.User', null, null, '7');
INSERT INTO `jbpm_delegation` VALUES ('58', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '8');
INSERT INTO `jbpm_delegation` VALUES ('59', 'com.jit.jwf.handle.User', null, null, '8');
INSERT INTO `jbpm_delegation` VALUES ('60', 'com.jit.jwf.handle.User', null, null, '8');
INSERT INTO `jbpm_delegation` VALUES ('61', 'com.jit.jwf.handle.User', null, null, '8');
INSERT INTO `jbpm_delegation` VALUES ('62', 'com.jit.jwf.handle.User', null, null, '8');
INSERT INTO `jbpm_delegation` VALUES ('63', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '8');
INSERT INTO `jbpm_delegation` VALUES ('64', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '8');
INSERT INTO `jbpm_delegation` VALUES ('65', 'com.jit.jwf.handle.User', null, null, '8');
INSERT INTO `jbpm_delegation` VALUES ('66', 'com.jit.jwf.handle.User', null, null, '9');
INSERT INTO `jbpm_delegation` VALUES ('67', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '9');
INSERT INTO `jbpm_delegation` VALUES ('68', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '9');
INSERT INTO `jbpm_delegation` VALUES ('69', 'com.jit.jwf.handle.User', null, null, '9');
INSERT INTO `jbpm_delegation` VALUES ('70', 'com.jit.jwf.handle.User', null, null, '9');
INSERT INTO `jbpm_delegation` VALUES ('71', 'com.jit.jwf.handle.User', null, null, '9');
INSERT INTO `jbpm_delegation` VALUES ('72', 'com.jit.jwf.handle.User', null, null, '9');
INSERT INTO `jbpm_delegation` VALUES ('73', 'com.jit.jwf.handle.User', null, null, '9');
INSERT INTO `jbpm_delegation` VALUES ('74', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '9');
INSERT INTO `jbpm_delegation` VALUES ('75', 'com.jit.jwf.handle.User', null, null, '9');
INSERT INTO `jbpm_delegation` VALUES ('76', 'com.jit.jwf.handle.User', null, null, '10');
INSERT INTO `jbpm_delegation` VALUES ('77', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '10');
INSERT INTO `jbpm_delegation` VALUES ('78', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '10');
INSERT INTO `jbpm_delegation` VALUES ('79', 'com.jit.jwf.handle.User', null, null, '10');
INSERT INTO `jbpm_delegation` VALUES ('80', 'com.jit.jwf.handle.User', null, null, '10');
INSERT INTO `jbpm_delegation` VALUES ('81', 'com.jit.jwf.handle.User', null, null, '10');
INSERT INTO `jbpm_delegation` VALUES ('82', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '10');
INSERT INTO `jbpm_delegation` VALUES ('83', 'com.jit.jwf.handle.User', null, null, '10');
INSERT INTO `jbpm_delegation` VALUES ('84', 'com.jit.jwf.handle.User', null, null, '11');
INSERT INTO `jbpm_delegation` VALUES ('85', 'com.jit.jwf.handle.User', null, null, '11');
INSERT INTO `jbpm_delegation` VALUES ('86', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '11');
INSERT INTO `jbpm_delegation` VALUES ('87', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '11');
INSERT INTO `jbpm_delegation` VALUES ('88', 'com.jit.jwf.handle.User', null, null, '11');
INSERT INTO `jbpm_delegation` VALUES ('89', 'com.jit.jwf.handle.User', null, null, '11');
INSERT INTO `jbpm_delegation` VALUES ('90', 'com.jit.jwf.handle.User', null, null, '11');
INSERT INTO `jbpm_delegation` VALUES ('91', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '11');
INSERT INTO `jbpm_delegation` VALUES ('92', 'com.jit.jwf.handle.User', null, null, '11');
INSERT INTO `jbpm_delegation` VALUES ('93', 'com.jit.jwf.handle.User', null, null, '12');
INSERT INTO `jbpm_delegation` VALUES ('94', 'com.jit.jwf.handle.User', null, null, '12');
INSERT INTO `jbpm_delegation` VALUES ('95', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '12');
INSERT INTO `jbpm_delegation` VALUES ('96', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '12');
INSERT INTO `jbpm_delegation` VALUES ('97', 'com.jit.jwf.handle.User', null, null, '12');
INSERT INTO `jbpm_delegation` VALUES ('98', 'com.jit.jwf.handle.User', null, null, '12');
INSERT INTO `jbpm_delegation` VALUES ('99', 'com.jit.jwf.handle.User', null, null, '12');
INSERT INTO `jbpm_delegation` VALUES ('100', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '12');
INSERT INTO `jbpm_delegation` VALUES ('101', 'com.jit.jwf.handle.User', null, null, '12');
INSERT INTO `jbpm_delegation` VALUES ('102', 'com.jit.jwf.handle.User', null, null, '13');
INSERT INTO `jbpm_delegation` VALUES ('103', 'com.jit.jwf.handle.User', null, null, '13');
INSERT INTO `jbpm_delegation` VALUES ('104', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '13');
INSERT INTO `jbpm_delegation` VALUES ('105', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '13');
INSERT INTO `jbpm_delegation` VALUES ('106', 'com.jit.jwf.handle.User', null, null, '13');
INSERT INTO `jbpm_delegation` VALUES ('107', 'com.jit.jwf.handle.User', null, null, '13');
INSERT INTO `jbpm_delegation` VALUES ('108', 'com.jit.jwf.handle.User', null, null, '13');
INSERT INTO `jbpm_delegation` VALUES ('109', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '13');
INSERT INTO `jbpm_delegation` VALUES ('110', 'com.jit.jwf.handle.User', null, null, '13');
INSERT INTO `jbpm_delegation` VALUES ('111', 'com.jit.jwf.handle.User', null, null, '14');
INSERT INTO `jbpm_delegation` VALUES ('112', 'com.jit.jwf.handle.User', null, null, '14');
INSERT INTO `jbpm_delegation` VALUES ('113', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '14');
INSERT INTO `jbpm_delegation` VALUES ('114', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '14');
INSERT INTO `jbpm_delegation` VALUES ('115', 'com.jit.jwf.handle.User', null, null, '14');
INSERT INTO `jbpm_delegation` VALUES ('116', 'com.jit.jwf.handle.User', null, null, '14');
INSERT INTO `jbpm_delegation` VALUES ('117', 'com.jit.jwf.handle.User', null, null, '14');
INSERT INTO `jbpm_delegation` VALUES ('118', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '14');
INSERT INTO `jbpm_delegation` VALUES ('119', 'com.jit.jwf.handle.User', null, null, '14');
INSERT INTO `jbpm_delegation` VALUES ('120', 'com.jit.jwf.handle.User', null, null, '15');
INSERT INTO `jbpm_delegation` VALUES ('121', 'com.jit.jwf.handle.User', null, null, '15');
INSERT INTO `jbpm_delegation` VALUES ('122', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '15');
INSERT INTO `jbpm_delegation` VALUES ('123', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '15');
INSERT INTO `jbpm_delegation` VALUES ('124', 'com.jit.jwf.handle.User', null, null, '15');
INSERT INTO `jbpm_delegation` VALUES ('125', 'com.jit.jwf.handle.User', null, null, '15');
INSERT INTO `jbpm_delegation` VALUES ('126', 'com.jit.jwf.handle.User', null, null, '15');
INSERT INTO `jbpm_delegation` VALUES ('127', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '15');
INSERT INTO `jbpm_delegation` VALUES ('128', 'com.jit.jwf.handle.User', null, null, '15');
INSERT INTO `jbpm_delegation` VALUES ('129', 'com.jit.jwf.handle.User', null, null, '16');
INSERT INTO `jbpm_delegation` VALUES ('130', 'com.jit.jwf.handle.User', null, null, '16');
INSERT INTO `jbpm_delegation` VALUES ('131', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '16');
INSERT INTO `jbpm_delegation` VALUES ('132', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '16');
INSERT INTO `jbpm_delegation` VALUES ('133', 'com.jit.jwf.handle.User', null, null, '16');
INSERT INTO `jbpm_delegation` VALUES ('134', 'com.jit.jwf.handle.User', null, null, '16');
INSERT INTO `jbpm_delegation` VALUES ('135', 'com.jit.jwf.handle.User', null, null, '16');
INSERT INTO `jbpm_delegation` VALUES ('136', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '16');
INSERT INTO `jbpm_delegation` VALUES ('137', 'com.jit.jwf.handle.User', null, null, '16');
INSERT INTO `jbpm_delegation` VALUES ('138', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '17');
INSERT INTO `jbpm_delegation` VALUES ('139', 'com.jit.jwf.handle.User', null, null, '17');
INSERT INTO `jbpm_delegation` VALUES ('140', 'com.jit.jwf.handle.User', null, null, '17');
INSERT INTO `jbpm_delegation` VALUES ('141', 'com.jit.flow.service.impl.FlowDecisionService', null, null, '17');
INSERT INTO `jbpm_delegation` VALUES ('142', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '17');
INSERT INTO `jbpm_delegation` VALUES ('143', 'com.jit.jwf.handle.User', null, null, '17');
INSERT INTO `jbpm_delegation` VALUES ('144', 'com.jit.jwf.handle.User', null, null, '17');
INSERT INTO `jbpm_delegation` VALUES ('145', 'com.jit.jwf.handle.User', null, null, '17');
INSERT INTO `jbpm_delegation` VALUES ('146', 'com.jit.jwf.handle.User', null, null, '17');
INSERT INTO `jbpm_delegation` VALUES ('147', 'com.jit.jwf.handle.User', null, null, '18');
INSERT INTO `jbpm_delegation` VALUES ('148', 'com.jit.jwf.handle.User', null, null, '18');
INSERT INTO `jbpm_delegation` VALUES ('149', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null, null, '18');
INSERT INTO `jbpm_delegation` VALUES ('150', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '18');
INSERT INTO `jbpm_delegation` VALUES ('151', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '18');
INSERT INTO `jbpm_delegation` VALUES ('152', 'com.jit.jwf.handle.User', null, null, '18');
INSERT INTO `jbpm_delegation` VALUES ('153', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '19');
INSERT INTO `jbpm_delegation` VALUES ('154', 'com.jit.jwf.handle.User', null, null, '19');
INSERT INTO `jbpm_delegation` VALUES ('155', 'com.jit.jwf.handle.User', null, null, '19');
INSERT INTO `jbpm_delegation` VALUES ('156', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '20');
INSERT INTO `jbpm_delegation` VALUES ('157', 'com.jit.jwf.handle.User', null, null, '20');
INSERT INTO `jbpm_delegation` VALUES ('158', 'com.jit.jwf.handle.User', null, null, '20');
INSERT INTO `jbpm_delegation` VALUES ('159', 'com.jit.jwf.handle.User', null, null, '20');
INSERT INTO `jbpm_delegation` VALUES ('160', 'com.jit.jwf.handle.User', null, null, '20');
INSERT INTO `jbpm_delegation` VALUES ('161', 'com.jit.jwf.handle.User', null, null, '20');
INSERT INTO `jbpm_delegation` VALUES ('162', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '21');
INSERT INTO `jbpm_delegation` VALUES ('163', 'com.jit.jwf.handle.User', null, null, '21');
INSERT INTO `jbpm_delegation` VALUES ('164', 'com.jit.jwf.handle.User', null, null, '21');
INSERT INTO `jbpm_delegation` VALUES ('165', 'com.jit.jwf.handle.User', null, null, '21');
INSERT INTO `jbpm_delegation` VALUES ('166', 'com.jit.jwf.handle.User', null, null, '21');
INSERT INTO `jbpm_delegation` VALUES ('167', 'com.jit.jwf.handle.User', null, null, '21');
INSERT INTO `jbpm_delegation` VALUES ('168', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '22');
INSERT INTO `jbpm_delegation` VALUES ('169', 'com.jit.jwf.handle.User', null, null, '22');
INSERT INTO `jbpm_delegation` VALUES ('170', 'com.jit.jwf.handle.User', null, null, '22');
INSERT INTO `jbpm_delegation` VALUES ('171', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null, null, '22');
INSERT INTO `jbpm_delegation` VALUES ('172', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '22');
INSERT INTO `jbpm_delegation` VALUES ('173', 'com.jit.jwf.handle.User', null, null, '22');
INSERT INTO `jbpm_delegation` VALUES ('174', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '23');
INSERT INTO `jbpm_delegation` VALUES ('175', 'com.jit.jwf.handle.User', null, null, '23');
INSERT INTO `jbpm_delegation` VALUES ('176', 'com.jit.jwf.handle.User', null, null, '23');
INSERT INTO `jbpm_delegation` VALUES ('177', 'com.jit.jwf.handle.User', null, null, '23');
INSERT INTO `jbpm_delegation` VALUES ('178', 'com.jit.jwf.handle.User', null, null, '23');
INSERT INTO `jbpm_delegation` VALUES ('179', 'com.jit.jwf.handle.User', null, null, '23');
INSERT INTO `jbpm_delegation` VALUES ('180', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '24');
INSERT INTO `jbpm_delegation` VALUES ('181', 'com.jit.jwf.handle.User', null, null, '24');
INSERT INTO `jbpm_delegation` VALUES ('182', 'com.jit.jwf.handle.User', null, null, '24');
INSERT INTO `jbpm_delegation` VALUES ('183', 'com.jit.jwf.handle.User', null, null, '24');
INSERT INTO `jbpm_delegation` VALUES ('184', 'com.jit.jwf.handle.User', null, null, '24');
INSERT INTO `jbpm_delegation` VALUES ('185', 'com.jit.jwf.handle.User', null, null, '24');
INSERT INTO `jbpm_delegation` VALUES ('186', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '25');
INSERT INTO `jbpm_delegation` VALUES ('187', 'com.jit.jwf.handle.User', null, null, '25');
INSERT INTO `jbpm_delegation` VALUES ('188', 'com.jit.jwf.handle.User', null, null, '25');
INSERT INTO `jbpm_delegation` VALUES ('189', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '26');
INSERT INTO `jbpm_delegation` VALUES ('190', 'com.jit.jwf.handle.User', null, null, '26');
INSERT INTO `jbpm_delegation` VALUES ('191', 'com.jit.jwf.handle.User', null, null, '26');
INSERT INTO `jbpm_delegation` VALUES ('192', 'com.jit.jwf.handle.User', null, null, '26');
INSERT INTO `jbpm_delegation` VALUES ('193', 'com.jit.jwf.handle.User', null, null, '26');
INSERT INTO `jbpm_delegation` VALUES ('194', 'com.jit.jwf.handle.User', null, null, '26');
INSERT INTO `jbpm_delegation` VALUES ('195', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '27');
INSERT INTO `jbpm_delegation` VALUES ('196', 'com.jit.jwf.handle.User', null, null, '27');
INSERT INTO `jbpm_delegation` VALUES ('197', 'com.jit.jwf.handle.User', null, null, '27');
INSERT INTO `jbpm_delegation` VALUES ('198', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '28');
INSERT INTO `jbpm_delegation` VALUES ('199', 'com.jit.jwf.handle.User', null, null, '28');
INSERT INTO `jbpm_delegation` VALUES ('200', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null, null, '28');
INSERT INTO `jbpm_delegation` VALUES ('201', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '28');
INSERT INTO `jbpm_delegation` VALUES ('202', 'com.jit.jwf.handle.User', null, null, '28');
INSERT INTO `jbpm_delegation` VALUES ('203', 'com.jit.jwf.handle.User', null, null, '28');
INSERT INTO `jbpm_delegation` VALUES ('204', 'com.jit.jwf.handle.User', null, null, '28');
INSERT INTO `jbpm_delegation` VALUES ('205', 'com.jit.jwf.handle.User', null, null, '28');
INSERT INTO `jbpm_delegation` VALUES ('206', 'com.jit.jwf.handle.User', null, null, '28');
INSERT INTO `jbpm_delegation` VALUES ('207', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '29');
INSERT INTO `jbpm_delegation` VALUES ('208', 'com.jit.jwf.handle.User', null, null, '29');
INSERT INTO `jbpm_delegation` VALUES ('209', 'com.jit.jwf.handle.User', null, null, '29');
INSERT INTO `jbpm_delegation` VALUES ('210', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null, null, '29');
INSERT INTO `jbpm_delegation` VALUES ('211', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '29');
INSERT INTO `jbpm_delegation` VALUES ('212', 'com.jit.jwf.handle.User', null, null, '29');
INSERT INTO `jbpm_delegation` VALUES ('213', 'com.jit.jwf.handle.User', null, null, '29');
INSERT INTO `jbpm_delegation` VALUES ('214', 'com.jit.jwf.handle.User', null, null, '29');
INSERT INTO `jbpm_delegation` VALUES ('215', 'com.jit.jwf.handle.User', null, null, '29');
INSERT INTO `jbpm_delegation` VALUES ('216', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '30');
INSERT INTO `jbpm_delegation` VALUES ('217', 'com.jit.jwf.handle.User', null, null, '30');
INSERT INTO `jbpm_delegation` VALUES ('218', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null, null, '30');
INSERT INTO `jbpm_delegation` VALUES ('219', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '30');
INSERT INTO `jbpm_delegation` VALUES ('220', 'com.jit.jwf.handle.User', null, null, '30');
INSERT INTO `jbpm_delegation` VALUES ('221', 'com.jit.jwf.handle.User', null, null, '30');
INSERT INTO `jbpm_delegation` VALUES ('222', 'com.jit.jwf.handle.User', null, null, '30');
INSERT INTO `jbpm_delegation` VALUES ('223', 'com.jit.jwf.handle.User', null, null, '30');
INSERT INTO `jbpm_delegation` VALUES ('224', 'com.jit.jwf.handle.User', null, null, '30');
INSERT INTO `jbpm_delegation` VALUES ('225', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '31');
INSERT INTO `jbpm_delegation` VALUES ('226', 'com.jit.jwf.handle.User', null, null, '31');
INSERT INTO `jbpm_delegation` VALUES ('227', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null, null, '31');
INSERT INTO `jbpm_delegation` VALUES ('228', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '31');
INSERT INTO `jbpm_delegation` VALUES ('229', 'com.jit.jwf.handle.User', null, null, '31');
INSERT INTO `jbpm_delegation` VALUES ('230', 'com.jit.jwf.handle.User', null, null, '31');
INSERT INTO `jbpm_delegation` VALUES ('231', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '32');
INSERT INTO `jbpm_delegation` VALUES ('232', 'com.jit.jwf.handle.User', null, null, '32');
INSERT INTO `jbpm_delegation` VALUES ('233', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null, null, '32');
INSERT INTO `jbpm_delegation` VALUES ('234', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '32');
INSERT INTO `jbpm_delegation` VALUES ('235', 'com.jit.jwf.handle.User', null, null, '32');
INSERT INTO `jbpm_delegation` VALUES ('236', 'com.jit.jwf.handle.User', null, null, '32');
INSERT INTO `jbpm_delegation` VALUES ('237', 'com.jit.jwf.handle.User', null, null, '32');
INSERT INTO `jbpm_delegation` VALUES ('238', 'com.jit.jwf.handle.User', null, null, '32');
INSERT INTO `jbpm_delegation` VALUES ('239', 'com.jit.jwf.handle.User', null, null, '32');
INSERT INTO `jbpm_delegation` VALUES ('240', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '33');
INSERT INTO `jbpm_delegation` VALUES ('241', 'com.jit.jwf.handle.User', null, null, '33');
INSERT INTO `jbpm_delegation` VALUES ('242', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null, null, '33');
INSERT INTO `jbpm_delegation` VALUES ('243', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '33');
INSERT INTO `jbpm_delegation` VALUES ('244', 'com.jit.jwf.handle.User', null, null, '33');
INSERT INTO `jbpm_delegation` VALUES ('245', 'com.jit.jwf.handle.User', null, null, '33');
INSERT INTO `jbpm_delegation` VALUES ('246', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '34');
INSERT INTO `jbpm_delegation` VALUES ('247', 'com.jit.jwf.handle.User', null, null, '34');
INSERT INTO `jbpm_delegation` VALUES ('248', 'com.jit.jwf.handle.User', null, null, '34');
INSERT INTO `jbpm_delegation` VALUES ('249', 'com.jit.jwf.handle.User', null, null, '34');
INSERT INTO `jbpm_delegation` VALUES ('250', 'com.jit.jwf.handle.User', null, null, '34');
INSERT INTO `jbpm_delegation` VALUES ('251', 'com.jit.jwf.handle.User', null, null, '34');
INSERT INTO `jbpm_delegation` VALUES ('252', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '35');
INSERT INTO `jbpm_delegation` VALUES ('253', 'com.jit.jwf.handle.User', null, null, '35');
INSERT INTO `jbpm_delegation` VALUES ('254', 'com.jit.jwf.handle.User', null, null, '35');
INSERT INTO `jbpm_delegation` VALUES ('255', 'com.jit.jwf.handle.User', null, null, '35');
INSERT INTO `jbpm_delegation` VALUES ('256', 'com.jit.jwf.handle.User', null, null, '35');
INSERT INTO `jbpm_delegation` VALUES ('257', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '36');
INSERT INTO `jbpm_delegation` VALUES ('258', 'com.jit.jwf.handle.User', null, null, '36');
INSERT INTO `jbpm_delegation` VALUES ('259', 'com.jit.jwf.handle.User', null, null, '36');
INSERT INTO `jbpm_delegation` VALUES ('260', 'com.jit.jwf.handle.User', null, null, '36');
INSERT INTO `jbpm_delegation` VALUES ('261', 'com.jit.jwf.handle.User', null, null, '36');
INSERT INTO `jbpm_delegation` VALUES ('262', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '37');
INSERT INTO `jbpm_delegation` VALUES ('263', 'com.jit.jwf.handle.User', null, null, '37');
INSERT INTO `jbpm_delegation` VALUES ('264', 'com.jit.jwf.handle.User', null, null, '37');
INSERT INTO `jbpm_delegation` VALUES ('265', 'com.jit.jwf.handle.User', null, null, '37');
INSERT INTO `jbpm_delegation` VALUES ('266', 'com.jit.jwf.handle.User', null, null, '37');
INSERT INTO `jbpm_delegation` VALUES ('267', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '38');
INSERT INTO `jbpm_delegation` VALUES ('268', 'com.jit.jwf.handle.User', null, null, '38');
INSERT INTO `jbpm_delegation` VALUES ('269', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null, null, '38');
INSERT INTO `jbpm_delegation` VALUES ('270', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '38');
INSERT INTO `jbpm_delegation` VALUES ('271', 'com.jit.jwf.handle.User', null, null, '38');
INSERT INTO `jbpm_delegation` VALUES ('272', 'com.jit.jwf.handle.User', null, null, '38');
INSERT INTO `jbpm_delegation` VALUES ('273', 'com.jit.jwf.handle.User', null, null, '38');
INSERT INTO `jbpm_delegation` VALUES ('274', 'com.jit.jwf.handle.User', null, null, '38');
INSERT INTO `jbpm_delegation` VALUES ('275', 'com.jit.jwf.handle.User', null, null, '38');
INSERT INTO `jbpm_delegation` VALUES ('276', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '39');
INSERT INTO `jbpm_delegation` VALUES ('277', 'com.jit.jwf.handle.User', null, null, '39');
INSERT INTO `jbpm_delegation` VALUES ('278', 'com.jit.jwf.handle.User', null, null, '39');
INSERT INTO `jbpm_delegation` VALUES ('279', 'com.jit.jwf.handle.User', null, null, '39');
INSERT INTO `jbpm_delegation` VALUES ('280', 'com.jit.jwf.handle.User', null, null, '39');
INSERT INTO `jbpm_delegation` VALUES ('281', 'com.jit.jwf.handle.User', null, null, '39');
INSERT INTO `jbpm_delegation` VALUES ('282', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '40');
INSERT INTO `jbpm_delegation` VALUES ('283', 'com.jit.jwf.handle.User', null, null, '40');
INSERT INTO `jbpm_delegation` VALUES ('284', 'com.jit.jwf.handle.User', null, null, '40');
INSERT INTO `jbpm_delegation` VALUES ('285', 'com.jit.jwf.handle.User', null, null, '40');
INSERT INTO `jbpm_delegation` VALUES ('286', 'com.jit.jwf.handle.User', null, null, '40');
INSERT INTO `jbpm_delegation` VALUES ('287', 'com.jit.jwf.handle.User', null, null, '40');
INSERT INTO `jbpm_delegation` VALUES ('288', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '41');
INSERT INTO `jbpm_delegation` VALUES ('289', 'com.jit.jwf.handle.User', null, null, '41');
INSERT INTO `jbpm_delegation` VALUES ('290', 'com.jit.jwf.handle.User', null, null, '41');
INSERT INTO `jbpm_delegation` VALUES ('291', 'com.jit.jwf.handle.User', null, null, '41');
INSERT INTO `jbpm_delegation` VALUES ('292', 'com.jit.jwf.handle.User', null, null, '41');
INSERT INTO `jbpm_delegation` VALUES ('293', 'com.jit.jwf.handle.User', null, null, '41');
INSERT INTO `jbpm_delegation` VALUES ('294', 'com.jit.jwf.handle.JitEndActionHandler', null, null, '42');
INSERT INTO `jbpm_delegation` VALUES ('295', 'com.jit.jwf.handle.User', null, null, '42');
INSERT INTO `jbpm_delegation` VALUES ('296', 'com.jit.jwf.handle.User', null, null, '42');
INSERT INTO `jbpm_delegation` VALUES ('297', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null, null, '42');
INSERT INTO `jbpm_delegation` VALUES ('298', 'com.jit.jwf.handle.JitDecisionActionHandler', null, null, '42');
INSERT INTO `jbpm_delegation` VALUES ('299', 'com.jit.jwf.handle.User', null, null, '42');
INSERT INTO `jbpm_delegation` VALUES ('300', 'com.jit.jwf.handle.User', null, null, '42');
INSERT INTO `jbpm_delegation` VALUES ('301', 'com.jit.jwf.handle.User', null, null, '42');
INSERT INTO `jbpm_delegation` VALUES ('302', 'com.jit.jwf.handle.User', null, null, '42');

-- ----------------------------
-- Table structure for jbpm_event
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_event`;
CREATE TABLE `jbpm_event` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `EVENTTYPE_` varchar(255) DEFAULT NULL,
  `TYPE_` char(1) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `TRANSITION_` bigint(20) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_EVENT_PROCDEF` (`PROCESSDEFINITION_`) USING BTREE,
  KEY `FK_EVENT_TRANS` (`TRANSITION_`) USING BTREE,
  KEY `FK_EVENT_NODE` (`NODE_`) USING BTREE,
  KEY `FK_EVENT_TASK` (`TASK_`) USING BTREE,
  CONSTRAINT `jbpm_event_ibfk_1` FOREIGN KEY (`TASK_`) REFERENCES `jbpm_task` (`ID_`),
  CONSTRAINT `jbpm_event_ibfk_2` FOREIGN KEY (`NODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_event_ibfk_3` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `jbpm_event_ibfk_4` FOREIGN KEY (`TRANSITION_`) REFERENCES `jbpm_transition` (`ID_`)
) ENGINE=GsDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_event
-- ----------------------------
INSERT INTO `jbpm_event` VALUES ('1', 'node-enter', 'E', '2', '2', null, null, null);
INSERT INTO `jbpm_event` VALUES ('2', 'node-enter', 'D', '4', '4', null, null, null);
INSERT INTO `jbpm_event` VALUES ('3', 'node-enter', 'E', '9', '9', null, null, null);
INSERT INTO `jbpm_event` VALUES ('4', 'node-enter', 'D', '10', '10', null, null, null);
INSERT INTO `jbpm_event` VALUES ('5', 'node-enter', 'E', '16', '16', null, null, null);
INSERT INTO `jbpm_event` VALUES ('6', 'node-enter', 'D', '21', '21', null, null, null);
INSERT INTO `jbpm_event` VALUES ('7', 'node-enter', 'E', '23', '23', null, null, null);
INSERT INTO `jbpm_event` VALUES ('8', 'node-enter', 'D', '26', '26', null, null, null);
INSERT INTO `jbpm_event` VALUES ('9', 'node-enter', 'E', '30', '30', null, null, null);
INSERT INTO `jbpm_event` VALUES ('10', 'node-enter', 'D', '35', '35', null, null, null);
INSERT INTO `jbpm_event` VALUES ('11', 'node-enter', 'E', '37', '37', null, null, null);
INSERT INTO `jbpm_event` VALUES ('12', 'node-enter', 'D', '42', '42', null, null, null);
INSERT INTO `jbpm_event` VALUES ('13', 'node-enter', 'E', '44', '44', null, null, null);
INSERT INTO `jbpm_event` VALUES ('14', 'node-enter', 'D', '47', '47', null, null, null);
INSERT INTO `jbpm_event` VALUES ('15', 'node-enter', 'E', '52', '52', null, null, null);
INSERT INTO `jbpm_event` VALUES ('16', 'node-enter', 'D', '57', '57', null, null, null);
INSERT INTO `jbpm_event` VALUES ('17', 'node-enter', 'D', '60', '60', null, null, null);
INSERT INTO `jbpm_event` VALUES ('18', 'node-enter', 'E', '66', '66', null, null, null);
INSERT INTO `jbpm_event` VALUES ('19', 'node-enter', 'D', '69', '69', null, null, null);
INSERT INTO `jbpm_event` VALUES ('20', 'node-enter', 'E', '73', '73', null, null, null);
INSERT INTO `jbpm_event` VALUES ('21', 'node-enter', 'D', '77', '77', null, null, null);
INSERT INTO `jbpm_event` VALUES ('22', 'node-enter', 'E', '81', '81', null, null, null);
INSERT INTO `jbpm_event` VALUES ('23', 'node-enter', 'D', '85', '85', null, null, null);
INSERT INTO `jbpm_event` VALUES ('24', 'node-enter', 'E', '89', '89', null, null, null);
INSERT INTO `jbpm_event` VALUES ('25', 'node-enter', 'D', '93', '93', null, null, null);
INSERT INTO `jbpm_event` VALUES ('26', 'node-enter', 'E', '97', '97', null, null, null);
INSERT INTO `jbpm_event` VALUES ('27', 'node-enter', 'D', '101', '101', null, null, null);
INSERT INTO `jbpm_event` VALUES ('28', 'node-enter', 'E', '105', '105', null, null, null);
INSERT INTO `jbpm_event` VALUES ('29', 'node-enter', 'D', '109', '109', null, null, null);
INSERT INTO `jbpm_event` VALUES ('30', 'node-enter', 'E', '113', '113', null, null, null);
INSERT INTO `jbpm_event` VALUES ('31', 'node-enter', 'D', '117', '117', null, null, null);
INSERT INTO `jbpm_event` VALUES ('32', 'node-enter', 'E', '121', '121', null, null, null);
INSERT INTO `jbpm_event` VALUES ('33', 'node-enter', 'E', '123', '123', null, null, null);
INSERT INTO `jbpm_event` VALUES ('34', 'node-enter', 'D', '126', '126', null, null, null);
INSERT INTO `jbpm_event` VALUES ('35', 'node-enter', 'D', '133', '133', null, null, null);
INSERT INTO `jbpm_event` VALUES ('36', 'node-enter', 'E', '134', '134', null, null, null);
INSERT INTO `jbpm_event` VALUES ('37', 'node-enter', 'E', '136', '136', null, null, null);
INSERT INTO `jbpm_event` VALUES ('38', 'node-enter', 'E', '139', '139', null, null, null);
INSERT INTO `jbpm_event` VALUES ('39', 'node-enter', 'E', '145', '145', null, null, null);
INSERT INTO `jbpm_event` VALUES ('40', 'node-enter', 'E', '151', '151', null, null, null);
INSERT INTO `jbpm_event` VALUES ('41', 'node-enter', 'D', '154', '154', null, null, null);
INSERT INTO `jbpm_event` VALUES ('42', 'node-enter', 'E', '156', '156', null, null, null);
INSERT INTO `jbpm_event` VALUES ('43', 'node-enter', 'E', '162', '162', null, null, null);
INSERT INTO `jbpm_event` VALUES ('44', 'node-enter', 'E', '168', '168', null, null, null);
INSERT INTO `jbpm_event` VALUES ('45', 'node-enter', 'E', '171', '171', null, null, null);
INSERT INTO `jbpm_event` VALUES ('46', 'node-enter', 'E', '177', '177', null, null, null);
INSERT INTO `jbpm_event` VALUES ('47', 'node-enter', 'E', '180', '180', null, null, null);
INSERT INTO `jbpm_event` VALUES ('48', 'node-enter', 'D', '182', '182', null, null, null);
INSERT INTO `jbpm_event` VALUES ('49', 'node-enter', 'E', '188', '188', null, null, null);
INSERT INTO `jbpm_event` VALUES ('50', 'node-enter', 'D', '191', '191', null, null, null);
INSERT INTO `jbpm_event` VALUES ('51', 'node-enter', 'E', '196', '196', null, null, null);
INSERT INTO `jbpm_event` VALUES ('52', 'node-enter', 'D', '198', '198', null, null, null);
INSERT INTO `jbpm_event` VALUES ('53', 'node-enter', 'E', '204', '204', null, null, null);
INSERT INTO `jbpm_event` VALUES ('54', 'node-enter', 'D', '206', '206', null, null, null);
INSERT INTO `jbpm_event` VALUES ('55', 'node-enter', 'E', '209', '209', null, null, null);
INSERT INTO `jbpm_event` VALUES ('56', 'node-enter', 'D', '211', '211', null, null, null);
INSERT INTO `jbpm_event` VALUES ('57', 'node-enter', 'E', '217', '217', null, null, null);
INSERT INTO `jbpm_event` VALUES ('58', 'node-enter', 'D', '219', '219', null, null, null);
INSERT INTO `jbpm_event` VALUES ('59', 'node-enter', 'E', '222', '222', null, null, null);
INSERT INTO `jbpm_event` VALUES ('60', 'node-enter', 'E', '228', '228', null, null, null);
INSERT INTO `jbpm_event` VALUES ('61', 'node-enter', 'E', '233', '233', null, null, null);
INSERT INTO `jbpm_event` VALUES ('62', 'node-enter', 'E', '238', '238', null, null, null);
INSERT INTO `jbpm_event` VALUES ('63', 'node-enter', 'E', '243', '243', null, null, null);
INSERT INTO `jbpm_event` VALUES ('64', 'node-enter', 'D', '245', '245', null, null, null);
INSERT INTO `jbpm_event` VALUES ('65', 'node-enter', 'E', '251', '251', null, null, null);
INSERT INTO `jbpm_event` VALUES ('66', 'node-enter', 'E', '257', '257', null, null, null);
INSERT INTO `jbpm_event` VALUES ('67', 'node-enter', 'E', '263', '263', null, null, null);
INSERT INTO `jbpm_event` VALUES ('68', 'node-enter', 'E', '269', '269', null, null, null);
INSERT INTO `jbpm_event` VALUES ('69', 'node-enter', 'D', '272', '272', null, null, null);

-- ----------------------------
-- Table structure for jbpm_exceptionhandler
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_exceptionhandler`;
CREATE TABLE `jbpm_exceptionhandler` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `EXCEPTIONCLASSNAME_` varchar(4000) DEFAULT NULL,
  `TYPE_` char(1) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `GRAPHELEMENTINDEX_` int(11) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `TRANSITION_` bigint(20) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_exceptionhandler
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_group
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_group`;
CREATE TABLE `jbpm_id_group` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_ID_GRP_PARENT` (`PARENT_`) USING BTREE,
  CONSTRAINT `jbpm_id_group_ibfk_1` FOREIGN KEY (`PARENT_`) REFERENCES `jbpm_id_group` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_membership
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_membership`;
CREATE TABLE `jbpm_id_membership` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ROLE_` varchar(255) DEFAULT NULL,
  `USER_` bigint(20) DEFAULT NULL,
  `GROUP_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_ID_MEMSHIP_GRP` (`GROUP_`) USING BTREE,
  KEY `FK_ID_MEMSHIP_USR` (`USER_`) USING BTREE,
  CONSTRAINT `jbpm_id_membership_ibfk_1` FOREIGN KEY (`USER_`) REFERENCES `jbpm_id_user` (`ID_`),
  CONSTRAINT `jbpm_id_membership_ibfk_2` FOREIGN KEY (`GROUP_`) REFERENCES `jbpm_id_group` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_permissions
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_permissions`;
CREATE TABLE `jbpm_id_permissions` (
  `ENTITY_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ACTION_` varchar(255) DEFAULT NULL
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_id_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_id_user
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_id_user`;
CREATE TABLE `jbpm_id_user` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `EMAIL_` varchar(255) DEFAULT NULL,
  `PASSWORD_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_id_user
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_log
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_log`;
CREATE TABLE `jbpm_log` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `INDEX_` int(11) DEFAULT NULL,
  `DATE_` datetime DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  `SWIMLANEINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `ENTER_` datetime DEFAULT NULL,
  `LEAVE_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TRANSITION_` bigint(20) DEFAULT NULL,
  `CHILD_` bigint(20) DEFAULT NULL,
  `MESSAGE_` varchar(4000) DEFAULT NULL,
  `VARIABLEINSTANCE_` bigint(20) DEFAULT NULL,
  `OLDDOUBLEVALUE_` double DEFAULT NULL,
  `NEWDOUBLEVALUE_` double DEFAULT NULL,
  `OLDSTRINGVALUE_` varchar(4000) DEFAULT NULL,
  `NEWSTRINGVALUE_` varchar(4000) DEFAULT NULL,
  `EXCEPTION_` varchar(4000) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `TASKACTORID_` varchar(255) DEFAULT NULL,
  `OLDLONGIDCLASS_` varchar(255) DEFAULT NULL,
  `OLDLONGIDVALUE_` bigint(20) DEFAULT NULL,
  `NEWLONGIDCLASS_` varchar(255) DEFAULT NULL,
  `NEWLONGIDVALUE_` bigint(20) DEFAULT NULL,
  `OLDSTRINGIDCLASS_` varchar(255) DEFAULT NULL,
  `OLDSTRINGIDVALUE_` varchar(255) DEFAULT NULL,
  `NEWSTRINGIDCLASS_` varchar(255) DEFAULT NULL,
  `NEWSTRINGIDVALUE_` varchar(255) DEFAULT NULL,
  `OLDBYTEARRAY_` bigint(20) DEFAULT NULL,
  `NEWBYTEARRAY_` bigint(20) DEFAULT NULL,
  `SOURCENODE_` bigint(20) DEFAULT NULL,
  `DESTINATIONNODE_` bigint(20) DEFAULT NULL,
  `NEWLONGVALUE_` bigint(20) DEFAULT NULL,
  `OLDLONGVALUE_` bigint(20) DEFAULT NULL,
  `OLDDATEVALUE_` datetime DEFAULT NULL,
  `NEWDATEVALUE_` datetime DEFAULT NULL,
  `TASKOLDACTORID_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_LOG_SOURCENODE` (`SOURCENODE_`) USING BTREE,
  KEY `FK_LOG_DESTNODE` (`DESTINATIONNODE_`) USING BTREE,
  KEY `FK_LOG_TOKEN` (`TOKEN_`) USING BTREE,
  KEY `FK_LOG_TRANSITION` (`TRANSITION_`) USING BTREE,
  KEY `FK_LOG_TASKINST` (`TASKINSTANCE_`) USING BTREE,
  KEY `FK_LOG_CHILDTOKEN` (`CHILD_`) USING BTREE,
  KEY `FK_LOG_OLDBYTES` (`OLDBYTEARRAY_`) USING BTREE,
  KEY `FK_LOG_SWIMINST` (`SWIMLANEINSTANCE_`) USING BTREE,
  KEY `FK_LOG_NEWBYTES` (`NEWBYTEARRAY_`) USING BTREE,
  KEY `FK_LOG_VARINST` (`VARIABLEINSTANCE_`) USING BTREE,
  KEY `FK_LOG_ACTION` (`ACTION_`) USING BTREE,
  KEY `FK_LOG_NODE` (`NODE_`) USING BTREE,
  KEY `FK_LOG_PARENT` (`PARENT_`) USING BTREE,
  CONSTRAINT `jbpm_log_ibfk_1` FOREIGN KEY (`PARENT_`) REFERENCES `jbpm_log` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_10` FOREIGN KEY (`NODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_11` FOREIGN KEY (`OLDBYTEARRAY_`) REFERENCES `jbpm_bytearray` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_12` FOREIGN KEY (`SOURCENODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_13` FOREIGN KEY (`SWIMLANEINSTANCE_`) REFERENCES `jbpm_swimlaneinstance` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_2` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_3` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_4` FOREIGN KEY (`TRANSITION_`) REFERENCES `jbpm_transition` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_5` FOREIGN KEY (`VARIABLEINSTANCE_`) REFERENCES `jbpm_variableinstance` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_6` FOREIGN KEY (`ACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_7` FOREIGN KEY (`CHILD_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_8` FOREIGN KEY (`DESTINATIONNODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_log_ibfk_9` FOREIGN KEY (`NEWBYTEARRAY_`) REFERENCES `jbpm_bytearray` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_log
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_message
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_message`;
CREATE TABLE `jbpm_message` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `DESTINATION_` varchar(255) DEFAULT NULL,
  `EXCEPTION_` varchar(4000) DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(255) DEFAULT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_CMD_ACTION` (`ACTION_`) USING BTREE,
  KEY `FK_MSG_TOKEN` (`TOKEN_`) USING BTREE,
  KEY `FK_CMD_NODE` (`NODE_`) USING BTREE,
  KEY `FK_CMD_TASKINST` (`TASKINSTANCE_`) USING BTREE,
  CONSTRAINT `jbpm_message_ibfk_1` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`),
  CONSTRAINT `jbpm_message_ibfk_2` FOREIGN KEY (`ACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `jbpm_message_ibfk_3` FOREIGN KEY (`NODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_message_ibfk_4` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_message
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_moduledefinition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_moduledefinition`;
CREATE TABLE `jbpm_moduledefinition` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(4000) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `STARTTASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_MODDEF_PROCDEF` (`PROCESSDEFINITION_`) USING BTREE,
  KEY `FK_TSKDEF_START` (`STARTTASK_`) USING BTREE,
  CONSTRAINT `jbpm_moduledefinition_ibfk_1` FOREIGN KEY (`STARTTASK_`) REFERENCES `jbpm_task` (`ID_`),
  CONSTRAINT `jbpm_moduledefinition_ibfk_2` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`)
) ENGINE=GsDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_moduledefinition
-- ----------------------------
INSERT INTO `jbpm_moduledefinition` VALUES ('1', 'C', 'org.jbpm.context.def.ContextDefinition', '1', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('2', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '1', '5');
INSERT INTO `jbpm_moduledefinition` VALUES ('3', 'C', 'org.jbpm.context.def.ContextDefinition', '2', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('4', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '2', '10');
INSERT INTO `jbpm_moduledefinition` VALUES ('5', 'C', 'org.jbpm.context.def.ContextDefinition', '3', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('6', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '3', '15');
INSERT INTO `jbpm_moduledefinition` VALUES ('7', 'C', 'org.jbpm.context.def.ContextDefinition', '4', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('8', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '4', '20');
INSERT INTO `jbpm_moduledefinition` VALUES ('9', 'C', 'org.jbpm.context.def.ContextDefinition', '5', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('10', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '5', '25');
INSERT INTO `jbpm_moduledefinition` VALUES ('11', 'C', 'org.jbpm.context.def.ContextDefinition', '6', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('12', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '6', '30');
INSERT INTO `jbpm_moduledefinition` VALUES ('13', 'C', 'org.jbpm.context.def.ContextDefinition', '7', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('14', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '7', '36');
INSERT INTO `jbpm_moduledefinition` VALUES ('15', 'C', 'org.jbpm.context.def.ContextDefinition', '8', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('16', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '8', '41');
INSERT INTO `jbpm_moduledefinition` VALUES ('17', 'C', 'org.jbpm.context.def.ContextDefinition', '9', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('18', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '9', '48');
INSERT INTO `jbpm_moduledefinition` VALUES ('19', 'C', 'org.jbpm.context.def.ContextDefinition', '10', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('20', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '10', '53');
INSERT INTO `jbpm_moduledefinition` VALUES ('21', 'C', 'org.jbpm.context.def.ContextDefinition', '11', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('22', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '11', '59');
INSERT INTO `jbpm_moduledefinition` VALUES ('23', 'C', 'org.jbpm.context.def.ContextDefinition', '12', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('24', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '12', '65');
INSERT INTO `jbpm_moduledefinition` VALUES ('25', 'C', 'org.jbpm.context.def.ContextDefinition', '13', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('26', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '13', '71');
INSERT INTO `jbpm_moduledefinition` VALUES ('27', 'C', 'org.jbpm.context.def.ContextDefinition', '14', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('28', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '14', '77');
INSERT INTO `jbpm_moduledefinition` VALUES ('29', 'C', 'org.jbpm.context.def.ContextDefinition', '15', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('30', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '15', '83');
INSERT INTO `jbpm_moduledefinition` VALUES ('31', 'C', 'org.jbpm.context.def.ContextDefinition', '16', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('32', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '16', '89');
INSERT INTO `jbpm_moduledefinition` VALUES ('33', 'C', 'org.jbpm.context.def.ContextDefinition', '17', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('34', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '17', '95');
INSERT INTO `jbpm_moduledefinition` VALUES ('35', 'C', 'org.jbpm.context.def.ContextDefinition', '18', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('36', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '18', '98');
INSERT INTO `jbpm_moduledefinition` VALUES ('37', 'C', 'org.jbpm.context.def.ContextDefinition', '19', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('38', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '19', '100');
INSERT INTO `jbpm_moduledefinition` VALUES ('39', 'C', 'org.jbpm.context.def.ContextDefinition', '20', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('40', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '20', '105');
INSERT INTO `jbpm_moduledefinition` VALUES ('41', 'C', 'org.jbpm.context.def.ContextDefinition', '21', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('42', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '21', '110');
INSERT INTO `jbpm_moduledefinition` VALUES ('43', 'C', 'org.jbpm.context.def.ContextDefinition', '22', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('44', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '22', '113');
INSERT INTO `jbpm_moduledefinition` VALUES ('45', 'C', 'org.jbpm.context.def.ContextDefinition', '23', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('46', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '23', '118');
INSERT INTO `jbpm_moduledefinition` VALUES ('47', 'C', 'org.jbpm.context.def.ContextDefinition', '24', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('48', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '24', '123');
INSERT INTO `jbpm_moduledefinition` VALUES ('49', 'C', 'org.jbpm.context.def.ContextDefinition', '25', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('50', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '25', '125');
INSERT INTO `jbpm_moduledefinition` VALUES ('51', 'C', 'org.jbpm.context.def.ContextDefinition', '26', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('52', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '26', '130');
INSERT INTO `jbpm_moduledefinition` VALUES ('53', 'C', 'org.jbpm.context.def.ContextDefinition', '27', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('54', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '27', '132');
INSERT INTO `jbpm_moduledefinition` VALUES ('55', 'C', 'org.jbpm.context.def.ContextDefinition', '28', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('56', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '28', '138');
INSERT INTO `jbpm_moduledefinition` VALUES ('57', 'C', 'org.jbpm.context.def.ContextDefinition', '29', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('58', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '29', '144');
INSERT INTO `jbpm_moduledefinition` VALUES ('59', 'C', 'org.jbpm.context.def.ContextDefinition', '30', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('60', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '30', '150');
INSERT INTO `jbpm_moduledefinition` VALUES ('61', 'C', 'org.jbpm.context.def.ContextDefinition', '31', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('62', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '31', '153');
INSERT INTO `jbpm_moduledefinition` VALUES ('63', 'C', 'org.jbpm.context.def.ContextDefinition', '32', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('64', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '32', '159');
INSERT INTO `jbpm_moduledefinition` VALUES ('65', 'C', 'org.jbpm.context.def.ContextDefinition', '33', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('66', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '33', '162');
INSERT INTO `jbpm_moduledefinition` VALUES ('67', 'C', 'org.jbpm.context.def.ContextDefinition', '34', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('68', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '34', '167');
INSERT INTO `jbpm_moduledefinition` VALUES ('69', 'C', 'org.jbpm.context.def.ContextDefinition', '35', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('70', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '35', '171');
INSERT INTO `jbpm_moduledefinition` VALUES ('71', 'C', 'org.jbpm.context.def.ContextDefinition', '36', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('72', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '36', '175');
INSERT INTO `jbpm_moduledefinition` VALUES ('73', 'C', 'org.jbpm.context.def.ContextDefinition', '37', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('74', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '37', '179');
INSERT INTO `jbpm_moduledefinition` VALUES ('75', 'C', 'org.jbpm.context.def.ContextDefinition', '38', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('76', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '38', '185');
INSERT INTO `jbpm_moduledefinition` VALUES ('77', 'C', 'org.jbpm.context.def.ContextDefinition', '39', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('78', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '39', '190');
INSERT INTO `jbpm_moduledefinition` VALUES ('79', 'C', 'org.jbpm.context.def.ContextDefinition', '40', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('80', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '40', '195');
INSERT INTO `jbpm_moduledefinition` VALUES ('81', 'C', 'org.jbpm.context.def.ContextDefinition', '41', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('82', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '41', '200');
INSERT INTO `jbpm_moduledefinition` VALUES ('83', 'C', 'org.jbpm.context.def.ContextDefinition', '42', null);
INSERT INTO `jbpm_moduledefinition` VALUES ('84', 'T', 'org.jbpm.taskmgmt.def.TaskMgmtDefinition', '42', '206');

-- ----------------------------
-- Table structure for jbpm_moduleinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_moduleinstance`;
CREATE TABLE `jbpm_moduleinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKMGMTDEFINITION_` bigint(20) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_MODINST_PRCINST` (`PROCESSINSTANCE_`) USING BTREE,
  KEY `FK_TASKMGTINST_TMD` (`TASKMGMTDEFINITION_`) USING BTREE,
  CONSTRAINT `jbpm_moduleinstance_ibfk_1` FOREIGN KEY (`TASKMGMTDEFINITION_`) REFERENCES `jbpm_moduledefinition` (`ID_`),
  CONSTRAINT `jbpm_moduleinstance_ibfk_2` FOREIGN KEY (`PROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_moduleinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_node
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_node`;
CREATE TABLE `jbpm_node` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `ISASYNC_` bit(1) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `SUPERSTATE_` bigint(20) DEFAULT NULL,
  `DECISIONEXPRESSION_` varchar(255) DEFAULT NULL,
  `DECISIONDELEGATION` bigint(20) DEFAULT NULL,
  `SUBPROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `SIGNAL_` int(11) DEFAULT NULL,
  `CREATETASKS_` bit(1) DEFAULT NULL,
  `ENDTASKS_` bit(1) DEFAULT NULL,
  `NODECOLLECTIONINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_DECISION_DELEG` (`DECISIONDELEGATION`) USING BTREE,
  KEY `FK_NODE_PROCDEF` (`PROCESSDEFINITION_`) USING BTREE,
  KEY `FK_NODE_ACTION` (`ACTION_`) USING BTREE,
  KEY `FK_PROCST_SBPRCDEF` (`SUBPROCESSDEFINITION_`) USING BTREE,
  KEY `FK_NODE_SUPERSTATE` (`SUPERSTATE_`) USING BTREE,
  CONSTRAINT `jbpm_node_ibfk_1` FOREIGN KEY (`SUPERSTATE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_node_ibfk_2` FOREIGN KEY (`DECISIONDELEGATION`) REFERENCES `jbpm_delegation` (`ID_`),
  CONSTRAINT `jbpm_node_ibfk_3` FOREIGN KEY (`ACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `jbpm_node_ibfk_4` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `jbpm_node_ibfk_5` FOREIGN KEY (`SUBPROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`)
) ENGINE=GsDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_node
-- ----------------------------
INSERT INTO `jbpm_node` VALUES ('1', 'R', 'node_1-开始', '1', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('2', 'E', 'node_2-办结', '1', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('3', 'K', 'node_3-起草', '1', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('4', 'D', 'node_4-分级策略', '1', '\0', null, null, null, '3', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('5', 'K', 'node_5-区县级管理员审核', '1', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('6', 'K', 'node_6-市级管理员审核', '1', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('7', 'K', 'node_7-省级管理员审核', '1', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('8', 'R', 'node_1-开始', '2', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('9', 'E', 'node_2-办结', '2', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('10', 'D', 'node_4-分级策略', '2', '\0', null, null, null, '10', null, null, null, null, '2');
INSERT INTO `jbpm_node` VALUES ('11', 'K', 'node_5-区县级管理员审核', '2', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('12', 'K', 'node_6-市级管理员审核', '2', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('13', 'K', 'node_7-省级管理员审核', '2', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('14', 'K', 'node_9-起草', '2', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('15', 'R', 'node_1-开始', '3', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('16', 'E', 'node_2-办结', '3', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('17', 'K', 'node_3-起草', '3', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('18', 'K', 'node_4-区县级管理员审核', '3', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('19', 'K', 'node_5-市级管理员审核', '3', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('20', 'K', 'node_6-省级管理员审核', '3', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('21', 'D', 'node_7-分级策略', '3', '\0', null, null, null, '22', null, null, null, null, '6');
INSERT INTO `jbpm_node` VALUES ('22', 'R', 'node_1-开始', '4', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('23', 'E', 'node_2-办结', '4', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('24', 'K', 'node_3-起草', '4', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('25', 'K', 'node_4-区县级管理员审核', '4', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('26', 'D', 'node_5-分级策略', '4', '\0', null, null, null, '28', null, null, null, null, '4');
INSERT INTO `jbpm_node` VALUES ('27', 'K', 'node_6-市级管理员审核', '4', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('28', 'K', 'node_7-省级管理员审核', '4', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('29', 'R', 'node_1-开始', '5', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('30', 'E', 'node_2-办结', '5', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('31', 'K', 'node_3-起草', '5', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('32', 'K', 'node_4-区县级管理员审核', '5', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('33', 'K', 'node_5-市级管理员审核', '5', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('34', 'K', 'node_6-省级管理员审核', '5', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('35', 'D', 'node_7-分级策略', '5', '\0', null, null, null, '38', null, null, null, null, '6');
INSERT INTO `jbpm_node` VALUES ('36', 'R', 'node_1-开始', '6', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('37', 'E', 'node_2-办结', '6', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('38', 'K', 'node_3-起草', '6', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('39', 'K', 'node_4-区县级领导审核', '6', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('40', 'K', 'node_5-市级管理员审核', '6', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('41', 'K', 'node_6-省级管理员审核', '6', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('42', 'D', 'node_7-分级策略', '6', '\0', null, null, null, '46', null, null, null, null, '6');
INSERT INTO `jbpm_node` VALUES ('43', 'R', 'node_1-开始', '7', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('44', 'E', 'node_2-办结', '7', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('45', 'K', 'node_3-起草', '7', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('46', 'K', 'node_4-主管警员审核', '7', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('47', 'D', 'node_5-分级策略', '7', '\0', null, null, null, '52', null, null, null, null, '4');
INSERT INTO `jbpm_node` VALUES ('48', 'K', 'node_6-区县级管理员审核', '7', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('49', 'K', 'node_7-市级管理员审核', '7', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('50', 'K', 'node_8-省级管理员审核', '7', '\0', null, null, null, null, null, '4', '', '\0', '7');
INSERT INTO `jbpm_node` VALUES ('51', 'R', 'node_1-开始', '8', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('52', 'E', 'node_2-办结', '8', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('53', 'K', 'node_3-起草', '8', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('54', 'K', 'node_4-区县级领导审核', '8', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('55', 'K', 'node_5-市级管理员审核', '8', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('56', 'K', 'node_6-省级管理员审核', '8', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('57', 'D', 'node_7-分级策略', '8', '\0', null, null, null, '63', null, null, null, null, '6');
INSERT INTO `jbpm_node` VALUES ('58', 'R', 'node_1-开始', '9', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('59', 'K', 'node_2-起草', '9', '\0', null, null, null, null, null, '4', '', '\0', '1');
INSERT INTO `jbpm_node` VALUES ('60', 'D', 'node_3-node_3', '9', '\0', null, null, null, '67', null, null, null, null, '2');
INSERT INTO `jbpm_node` VALUES ('61', 'K', 'node_4-区县级管理员审核', '9', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('62', 'K', 'node_5-市级管理员审核', '9', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('63', 'K', 'node_6-省级管理员审核', '9', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('64', 'K', 'node_7-局级管理员审核', '9', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('65', 'K', 'node_8-部级用户管理员', '9', '\0', null, null, null, null, null, '4', '', '\0', '7');
INSERT INTO `jbpm_node` VALUES ('66', 'E', 'node_9-办结', '9', '\0', null, null, null, null, null, null, null, null, '8');
INSERT INTO `jbpm_node` VALUES ('67', 'R', 'node_1-开始', '10', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('68', 'K', 'node_2-起草', '10', '\0', null, null, null, null, null, '4', '', '\0', '1');
INSERT INTO `jbpm_node` VALUES ('69', 'D', 'node_3-分级策略', '10', '\0', null, null, null, '77', null, null, null, null, '2');
INSERT INTO `jbpm_node` VALUES ('70', 'K', 'node_4-区县级管理员审核', '10', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('71', 'K', 'node_5-市级管理员审核', '10', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('72', 'K', 'node_6-省级管理员审核', '10', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('73', 'E', 'node_7-办结', '10', '\0', null, null, null, null, null, null, null, null, '6');
INSERT INTO `jbpm_node` VALUES ('74', 'R', 'node_1-开始', '11', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('75', 'K', 'node_2-起草', '11', '\0', null, null, null, null, null, '4', '', '\0', '1');
INSERT INTO `jbpm_node` VALUES ('76', 'K', 'node_3-主管警员', '11', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('77', 'D', 'node_4-node_4', '11', '\0', null, null, null, '86', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('78', 'K', 'node_5-区县级管理员审核', '11', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('79', 'K', 'node_6-市级管理员审核', '11', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('80', 'K', 'node_7-省级管理员审核', '11', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('81', 'E', 'node_8-办结', '11', '\0', null, null, null, null, null, null, null, null, '7');
INSERT INTO `jbpm_node` VALUES ('82', 'R', 'node_1-开始', '12', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('83', 'K', 'node_2-起草', '12', '\0', null, null, null, null, null, '4', '', '\0', '1');
INSERT INTO `jbpm_node` VALUES ('84', 'K', 'node_3-主管警员', '12', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('85', 'D', 'node_4-分级策略', '12', '\0', null, null, null, '95', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('86', 'K', 'node_5-区县管理员审核', '12', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('87', 'K', 'node_6-市级管理员审核', '12', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('88', 'K', 'node_7-省级管理员审核', '12', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('89', 'E', 'node_8-办结', '12', '\0', null, null, null, null, null, null, null, null, '7');
INSERT INTO `jbpm_node` VALUES ('90', 'R', 'node_1-开始', '13', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('91', 'K', 'node_2-起草', '13', '\0', null, null, null, null, null, '4', '', '\0', '1');
INSERT INTO `jbpm_node` VALUES ('92', 'K', 'node_3-主管警员', '13', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('93', 'D', 'node_4-分级策略', '13', '\0', null, null, null, '104', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('94', 'K', 'node_5-区县级管理员审核', '13', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('95', 'K', 'node_6-市级管理员审核', '13', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('96', 'K', 'node_7-省级管理员审核', '13', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('97', 'E', 'node_8-办结', '13', '\0', null, null, null, null, null, null, null, null, '7');
INSERT INTO `jbpm_node` VALUES ('98', 'R', 'node_1-开始', '14', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('99', 'K', 'node_2-起草', '14', '\0', null, null, null, null, null, '4', '', '\0', '1');
INSERT INTO `jbpm_node` VALUES ('100', 'K', 'node_3-主管警员审核', '14', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('101', 'D', 'node_4-分组策略', '14', '\0', null, null, null, '113', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('102', 'K', 'node_5-区县级管理员审核', '14', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('103', 'K', 'node_6-市级管理员审核', '14', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('104', 'K', 'node_7-省级管理员审核', '14', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('105', 'E', 'node_8-办结', '14', '\0', null, null, null, null, null, null, null, null, '7');
INSERT INTO `jbpm_node` VALUES ('106', 'R', 'node_1-开始', '15', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('107', 'K', 'node_2-起草', '15', '\0', null, null, null, null, null, '4', '', '\0', '1');
INSERT INTO `jbpm_node` VALUES ('108', 'K', 'node_3-主管警员审核', '15', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('109', 'D', 'node_4-分级策略', '15', '\0', null, null, null, '122', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('110', 'K', 'node_5-区县级管理员审核', '15', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('111', 'K', 'node_6-市级管理员审核', '15', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('112', 'K', 'node_7-省级管理员审核', '15', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('113', 'E', 'node_8-办结', '15', '\0', null, null, null, null, null, null, null, null, '7');
INSERT INTO `jbpm_node` VALUES ('114', 'R', 'node_1-开始', '16', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('115', 'K', 'node_2-起草', '16', '\0', null, null, null, null, null, '4', '', '\0', '1');
INSERT INTO `jbpm_node` VALUES ('116', 'K', 'node_3-主管警员审核', '16', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('117', 'D', 'node_4-分级策略', '16', '\0', null, null, null, '131', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('118', 'K', 'node_5-区县级管理员审核', '16', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('119', 'K', 'node_6-市级管理员审核', '16', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('120', 'K', 'node_7-省级管理员审核', '16', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('121', 'E', 'node_8-办结', '16', '\0', null, null, null, null, null, null, null, null, '7');
INSERT INTO `jbpm_node` VALUES ('122', 'R', 'node_1-开始', '17', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('123', 'E', 'node_2-办结', '17', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('124', 'K', 'node_3-起草', '17', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('125', 'K', 'node_4-主管警员', '17', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('126', 'D', 'node_5-分级策略', '17', '\0', null, null, null, '141', null, null, null, null, '4');
INSERT INTO `jbpm_node` VALUES ('127', 'K', 'node_6-区县级领导审核', '17', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('128', 'K', 'node_7-市级管理员审核', '17', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('129', 'K', 'node_8-省级管理员审核', '17', '\0', null, null, null, null, null, '4', '', '\0', '7');
INSERT INTO `jbpm_node` VALUES ('130', 'R', 'node_1-开始', '18', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('131', 'K', 'node_2-起草', '18', '\0', null, null, null, null, null, '4', '', '\0', '1');
INSERT INTO `jbpm_node` VALUES ('132', 'K', 'node_3-主管警员审核', '18', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('133', 'D', 'node_4-用户身份判定', '18', '\0', null, null, null, '149', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('134', 'E', 'node_5-办结', '18', '\0', null, null, null, null, null, null, null, null, '4');
INSERT INTO `jbpm_node` VALUES ('135', 'R', 'node_1-开始', '19', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('136', 'E', 'node_2-办结', '19', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('137', 'K', 'node_3-起草', '19', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('138', 'R', 'node_1-开始', '20', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('139', 'E', 'node_2-办结', '20', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('140', 'K', 'node_3-起草', '20', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('141', 'K', 'node_4-所在部门审核', '20', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('142', 'K', 'node_5-政工部门审核', '20', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('143', 'K', 'node_6-单位领导审核', '20', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('144', 'R', 'node_1-开始', '21', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('145', 'E', 'node_2-办结', '21', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('146', 'K', 'node_3-起草', '21', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('147', 'K', 'node_4-所在部门审核', '21', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('148', 'K', 'node_5-政工部门审核', '21', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('149', 'K', 'node_6-单位领导', '21', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('150', 'R', 'node_1-开始', '22', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('151', 'E', 'node_2-办结', '22', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('152', 'K', 'node_3-起草', '22', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('153', 'K', 'node_4-主管警员审核', '22', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('154', 'D', 'node_6-用户身份判定', '22', '\0', null, null, null, '171', null, null, null, null, '4');
INSERT INTO `jbpm_node` VALUES ('155', 'R', 'node_1-开始', '23', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('156', 'E', 'node_2-办结', '23', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('157', 'K', 'node_3-起草', '23', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('158', 'K', 'node_4-所在部门审核', '23', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('159', 'K', 'node_5-政工部门审核', '23', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('160', 'K', 'node_6-单位领导审核', '23', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('161', 'R', 'node_1-开始', '24', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('162', 'E', 'node_2-办结', '24', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('163', 'K', 'node_3-起草', '24', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('164', 'K', 'node_4-所在部门审核', '24', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('165', 'K', 'node_5-政工部门审核', '24', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('166', 'K', 'node_6-单位领导审核', '24', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('167', 'R', 'node_1-开始', '25', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('168', 'E', 'node_2-办结', '25', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('169', 'K', 'node_3-起草', '25', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('170', 'R', 'node_1-开始', '26', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('171', 'E', 'node_2-办结', '26', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('172', 'K', 'node_3-起草', '26', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('173', 'K', 'node_4-所在部门审核', '26', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('174', 'K', 'node_5-政工部门审核', '26', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('175', 'K', 'node_6-单位领导审核', '26', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('176', 'R', 'node_1-开始', '27', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('177', 'E', 'node_2-办结', '27', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('178', 'K', 'node_3-起草', '27', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('179', 'R', 'node_1-开始', '28', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('180', 'E', 'node_2-办结', '28', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('181', 'K', 'node_3-起草', '28', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('182', 'D', 'node_4-用户身份判定', '28', '\0', null, null, null, '200', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('183', 'K', 'node_5-主管警员审核', '28', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('184', 'K', 'node_6-所在部门审核', '28', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('185', 'K', 'node_7-政工部门审核', '28', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('186', 'K', 'node_8-单位领导审核', '28', '\0', null, null, null, null, null, '4', '', '\0', '7');
INSERT INTO `jbpm_node` VALUES ('187', 'R', 'node_1-开始', '29', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('188', 'E', 'node_2-办结', '29', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('189', 'K', 'node_3-起草', '29', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('190', 'K', 'node_4-主管警员审核', '29', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('191', 'D', 'node_5-用户身份判定', '29', '\0', null, null, null, '210', null, null, null, null, '4');
INSERT INTO `jbpm_node` VALUES ('192', 'K', 'node_6-所在部门审核', '29', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('193', 'K', 'node_7-政工部门审核', '29', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('194', 'K', 'node_8-单位领导审核', '29', '\0', null, null, null, null, null, '4', '', '\0', '7');
INSERT INTO `jbpm_node` VALUES ('195', 'R', 'node_1-开始', '30', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('196', 'E', 'node_2-办结', '30', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('197', 'K', 'node_3-起草', '30', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('198', 'D', 'node_4-用户身份判定', '30', '\0', null, null, null, '218', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('199', 'K', 'node_5-主管警员审核', '30', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('200', 'K', 'node_6-所在部门审核', '30', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('201', 'K', 'node_7-政工部门审核', '30', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('202', 'K', 'node_8-单位领导审核', '30', '\0', null, null, null, null, null, '4', '', '\0', '7');
INSERT INTO `jbpm_node` VALUES ('203', 'R', 'node_1-开始', '31', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('204', 'E', 'node_2-办结', '31', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('205', 'K', 'node_3-起草', '31', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('206', 'D', 'node_4-用户身份判定', '31', '\0', null, null, null, '227', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('207', 'K', 'node_5-主管警员审核', '31', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('208', 'R', 'node_1-开始', '32', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('209', 'E', 'node_2-办结', '32', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('210', 'K', 'node_3-起草', '32', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('211', 'D', 'node_4-用户身份判定', '32', '\0', null, null, null, '233', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('212', 'K', 'node_5-主管警员审核', '32', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('213', 'K', 'node_6-所在部门审核', '32', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('214', 'K', 'node_7-政工部门审核', '32', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('215', 'K', 'node_8-单位领导审核', '32', '\0', null, null, null, null, null, '4', '', '\0', '7');
INSERT INTO `jbpm_node` VALUES ('216', 'R', 'node_1-开始', '33', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('217', 'E', 'node_2-办结', '33', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('218', 'K', 'node_3-起草', '33', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('219', 'D', 'node_4-用户身份判定', '33', '\0', null, null, null, '242', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('220', 'K', 'node_5-主管警员审核', '33', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('221', 'R', 'node_1-开始', '34', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('222', 'E', 'node_2-办结', '34', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('223', 'K', 'node_3-起草', '34', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('224', 'K', 'node_4-所在单位审核', '34', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('225', 'K', 'node_5-政工部门审核', '34', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('226', 'K', 'node_6-单位领导审核', '34', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('227', 'R', 'node_1-开始', '35', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('228', 'E', 'node_2-办结', '35', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('229', 'K', 'node_3-起草', '35', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('230', 'K', 'node_4-政工部门审核', '35', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('231', 'K', 'node_5-单位领导审核', '35', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('232', 'R', 'node_1-开始', '36', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('233', 'E', 'node_2-办结', '36', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('234', 'K', 'node_3-起草', '36', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('235', 'K', 'node_4-政工部门审核', '36', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('236', 'K', 'node_5-单位领导审核', '36', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('237', 'R', 'node_1-开始', '37', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('238', 'E', 'node_2-办结', '37', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('239', 'K', 'node_3-起草', '37', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('240', 'K', 'node_4-政工部门审核', '37', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('241', 'K', 'node_5-部门领导审核', '37', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('242', 'R', 'node_1-开始', '38', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('243', 'E', 'node_2-办结', '38', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('244', 'K', 'node_3-起草', '38', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('245', 'D', 'node_4-用户身份判定', '38', '\0', null, null, null, '269', null, null, null, null, '3');
INSERT INTO `jbpm_node` VALUES ('246', 'K', 'node_5-主管警员审核', '38', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('247', 'K', 'node_6-所在部门审核', '38', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('248', 'K', 'node_7-政工部门审核', '38', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('249', 'K', 'node_8-单位领导审核', '38', '\0', null, null, null, null, null, '4', '', '\0', '7');
INSERT INTO `jbpm_node` VALUES ('250', 'R', 'node_1-开始', '39', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('251', 'E', 'node_2-办结', '39', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('252', 'K', 'node_3-起草', '39', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('253', 'K', 'node_4-所在部门审核', '39', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('254', 'K', 'node_5-政工部门审核', '39', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('255', 'K', 'node_6-单位领导审核', '39', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('256', 'R', 'node_1-开始', '40', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('257', 'E', 'node_2-办结', '40', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('258', 'K', 'node_3-起草', '40', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('259', 'K', 'node_4-所在部门审核', '40', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('260', 'K', 'node_5-政工部门审核', '40', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('261', 'K', 'node_6-单位领导审核', '40', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('262', 'R', 'node_1-开始', '41', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('263', 'E', 'node_2-办结', '41', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('264', 'K', 'node_3-起草', '41', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('265', 'K', 'node_4-所在部门审核', '41', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('266', 'K', 'node_5-政工部门审核', '41', '\0', null, null, null, null, null, '4', '', '\0', '4');
INSERT INTO `jbpm_node` VALUES ('267', 'K', 'node_6-单位领导审核', '41', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('268', 'R', 'node_1-开始', '42', '\0', null, null, null, null, null, null, null, null, '0');
INSERT INTO `jbpm_node` VALUES ('269', 'E', 'node_2-办结', '42', '\0', null, null, null, null, null, null, null, null, '1');
INSERT INTO `jbpm_node` VALUES ('270', 'K', 'node_3-起草', '42', '\0', null, null, null, null, null, '4', '', '\0', '2');
INSERT INTO `jbpm_node` VALUES ('271', 'K', 'node_4-主管警员审核', '42', '\0', null, null, null, null, null, '4', '', '\0', '3');
INSERT INTO `jbpm_node` VALUES ('272', 'D', 'node_5-用户身份判定', '42', '\0', null, null, null, '297', null, null, null, null, '4');
INSERT INTO `jbpm_node` VALUES ('273', 'K', 'node_6-所在部门审核', '42', '\0', null, null, null, null, null, '4', '', '\0', '5');
INSERT INTO `jbpm_node` VALUES ('274', 'K', 'node_7-政工部门审核', '42', '\0', null, null, null, null, null, '4', '', '\0', '6');
INSERT INTO `jbpm_node` VALUES ('275', 'K', 'node_8-单位领导审核', '42', '\0', null, null, null, null, null, '4', '', '\0', '7');

-- ----------------------------
-- Table structure for jbpm_pooledactor
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_pooledactor`;
CREATE TABLE `jbpm_pooledactor` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `SWIMLANEINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `IDX_PLDACTR_ACTID` (`ACTORID_`) USING BTREE,
  KEY `FK_POOLEDACTOR_SLI` (`SWIMLANEINSTANCE_`) USING BTREE,
  CONSTRAINT `jbpm_pooledactor_ibfk_1` FOREIGN KEY (`SWIMLANEINSTANCE_`) REFERENCES `jbpm_swimlaneinstance` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_pooledactor
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_processdefinition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_processdefinition`;
CREATE TABLE `jbpm_processdefinition` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `ISTERMINATIONIMPLICIT_` bit(1) DEFAULT NULL,
  `STARTSTATE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_PROCDEF_STRTSTA` (`STARTSTATE_`) USING BTREE,
  CONSTRAINT `jbpm_processdefinition_ibfk_1` FOREIGN KEY (`STARTSTATE_`) REFERENCES `jbpm_node` (`ID_`)
) ENGINE=GsDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_processdefinition
-- ----------------------------
INSERT INTO `jbpm_processdefinition` VALUES ('1', '2c908fac5aa6b820015aa6cc150e0001', '1', '\0', '1');
INSERT INTO `jbpm_processdefinition` VALUES ('2', '2c908fac5aa6b820015aa6d13b6c000d', '1', '\0', '8');
INSERT INTO `jbpm_processdefinition` VALUES ('3', '2c908fac5aa6b820015aa72ba0640019', '1', '\0', '15');
INSERT INTO `jbpm_processdefinition` VALUES ('4', '2c908fac5aa6b820015aa72be24b001a', '1', '\0', '22');
INSERT INTO `jbpm_processdefinition` VALUES ('5', '2c908fac5aa6b820015aa730440c0026', '1', '\0', '29');
INSERT INTO `jbpm_processdefinition` VALUES ('6', '2c908fac5aa6b820015aa73416be003e', '1', '\0', '36');
INSERT INTO `jbpm_processdefinition` VALUES ('7', '2c908fac5aa6b820015aa732ccf80032', '1', '\0', '43');
INSERT INTO `jbpm_processdefinition` VALUES ('8', '2c908fac5aa6b820015aa7372dc1004a', '1', '\0', '51');
INSERT INTO `jbpm_processdefinition` VALUES ('9', '2c908f3c5aabc653015aabc731280001', '1', '\0', '58');
INSERT INTO `jbpm_processdefinition` VALUES ('10', '2c908f3c5aabc653015aabcafc850011', '1', '\0', '67');
INSERT INTO `jbpm_processdefinition` VALUES ('11', '2c908f335acfed50015ad046155c0004', '1', '\0', '74');
INSERT INTO `jbpm_processdefinition` VALUES ('12', '2c908f335acfed50015ad079ca86001d', '1', '\0', '82');
INSERT INTO `jbpm_processdefinition` VALUES ('13', '2c908f335acfed50015ad089315b0031', '1', '\0', '90');
INSERT INTO `jbpm_processdefinition` VALUES ('14', '2c908f335acfed50015ad08e8365003f', '1', '\0', '98');
INSERT INTO `jbpm_processdefinition` VALUES ('15', '2c908f335acfed50015ad092f854004d', '1', '\0', '106');
INSERT INTO `jbpm_processdefinition` VALUES ('16', '2c908f335acfed50015ad096e30e005b', '1', '\0', '114');
INSERT INTO `jbpm_processdefinition` VALUES ('17', '2c908f435ad0e9bb015ad0ece17b0001', '1', '\0', '122');
INSERT INTO `jbpm_processdefinition` VALUES ('18', '2c908fac5b0e3793015b0e43d43d0001', '1', '\0', '130');
INSERT INTO `jbpm_processdefinition` VALUES ('19', '2c908fac5b0e3793015b0e4c69aa0009', '1', '\0', '135');
INSERT INTO `jbpm_processdefinition` VALUES ('20', '2c908fac5b1e3083015b1e64d8f60001', '1', '\0', '138');
INSERT INTO `jbpm_processdefinition` VALUES ('21', '2c908fac5b1e3083015b1e7f0987000c', '1', '\0', '144');
INSERT INTO `jbpm_processdefinition` VALUES ('22', '2c908fac5b1e3083015b1e85bde20017', '1', '\0', '150');
INSERT INTO `jbpm_processdefinition` VALUES ('23', '2c908fac5b1e3083015b1e898b7b001f', '1', '\0', '155');
INSERT INTO `jbpm_processdefinition` VALUES ('24', '2c908fac5b1e3083015b1e95056c002a', '1', '\0', '161');
INSERT INTO `jbpm_processdefinition` VALUES ('25', '2c908fac5b1e3083015b1e9862b30035', '1', '\0', '167');
INSERT INTO `jbpm_processdefinition` VALUES ('26', '2c908fac5b1e3083015b1e9b0997003a', '1', '\0', '170');
INSERT INTO `jbpm_processdefinition` VALUES ('27', '2c908fac5b1e3083015b1e9da2a50045', '1', '\0', '176');
INSERT INTO `jbpm_processdefinition` VALUES ('28', '2c908fac5b1e3083015b1e9fa5e7004a', '1', '\0', '179');
INSERT INTO `jbpm_processdefinition` VALUES ('29', '2c908fac5b1e3083015b1ea3f42f0058', '1', '\0', '187');
INSERT INTO `jbpm_processdefinition` VALUES ('30', '2c908fac5962c454015962caa1240001', '1', '\0', '195');
INSERT INTO `jbpm_processdefinition` VALUES ('31', '2c908fac5962c454015962d3233e000f', '1', '\0', '203');
INSERT INTO `jbpm_processdefinition` VALUES ('32', '2c908fac5962c454015962d770300017', '1', '\0', '208');
INSERT INTO `jbpm_processdefinition` VALUES ('33', '2c908fac5962c454015962dd67930025', '1', '\0', '216');
INSERT INTO `jbpm_processdefinition` VALUES ('34', '2c908fac5962c454015962e291fa002d', '1', '\0', '221');
INSERT INTO `jbpm_processdefinition` VALUES ('35', '2c908fac5962c454015962e7e1c20038', '1', '\0', '227');
INSERT INTO `jbpm_processdefinition` VALUES ('36', '2c908fac5962c454015962ea532d0041', '1', '\0', '232');
INSERT INTO `jbpm_processdefinition` VALUES ('37', '2c908fac5962c454015962edcea5004a', '1', '\0', '237');
INSERT INTO `jbpm_processdefinition` VALUES ('38', '2c908fac5b220084015b222fd5130001', '1', '\0', '242');
INSERT INTO `jbpm_processdefinition` VALUES ('39', '2c908fac5bf51917015bf51e1ee20001', '1', '\0', '250');
INSERT INTO `jbpm_processdefinition` VALUES ('40', '2c908fac5bf51917015bf523098b000c', '1', '\0', '256');
INSERT INTO `jbpm_processdefinition` VALUES ('41', '2c908fac5bfa8793015bfa8c0a7b0001', '1', '\0', '262');
INSERT INTO `jbpm_processdefinition` VALUES ('42', '2c908fac5bfa8793015bfa960521000c', '1', '\0', '268');

-- ----------------------------
-- Table structure for jbpm_processinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_processinstance`;
CREATE TABLE `jbpm_processinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `ROOTTOKEN_` bigint(20) DEFAULT NULL,
  `SUPERPROCESSTOKEN_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_PROCIN_PROCDEF` (`PROCESSDEFINITION_`) USING BTREE,
  KEY `FK_PROCIN_ROOTTKN` (`ROOTTOKEN_`) USING BTREE,
  KEY `FK_PROCIN_SPROCTKN` (`SUPERPROCESSTOKEN_`) USING BTREE,
  CONSTRAINT `jbpm_processinstance_ibfk_1` FOREIGN KEY (`SUPERPROCESSTOKEN_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `jbpm_processinstance_ibfk_2` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `jbpm_processinstance_ibfk_3` FOREIGN KEY (`ROOTTOKEN_`) REFERENCES `jbpm_token` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_processinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_runtimeaction
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_runtimeaction`;
CREATE TABLE `jbpm_runtimeaction` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `EVENTTYPE_` varchar(255) DEFAULT NULL,
  `TYPE_` char(1) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCEINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_RTACTN_PROCINST` (`PROCESSINSTANCE_`) USING BTREE,
  KEY `FK_RTACTN_ACTION` (`ACTION_`) USING BTREE,
  CONSTRAINT `jbpm_runtimeaction_ibfk_1` FOREIGN KEY (`ACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `jbpm_runtimeaction_ibfk_2` FOREIGN KEY (`PROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_runtimeaction
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_swimlane
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_swimlane`;
CREATE TABLE `jbpm_swimlane` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `ACTORIDEXPRESSION_` varchar(255) DEFAULT NULL,
  `POOLEDACTORSEXPRESSION_` varchar(255) DEFAULT NULL,
  `ASSIGNMENTDELEGATION_` bigint(20) DEFAULT NULL,
  `TASKMGMTDEFINITION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_SWL_ASSDEL` (`ASSIGNMENTDELEGATION_`) USING BTREE,
  KEY `FK_SWL_TSKMGMTDEF` (`TASKMGMTDEFINITION_`) USING BTREE,
  CONSTRAINT `jbpm_swimlane_ibfk_1` FOREIGN KEY (`TASKMGMTDEFINITION_`) REFERENCES `jbpm_moduledefinition` (`ID_`),
  CONSTRAINT `jbpm_swimlane_ibfk_2` FOREIGN KEY (`ASSIGNMENTDELEGATION_`) REFERENCES `jbpm_delegation` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_swimlane
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_swimlaneinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_swimlaneinstance`;
CREATE TABLE `jbpm_swimlaneinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `SWIMLANE_` bigint(20) DEFAULT NULL,
  `TASKMGMTINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_SWIMLANEINST_TM` (`TASKMGMTINSTANCE_`) USING BTREE,
  KEY `FK_SWIMLANEINST_SL` (`SWIMLANE_`) USING BTREE,
  CONSTRAINT `jbpm_swimlaneinstance_ibfk_1` FOREIGN KEY (`SWIMLANE_`) REFERENCES `jbpm_swimlane` (`ID_`),
  CONSTRAINT `jbpm_swimlaneinstance_ibfk_2` FOREIGN KEY (`TASKMGMTINSTANCE_`) REFERENCES `jbpm_moduleinstance` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_swimlaneinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_task
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_task`;
CREATE TABLE `jbpm_task` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) DEFAULT NULL,
  `ISBLOCKING_` bit(1) DEFAULT NULL,
  `ISSIGNALLING_` bit(1) DEFAULT NULL,
  `DUEDATE_` varchar(255) DEFAULT NULL,
  `ACTORIDEXPRESSION_` varchar(255) DEFAULT NULL,
  `POOLEDACTORSEXPRESSION_` varchar(255) DEFAULT NULL,
  `TASKMGMTDEFINITION_` bigint(20) DEFAULT NULL,
  `TASKNODE_` bigint(20) DEFAULT NULL,
  `STARTSTATE_` bigint(20) DEFAULT NULL,
  `ASSIGNMENTDELEGATION_` bigint(20) DEFAULT NULL,
  `SWIMLANE_` bigint(20) DEFAULT NULL,
  `TASKCONTROLLER_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TASK_STARTST` (`STARTSTATE_`) USING BTREE,
  KEY `FK_TASK_PROCDEF` (`PROCESSDEFINITION_`) USING BTREE,
  KEY `FK_TASK_ASSDEL` (`ASSIGNMENTDELEGATION_`) USING BTREE,
  KEY `FK_TASK_SWIMLANE` (`SWIMLANE_`) USING BTREE,
  KEY `FK_TASK_TASKNODE` (`TASKNODE_`) USING BTREE,
  KEY `FK_TASK_TASKMGTDEF` (`TASKMGMTDEFINITION_`) USING BTREE,
  KEY `FK_TSK_TSKCTRL` (`TASKCONTROLLER_`) USING BTREE,
  CONSTRAINT `jbpm_task_ibfk_1` FOREIGN KEY (`TASKCONTROLLER_`) REFERENCES `jbpm_taskcontroller` (`ID_`),
  CONSTRAINT `jbpm_task_ibfk_2` FOREIGN KEY (`ASSIGNMENTDELEGATION_`) REFERENCES `jbpm_delegation` (`ID_`),
  CONSTRAINT `jbpm_task_ibfk_3` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`),
  CONSTRAINT `jbpm_task_ibfk_4` FOREIGN KEY (`STARTSTATE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_task_ibfk_5` FOREIGN KEY (`SWIMLANE_`) REFERENCES `jbpm_swimlane` (`ID_`),
  CONSTRAINT `jbpm_task_ibfk_6` FOREIGN KEY (`TASKMGMTDEFINITION_`) REFERENCES `jbpm_moduledefinition` (`ID_`),
  CONSTRAINT `jbpm_task_ibfk_7` FOREIGN KEY (`TASKNODE_`) REFERENCES `jbpm_node` (`ID_`)
) ENGINE=GsDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_task
-- ----------------------------
INSERT INTO `jbpm_task` VALUES ('1', 'node_3-起草', '1', null, '\0', '', null, null, null, '2', '3', null, '2', null, null);
INSERT INTO `jbpm_task` VALUES ('2', 'node_5-区县级管理员审核', '1', null, '\0', '', null, null, null, '2', '5', null, '5', null, null);
INSERT INTO `jbpm_task` VALUES ('3', 'node_6-市级管理员审核', '1', null, '\0', '', null, null, null, '2', '6', null, '6', null, null);
INSERT INTO `jbpm_task` VALUES ('4', 'node_7-省级管理员审核', '1', null, '\0', '', null, null, null, '2', '7', null, '7', null, null);
INSERT INTO `jbpm_task` VALUES ('5', 'node_1-开始', '1', null, '\0', '', null, null, null, '2', null, '1', '8', null, null);
INSERT INTO `jbpm_task` VALUES ('6', 'node_5-区县级管理员审核', '2', null, '\0', '', null, null, null, '4', '11', null, '12', null, null);
INSERT INTO `jbpm_task` VALUES ('7', 'node_6-市级管理员审核', '2', null, '\0', '', null, null, null, '4', '12', null, '13', null, null);
INSERT INTO `jbpm_task` VALUES ('8', 'node_7-省级管理员审核', '2', null, '\0', '', null, null, null, '4', '13', null, '14', null, null);
INSERT INTO `jbpm_task` VALUES ('9', 'node_9-起草', '2', null, '\0', '', null, null, null, '4', '14', null, '15', null, null);
INSERT INTO `jbpm_task` VALUES ('10', 'node_1-开始', '2', null, '\0', '', null, null, null, '4', null, '8', '16', null, null);
INSERT INTO `jbpm_task` VALUES ('11', 'node_3-起草', '3', null, '\0', '', null, null, null, '6', '17', null, '18', null, null);
INSERT INTO `jbpm_task` VALUES ('12', 'node_4-区县级管理员审核', '3', null, '\0', '', null, null, null, '6', '18', null, '19', null, null);
INSERT INTO `jbpm_task` VALUES ('13', 'node_5-市级管理员审核', '3', null, '\0', '', null, null, null, '6', '19', null, '20', null, null);
INSERT INTO `jbpm_task` VALUES ('14', 'node_6-省级管理员审核', '3', null, '\0', '', null, null, null, '6', '20', null, '21', null, null);
INSERT INTO `jbpm_task` VALUES ('15', 'node_1-开始', '3', null, '\0', '', null, null, null, '6', null, '15', '24', null, null);
INSERT INTO `jbpm_task` VALUES ('16', 'node_3-起草', '4', null, '\0', '', null, null, null, '8', '24', null, '26', null, null);
INSERT INTO `jbpm_task` VALUES ('17', 'node_4-区县级管理员审核', '4', null, '\0', '', null, null, null, '8', '25', null, '27', null, null);
INSERT INTO `jbpm_task` VALUES ('18', 'node_6-市级管理员审核', '4', null, '\0', '', null, null, null, '8', '27', null, '30', null, null);
INSERT INTO `jbpm_task` VALUES ('19', 'node_7-省级管理员审核', '4', null, '\0', '', null, null, null, '8', '28', null, '31', null, null);
INSERT INTO `jbpm_task` VALUES ('20', 'node_1-开始', '4', null, '\0', '', null, null, null, '8', null, '22', '32', null, null);
INSERT INTO `jbpm_task` VALUES ('21', 'node_3-起草', '5', null, '\0', '', null, null, null, '10', '31', null, '34', null, null);
INSERT INTO `jbpm_task` VALUES ('22', 'node_4-区县级管理员审核', '5', null, '\0', '', null, null, null, '10', '32', null, '35', null, null);
INSERT INTO `jbpm_task` VALUES ('23', 'node_5-市级管理员审核', '5', null, '\0', '', null, null, null, '10', '33', null, '36', null, null);
INSERT INTO `jbpm_task` VALUES ('24', 'node_6-省级管理员审核', '5', null, '\0', '', null, null, null, '10', '34', null, '37', null, null);
INSERT INTO `jbpm_task` VALUES ('25', 'node_1-开始', '5', null, '\0', '', null, null, null, '10', null, '29', '40', null, null);
INSERT INTO `jbpm_task` VALUES ('26', 'node_3-起草', '6', null, '\0', '', null, null, null, '12', '38', null, '42', null, null);
INSERT INTO `jbpm_task` VALUES ('27', 'node_4-区县级领导审核', '6', null, '\0', '', null, null, null, '12', '39', null, '43', null, null);
INSERT INTO `jbpm_task` VALUES ('28', 'node_5-市级管理员审核', '6', null, '\0', '', null, null, null, '12', '40', null, '44', null, null);
INSERT INTO `jbpm_task` VALUES ('29', 'node_6-省级管理员审核', '6', null, '\0', '', null, null, null, '12', '41', null, '45', null, null);
INSERT INTO `jbpm_task` VALUES ('30', 'node_1-开始', '6', null, '\0', '', null, null, null, '12', null, '36', '48', null, null);
INSERT INTO `jbpm_task` VALUES ('31', 'node_3-起草', '7', null, '\0', '', null, null, null, '14', '45', null, '50', null, null);
INSERT INTO `jbpm_task` VALUES ('32', 'node_4-主管警员审核', '7', null, '\0', '', null, null, null, '14', '46', null, '51', null, null);
INSERT INTO `jbpm_task` VALUES ('33', 'node_6-区县级管理员审核', '7', null, '\0', '', null, null, null, '14', '48', null, '54', null, null);
INSERT INTO `jbpm_task` VALUES ('34', 'node_7-市级管理员审核', '7', null, '\0', '', null, null, null, '14', '49', null, '55', null, null);
INSERT INTO `jbpm_task` VALUES ('35', 'node_8-省级管理员审核', '7', null, '\0', '', null, null, null, '14', '50', null, '56', null, null);
INSERT INTO `jbpm_task` VALUES ('36', 'node_1-开始', '7', null, '\0', '', null, null, null, '14', null, '43', '57', null, null);
INSERT INTO `jbpm_task` VALUES ('37', 'node_3-起草', '8', null, '\0', '', null, null, null, '16', '53', null, '59', null, null);
INSERT INTO `jbpm_task` VALUES ('38', 'node_4-区县级领导审核', '8', null, '\0', '', null, null, null, '16', '54', null, '60', null, null);
INSERT INTO `jbpm_task` VALUES ('39', 'node_5-市级管理员审核', '8', null, '\0', '', null, null, null, '16', '55', null, '61', null, null);
INSERT INTO `jbpm_task` VALUES ('40', 'node_6-省级管理员审核', '8', null, '\0', '', null, null, null, '16', '56', null, '62', null, null);
INSERT INTO `jbpm_task` VALUES ('41', 'node_1-开始', '8', null, '\0', '', null, null, null, '16', null, '51', '65', null, null);
INSERT INTO `jbpm_task` VALUES ('42', 'node_2-起草', '9', null, '\0', '', null, null, null, '18', '59', null, '66', null, null);
INSERT INTO `jbpm_task` VALUES ('43', 'node_4-区县级管理员审核', '9', null, '\0', '', null, null, null, '18', '61', null, '69', null, null);
INSERT INTO `jbpm_task` VALUES ('44', 'node_5-市级管理员审核', '9', null, '\0', '', null, null, null, '18', '62', null, '70', null, null);
INSERT INTO `jbpm_task` VALUES ('45', 'node_6-省级管理员审核', '9', null, '\0', '', null, null, null, '18', '63', null, '71', null, null);
INSERT INTO `jbpm_task` VALUES ('46', 'node_7-局级管理员审核', '9', null, '\0', '', null, null, null, '18', '64', null, '72', null, null);
INSERT INTO `jbpm_task` VALUES ('47', 'node_8-部级用户管理员', '9', null, '\0', '', null, null, null, '18', '65', null, '73', null, null);
INSERT INTO `jbpm_task` VALUES ('48', 'node_1-开始', '9', null, '\0', '', null, null, null, '18', null, '58', '75', null, null);
INSERT INTO `jbpm_task` VALUES ('49', 'node_2-起草', '10', null, '\0', '', null, null, null, '20', '68', null, '76', null, null);
INSERT INTO `jbpm_task` VALUES ('50', 'node_4-区县级管理员审核', '10', null, '\0', '', null, null, null, '20', '70', null, '79', null, null);
INSERT INTO `jbpm_task` VALUES ('51', 'node_5-市级管理员审核', '10', null, '\0', '', null, null, null, '20', '71', null, '80', null, null);
INSERT INTO `jbpm_task` VALUES ('52', 'node_6-省级管理员审核', '10', null, '\0', '', null, null, null, '20', '72', null, '81', null, null);
INSERT INTO `jbpm_task` VALUES ('53', 'node_1-开始', '10', null, '\0', '', null, null, null, '20', null, '67', '83', null, null);
INSERT INTO `jbpm_task` VALUES ('54', 'node_2-起草', '11', null, '\0', '', null, null, null, '22', '75', null, '84', null, null);
INSERT INTO `jbpm_task` VALUES ('55', 'node_3-主管警员', '11', null, '\0', '', null, null, null, '22', '76', null, '85', null, null);
INSERT INTO `jbpm_task` VALUES ('56', 'node_5-区县级管理员审核', '11', null, '\0', '', null, null, null, '22', '78', null, '88', null, null);
INSERT INTO `jbpm_task` VALUES ('57', 'node_6-市级管理员审核', '11', null, '\0', '', null, null, null, '22', '79', null, '89', null, null);
INSERT INTO `jbpm_task` VALUES ('58', 'node_7-省级管理员审核', '11', null, '\0', '', null, null, null, '22', '80', null, '90', null, null);
INSERT INTO `jbpm_task` VALUES ('59', 'node_1-开始', '11', null, '\0', '', null, null, null, '22', null, '74', '92', null, null);
INSERT INTO `jbpm_task` VALUES ('60', 'node_2-起草', '12', null, '\0', '', null, null, null, '24', '83', null, '93', null, null);
INSERT INTO `jbpm_task` VALUES ('61', 'node_3-主管警员', '12', null, '\0', '', null, null, null, '24', '84', null, '94', null, null);
INSERT INTO `jbpm_task` VALUES ('62', 'node_5-区县管理员审核', '12', null, '\0', '', null, null, null, '24', '86', null, '97', null, null);
INSERT INTO `jbpm_task` VALUES ('63', 'node_6-市级管理员审核', '12', null, '\0', '', null, null, null, '24', '87', null, '98', null, null);
INSERT INTO `jbpm_task` VALUES ('64', 'node_7-省级管理员审核', '12', null, '\0', '', null, null, null, '24', '88', null, '99', null, null);
INSERT INTO `jbpm_task` VALUES ('65', 'node_1-开始', '12', null, '\0', '', null, null, null, '24', null, '82', '101', null, null);
INSERT INTO `jbpm_task` VALUES ('66', 'node_2-起草', '13', null, '\0', '', null, null, null, '26', '91', null, '102', null, null);
INSERT INTO `jbpm_task` VALUES ('67', 'node_3-主管警员', '13', null, '\0', '', null, null, null, '26', '92', null, '103', null, null);
INSERT INTO `jbpm_task` VALUES ('68', 'node_5-区县级管理员审核', '13', null, '\0', '', null, null, null, '26', '94', null, '106', null, null);
INSERT INTO `jbpm_task` VALUES ('69', 'node_6-市级管理员审核', '13', null, '\0', '', null, null, null, '26', '95', null, '107', null, null);
INSERT INTO `jbpm_task` VALUES ('70', 'node_7-省级管理员审核', '13', null, '\0', '', null, null, null, '26', '96', null, '108', null, null);
INSERT INTO `jbpm_task` VALUES ('71', 'node_1-开始', '13', null, '\0', '', null, null, null, '26', null, '90', '110', null, null);
INSERT INTO `jbpm_task` VALUES ('72', 'node_2-起草', '14', null, '\0', '', null, null, null, '28', '99', null, '111', null, null);
INSERT INTO `jbpm_task` VALUES ('73', 'node_3-主管警员审核', '14', null, '\0', '', null, null, null, '28', '100', null, '112', null, null);
INSERT INTO `jbpm_task` VALUES ('74', 'node_5-区县级管理员审核', '14', null, '\0', '', null, null, null, '28', '102', null, '115', null, null);
INSERT INTO `jbpm_task` VALUES ('75', 'node_6-市级管理员审核', '14', null, '\0', '', null, null, null, '28', '103', null, '116', null, null);
INSERT INTO `jbpm_task` VALUES ('76', 'node_7-省级管理员审核', '14', null, '\0', '', null, null, null, '28', '104', null, '117', null, null);
INSERT INTO `jbpm_task` VALUES ('77', 'node_1-开始', '14', null, '\0', '', null, null, null, '28', null, '98', '119', null, null);
INSERT INTO `jbpm_task` VALUES ('78', 'node_2-起草', '15', null, '\0', '', null, null, null, '30', '107', null, '120', null, null);
INSERT INTO `jbpm_task` VALUES ('79', 'node_3-主管警员审核', '15', null, '\0', '', null, null, null, '30', '108', null, '121', null, null);
INSERT INTO `jbpm_task` VALUES ('80', 'node_5-区县级管理员审核', '15', null, '\0', '', null, null, null, '30', '110', null, '124', null, null);
INSERT INTO `jbpm_task` VALUES ('81', 'node_6-市级管理员审核', '15', null, '\0', '', null, null, null, '30', '111', null, '125', null, null);
INSERT INTO `jbpm_task` VALUES ('82', 'node_7-省级管理员审核', '15', null, '\0', '', null, null, null, '30', '112', null, '126', null, null);
INSERT INTO `jbpm_task` VALUES ('83', 'node_1-开始', '15', null, '\0', '', null, null, null, '30', null, '106', '128', null, null);
INSERT INTO `jbpm_task` VALUES ('84', 'node_2-起草', '16', null, '\0', '', null, null, null, '32', '115', null, '129', null, null);
INSERT INTO `jbpm_task` VALUES ('85', 'node_3-主管警员审核', '16', null, '\0', '', null, null, null, '32', '116', null, '130', null, null);
INSERT INTO `jbpm_task` VALUES ('86', 'node_5-区县级管理员审核', '16', null, '\0', '', null, null, null, '32', '118', null, '133', null, null);
INSERT INTO `jbpm_task` VALUES ('87', 'node_6-市级管理员审核', '16', null, '\0', '', null, null, null, '32', '119', null, '134', null, null);
INSERT INTO `jbpm_task` VALUES ('88', 'node_7-省级管理员审核', '16', null, '\0', '', null, null, null, '32', '120', null, '135', null, null);
INSERT INTO `jbpm_task` VALUES ('89', 'node_1-开始', '16', null, '\0', '', null, null, null, '32', null, '114', '137', null, null);
INSERT INTO `jbpm_task` VALUES ('90', 'node_3-起草', '17', null, '\0', '', null, null, null, '34', '124', null, '139', null, null);
INSERT INTO `jbpm_task` VALUES ('91', 'node_4-主管警员', '17', null, '\0', '', null, null, null, '34', '125', null, '140', null, null);
INSERT INTO `jbpm_task` VALUES ('92', 'node_6-区县级领导审核', '17', null, '\0', '', null, null, null, '34', '127', null, '143', null, null);
INSERT INTO `jbpm_task` VALUES ('93', 'node_7-市级管理员审核', '17', null, '\0', '', null, null, null, '34', '128', null, '144', null, null);
INSERT INTO `jbpm_task` VALUES ('94', 'node_8-省级管理员审核', '17', null, '\0', '', null, null, null, '34', '129', null, '145', null, null);
INSERT INTO `jbpm_task` VALUES ('95', 'node_1-开始', '17', null, '\0', '', null, null, null, '34', null, '122', '146', null, null);
INSERT INTO `jbpm_task` VALUES ('96', 'node_2-起草', '18', null, '\0', '', null, null, null, '36', '131', null, '147', null, null);
INSERT INTO `jbpm_task` VALUES ('97', 'node_3-主管警员审核', '18', null, '\0', '', null, null, null, '36', '132', null, '148', null, null);
INSERT INTO `jbpm_task` VALUES ('98', 'node_1-开始', '18', null, '\0', '', null, null, null, '36', null, '130', '152', null, null);
INSERT INTO `jbpm_task` VALUES ('99', 'node_3-起草', '19', null, '\0', '', null, null, null, '38', '137', null, '154', null, null);
INSERT INTO `jbpm_task` VALUES ('100', 'node_1-开始', '19', null, '\0', '', null, null, null, '38', null, '135', '155', null, null);
INSERT INTO `jbpm_task` VALUES ('101', 'node_3-起草', '20', null, '\0', '', null, null, null, '40', '140', null, '157', null, null);
INSERT INTO `jbpm_task` VALUES ('102', 'node_4-所在部门审核', '20', null, '\0', '', null, null, null, '40', '141', null, '158', null, null);
INSERT INTO `jbpm_task` VALUES ('103', 'node_5-政工部门审核', '20', null, '\0', '', null, null, null, '40', '142', null, '159', null, null);
INSERT INTO `jbpm_task` VALUES ('104', 'node_6-单位领导审核', '20', null, '\0', '', null, null, null, '40', '143', null, '160', null, null);
INSERT INTO `jbpm_task` VALUES ('105', 'node_1-开始', '20', null, '\0', '', null, null, null, '40', null, '138', '161', null, null);
INSERT INTO `jbpm_task` VALUES ('106', 'node_3-起草', '21', null, '\0', '', null, null, null, '42', '146', null, '163', null, null);
INSERT INTO `jbpm_task` VALUES ('107', 'node_4-所在部门审核', '21', null, '\0', '', null, null, null, '42', '147', null, '164', null, null);
INSERT INTO `jbpm_task` VALUES ('108', 'node_5-政工部门审核', '21', null, '\0', '', null, null, null, '42', '148', null, '165', null, null);
INSERT INTO `jbpm_task` VALUES ('109', 'node_6-单位领导', '21', null, '\0', '', null, null, null, '42', '149', null, '166', null, null);
INSERT INTO `jbpm_task` VALUES ('110', 'node_1-开始', '21', null, '\0', '', null, null, null, '42', null, '144', '167', null, null);
INSERT INTO `jbpm_task` VALUES ('111', 'node_3-起草', '22', null, '\0', '', null, null, null, '44', '152', null, '169', null, null);
INSERT INTO `jbpm_task` VALUES ('112', 'node_4-主管警员审核', '22', null, '\0', '', null, null, null, '44', '153', null, '170', null, null);
INSERT INTO `jbpm_task` VALUES ('113', 'node_1-开始', '22', null, '\0', '', null, null, null, '44', null, '150', '173', null, null);
INSERT INTO `jbpm_task` VALUES ('114', 'node_3-起草', '23', null, '\0', '', null, null, null, '46', '157', null, '175', null, null);
INSERT INTO `jbpm_task` VALUES ('115', 'node_4-所在部门审核', '23', null, '\0', '', null, null, null, '46', '158', null, '176', null, null);
INSERT INTO `jbpm_task` VALUES ('116', 'node_5-政工部门审核', '23', null, '\0', '', null, null, null, '46', '159', null, '177', null, null);
INSERT INTO `jbpm_task` VALUES ('117', 'node_6-单位领导审核', '23', null, '\0', '', null, null, null, '46', '160', null, '178', null, null);
INSERT INTO `jbpm_task` VALUES ('118', 'node_1-开始', '23', null, '\0', '', null, null, null, '46', null, '155', '179', null, null);
INSERT INTO `jbpm_task` VALUES ('119', 'node_3-起草', '24', null, '\0', '', null, null, null, '48', '163', null, '181', null, null);
INSERT INTO `jbpm_task` VALUES ('120', 'node_4-所在部门审核', '24', null, '\0', '', null, null, null, '48', '164', null, '182', null, null);
INSERT INTO `jbpm_task` VALUES ('121', 'node_5-政工部门审核', '24', null, '\0', '', null, null, null, '48', '165', null, '183', null, null);
INSERT INTO `jbpm_task` VALUES ('122', 'node_6-单位领导审核', '24', null, '\0', '', null, null, null, '48', '166', null, '184', null, null);
INSERT INTO `jbpm_task` VALUES ('123', 'node_1-开始', '24', null, '\0', '', null, null, null, '48', null, '161', '185', null, null);
INSERT INTO `jbpm_task` VALUES ('124', 'node_3-起草', '25', null, '\0', '', null, null, null, '50', '169', null, '187', null, null);
INSERT INTO `jbpm_task` VALUES ('125', 'node_1-开始', '25', null, '\0', '', null, null, null, '50', null, '167', '188', null, null);
INSERT INTO `jbpm_task` VALUES ('126', 'node_3-起草', '26', null, '\0', '', null, null, null, '52', '172', null, '190', null, null);
INSERT INTO `jbpm_task` VALUES ('127', 'node_4-所在部门审核', '26', null, '\0', '', null, null, null, '52', '173', null, '191', null, null);
INSERT INTO `jbpm_task` VALUES ('128', 'node_5-政工部门审核', '26', null, '\0', '', null, null, null, '52', '174', null, '192', null, null);
INSERT INTO `jbpm_task` VALUES ('129', 'node_6-单位领导审核', '26', null, '\0', '', null, null, null, '52', '175', null, '193', null, null);
INSERT INTO `jbpm_task` VALUES ('130', 'node_1-开始', '26', null, '\0', '', null, null, null, '52', null, '170', '194', null, null);
INSERT INTO `jbpm_task` VALUES ('131', 'node_3-起草', '27', null, '\0', '', null, null, null, '54', '178', null, '196', null, null);
INSERT INTO `jbpm_task` VALUES ('132', 'node_1-开始', '27', null, '\0', '', null, null, null, '54', null, '176', '197', null, null);
INSERT INTO `jbpm_task` VALUES ('133', 'node_3-起草', '28', null, '\0', '', null, null, null, '56', '181', null, '199', null, null);
INSERT INTO `jbpm_task` VALUES ('134', 'node_5-主管警员审核', '28', null, '\0', '', null, null, null, '56', '183', null, '202', null, null);
INSERT INTO `jbpm_task` VALUES ('135', 'node_6-所在部门审核', '28', null, '\0', '', null, null, null, '56', '184', null, '203', null, null);
INSERT INTO `jbpm_task` VALUES ('136', 'node_7-政工部门审核', '28', null, '\0', '', null, null, null, '56', '185', null, '204', null, null);
INSERT INTO `jbpm_task` VALUES ('137', 'node_8-单位领导审核', '28', null, '\0', '', null, null, null, '56', '186', null, '205', null, null);
INSERT INTO `jbpm_task` VALUES ('138', 'node_1-开始', '28', null, '\0', '', null, null, null, '56', null, '179', '206', null, null);
INSERT INTO `jbpm_task` VALUES ('139', 'node_3-起草', '29', null, '\0', '', null, null, null, '58', '189', null, '208', null, null);
INSERT INTO `jbpm_task` VALUES ('140', 'node_4-主管警员审核', '29', null, '\0', '', null, null, null, '58', '190', null, '209', null, null);
INSERT INTO `jbpm_task` VALUES ('141', 'node_6-所在部门审核', '29', null, '\0', '', null, null, null, '58', '192', null, '212', null, null);
INSERT INTO `jbpm_task` VALUES ('142', 'node_7-政工部门审核', '29', null, '\0', '', null, null, null, '58', '193', null, '213', null, null);
INSERT INTO `jbpm_task` VALUES ('143', 'node_8-单位领导审核', '29', null, '\0', '', null, null, null, '58', '194', null, '214', null, null);
INSERT INTO `jbpm_task` VALUES ('144', 'node_1-开始', '29', null, '\0', '', null, null, null, '58', null, '187', '215', null, null);
INSERT INTO `jbpm_task` VALUES ('145', 'node_3-起草', '30', null, '\0', '', null, null, null, '60', '197', null, '217', null, null);
INSERT INTO `jbpm_task` VALUES ('146', 'node_5-主管警员审核', '30', null, '\0', '', null, null, null, '60', '199', null, '220', null, null);
INSERT INTO `jbpm_task` VALUES ('147', 'node_6-所在部门审核', '30', null, '\0', '', null, null, null, '60', '200', null, '221', null, null);
INSERT INTO `jbpm_task` VALUES ('148', 'node_7-政工部门审核', '30', null, '\0', '', null, null, null, '60', '201', null, '222', null, null);
INSERT INTO `jbpm_task` VALUES ('149', 'node_8-单位领导审核', '30', null, '\0', '', null, null, null, '60', '202', null, '223', null, null);
INSERT INTO `jbpm_task` VALUES ('150', 'node_1-开始', '30', null, '\0', '', null, null, null, '60', null, '195', '224', null, null);
INSERT INTO `jbpm_task` VALUES ('151', 'node_3-起草', '31', null, '\0', '', null, null, null, '62', '205', null, '226', null, null);
INSERT INTO `jbpm_task` VALUES ('152', 'node_5-主管警员审核', '31', null, '\0', '', null, null, null, '62', '207', null, '229', null, null);
INSERT INTO `jbpm_task` VALUES ('153', 'node_1-开始', '31', null, '\0', '', null, null, null, '62', null, '203', '230', null, null);
INSERT INTO `jbpm_task` VALUES ('154', 'node_3-起草', '32', null, '\0', '', null, null, null, '64', '210', null, '232', null, null);
INSERT INTO `jbpm_task` VALUES ('155', 'node_5-主管警员审核', '32', null, '\0', '', null, null, null, '64', '212', null, '235', null, null);
INSERT INTO `jbpm_task` VALUES ('156', 'node_6-所在部门审核', '32', null, '\0', '', null, null, null, '64', '213', null, '236', null, null);
INSERT INTO `jbpm_task` VALUES ('157', 'node_7-政工部门审核', '32', null, '\0', '', null, null, null, '64', '214', null, '237', null, null);
INSERT INTO `jbpm_task` VALUES ('158', 'node_8-单位领导审核', '32', null, '\0', '', null, null, null, '64', '215', null, '238', null, null);
INSERT INTO `jbpm_task` VALUES ('159', 'node_1-开始', '32', null, '\0', '', null, null, null, '64', null, '208', '239', null, null);
INSERT INTO `jbpm_task` VALUES ('160', 'node_3-起草', '33', null, '\0', '', null, null, null, '66', '218', null, '241', null, null);
INSERT INTO `jbpm_task` VALUES ('161', 'node_5-主管警员审核', '33', null, '\0', '', null, null, null, '66', '220', null, '244', null, null);
INSERT INTO `jbpm_task` VALUES ('162', 'node_1-开始', '33', null, '\0', '', null, null, null, '66', null, '216', '245', null, null);
INSERT INTO `jbpm_task` VALUES ('163', 'node_3-起草', '34', null, '\0', '', null, null, null, '68', '223', null, '247', null, null);
INSERT INTO `jbpm_task` VALUES ('164', 'node_4-所在单位审核', '34', null, '\0', '', null, null, null, '68', '224', null, '248', null, null);
INSERT INTO `jbpm_task` VALUES ('165', 'node_5-政工部门审核', '34', null, '\0', '', null, null, null, '68', '225', null, '249', null, null);
INSERT INTO `jbpm_task` VALUES ('166', 'node_6-单位领导审核', '34', null, '\0', '', null, null, null, '68', '226', null, '250', null, null);
INSERT INTO `jbpm_task` VALUES ('167', 'node_1-开始', '34', null, '\0', '', null, null, null, '68', null, '221', '251', null, null);
INSERT INTO `jbpm_task` VALUES ('168', 'node_3-起草', '35', null, '\0', '', null, null, null, '70', '229', null, '253', null, null);
INSERT INTO `jbpm_task` VALUES ('169', 'node_4-政工部门审核', '35', null, '\0', '', null, null, null, '70', '230', null, '254', null, null);
INSERT INTO `jbpm_task` VALUES ('170', 'node_5-单位领导审核', '35', null, '\0', '', null, null, null, '70', '231', null, '255', null, null);
INSERT INTO `jbpm_task` VALUES ('171', 'node_1-开始', '35', null, '\0', '', null, null, null, '70', null, '227', '256', null, null);
INSERT INTO `jbpm_task` VALUES ('172', 'node_3-起草', '36', null, '\0', '', null, null, null, '72', '234', null, '258', null, null);
INSERT INTO `jbpm_task` VALUES ('173', 'node_4-政工部门审核', '36', null, '\0', '', null, null, null, '72', '235', null, '259', null, null);
INSERT INTO `jbpm_task` VALUES ('174', 'node_5-单位领导审核', '36', null, '\0', '', null, null, null, '72', '236', null, '260', null, null);
INSERT INTO `jbpm_task` VALUES ('175', 'node_1-开始', '36', null, '\0', '', null, null, null, '72', null, '232', '261', null, null);
INSERT INTO `jbpm_task` VALUES ('176', 'node_3-起草', '37', null, '\0', '', null, null, null, '74', '239', null, '263', null, null);
INSERT INTO `jbpm_task` VALUES ('177', 'node_4-政工部门审核', '37', null, '\0', '', null, null, null, '74', '240', null, '264', null, null);
INSERT INTO `jbpm_task` VALUES ('178', 'node_5-部门领导审核', '37', null, '\0', '', null, null, null, '74', '241', null, '265', null, null);
INSERT INTO `jbpm_task` VALUES ('179', 'node_1-开始', '37', null, '\0', '', null, null, null, '74', null, '237', '266', null, null);
INSERT INTO `jbpm_task` VALUES ('180', 'node_3-起草', '38', null, '\0', '', null, null, null, '76', '244', null, '268', null, null);
INSERT INTO `jbpm_task` VALUES ('181', 'node_5-主管警员审核', '38', null, '\0', '', null, null, null, '76', '246', null, '271', null, null);
INSERT INTO `jbpm_task` VALUES ('182', 'node_6-所在部门审核', '38', null, '\0', '', null, null, null, '76', '247', null, '272', null, null);
INSERT INTO `jbpm_task` VALUES ('183', 'node_7-政工部门审核', '38', null, '\0', '', null, null, null, '76', '248', null, '273', null, null);
INSERT INTO `jbpm_task` VALUES ('184', 'node_8-单位领导审核', '38', null, '\0', '', null, null, null, '76', '249', null, '274', null, null);
INSERT INTO `jbpm_task` VALUES ('185', 'node_1-开始', '38', null, '\0', '', null, null, null, '76', null, '242', '275', null, null);
INSERT INTO `jbpm_task` VALUES ('186', 'node_3-起草', '39', null, '\0', '', null, null, null, '78', '252', null, '277', null, null);
INSERT INTO `jbpm_task` VALUES ('187', 'node_4-所在部门审核', '39', null, '\0', '', null, null, null, '78', '253', null, '278', null, null);
INSERT INTO `jbpm_task` VALUES ('188', 'node_5-政工部门审核', '39', null, '\0', '', null, null, null, '78', '254', null, '279', null, null);
INSERT INTO `jbpm_task` VALUES ('189', 'node_6-单位领导审核', '39', null, '\0', '', null, null, null, '78', '255', null, '280', null, null);
INSERT INTO `jbpm_task` VALUES ('190', 'node_1-开始', '39', null, '\0', '', null, null, null, '78', null, '250', '281', null, null);
INSERT INTO `jbpm_task` VALUES ('191', 'node_3-起草', '40', null, '\0', '', null, null, null, '80', '258', null, '283', null, null);
INSERT INTO `jbpm_task` VALUES ('192', 'node_4-所在部门审核', '40', null, '\0', '', null, null, null, '80', '259', null, '284', null, null);
INSERT INTO `jbpm_task` VALUES ('193', 'node_5-政工部门审核', '40', null, '\0', '', null, null, null, '80', '260', null, '285', null, null);
INSERT INTO `jbpm_task` VALUES ('194', 'node_6-单位领导审核', '40', null, '\0', '', null, null, null, '80', '261', null, '286', null, null);
INSERT INTO `jbpm_task` VALUES ('195', 'node_1-开始', '40', null, '\0', '', null, null, null, '80', null, '256', '287', null, null);
INSERT INTO `jbpm_task` VALUES ('196', 'node_3-起草', '41', null, '\0', '', null, null, null, '82', '264', null, '289', null, null);
INSERT INTO `jbpm_task` VALUES ('197', 'node_4-所在部门审核', '41', null, '\0', '', null, null, null, '82', '265', null, '290', null, null);
INSERT INTO `jbpm_task` VALUES ('198', 'node_5-政工部门审核', '41', null, '\0', '', null, null, null, '82', '266', null, '291', null, null);
INSERT INTO `jbpm_task` VALUES ('199', 'node_6-单位领导审核', '41', null, '\0', '', null, null, null, '82', '267', null, '292', null, null);
INSERT INTO `jbpm_task` VALUES ('200', 'node_1-开始', '41', null, '\0', '', null, null, null, '82', null, '262', '293', null, null);
INSERT INTO `jbpm_task` VALUES ('201', 'node_3-起草', '42', null, '\0', '', null, null, null, '84', '270', null, '295', null, null);
INSERT INTO `jbpm_task` VALUES ('202', 'node_4-主管警员审核', '42', null, '\0', '', null, null, null, '84', '271', null, '296', null, null);
INSERT INTO `jbpm_task` VALUES ('203', 'node_6-所在部门审核', '42', null, '\0', '', null, null, null, '84', '273', null, '299', null, null);
INSERT INTO `jbpm_task` VALUES ('204', 'node_7-政工部门审核', '42', null, '\0', '', null, null, null, '84', '274', null, '300', null, null);
INSERT INTO `jbpm_task` VALUES ('205', 'node_8-单位领导审核', '42', null, '\0', '', null, null, null, '84', '275', null, '301', null, null);
INSERT INTO `jbpm_task` VALUES ('206', 'node_1-开始', '42', null, '\0', '', null, null, null, '84', null, '268', '302', null, null);

-- ----------------------------
-- Table structure for jbpm_taskactorpool
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskactorpool`;
CREATE TABLE `jbpm_taskactorpool` (
  `POOLEDACTOR_` bigint(20) NOT NULL,
  `TASKINSTANCE_` bigint(20) NOT NULL,
  PRIMARY KEY (`TASKINSTANCE_`,`POOLEDACTOR_`),
  KEY `FK_TASKACTPL_TSKI` (`TASKINSTANCE_`) USING BTREE,
  KEY `FK_TSKACTPOL_PLACT` (`POOLEDACTOR_`) USING BTREE,
  CONSTRAINT `jbpm_taskactorpool_ibfk_1` FOREIGN KEY (`POOLEDACTOR_`) REFERENCES `jbpm_pooledactor` (`ID_`),
  CONSTRAINT `jbpm_taskactorpool_ibfk_2` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_taskactorpool
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_taskcontroller
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskcontroller`;
CREATE TABLE `jbpm_taskcontroller` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TASKCONTROLLERDELEGATION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TSKCTRL_DELEG` (`TASKCONTROLLERDELEGATION_`) USING BTREE,
  CONSTRAINT `jbpm_taskcontroller_ibfk_1` FOREIGN KEY (`TASKCONTROLLERDELEGATION_`) REFERENCES `jbpm_delegation` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_taskcontroller
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_taskinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_taskinstance`;
CREATE TABLE `jbpm_taskinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) DEFAULT NULL,
  `ACTORID_` varchar(255) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `ISCANCELLED_` bit(1) DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `ISOPEN_` bit(1) DEFAULT NULL,
  `ISSIGNALLING_` bit(1) DEFAULT NULL,
  `ISBLOCKING_` bit(1) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `SWIMLANINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKMGMTINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `IDX_TASK_ACTORID` (`ACTORID_`) USING BTREE,
  KEY `FK_TASKINST_TMINST` (`TASKMGMTINSTANCE_`) USING BTREE,
  KEY `FK_TASKINST_TOKEN` (`TOKEN_`) USING BTREE,
  KEY `FK_TASKINST_SLINST` (`SWIMLANINSTANCE_`) USING BTREE,
  KEY `FK_TASKINST_TASK` (`TASK_`) USING BTREE,
  CONSTRAINT `jbpm_taskinstance_ibfk_1` FOREIGN KEY (`TASK_`) REFERENCES `jbpm_task` (`ID_`),
  CONSTRAINT `jbpm_taskinstance_ibfk_2` FOREIGN KEY (`SWIMLANINSTANCE_`) REFERENCES `jbpm_swimlaneinstance` (`ID_`),
  CONSTRAINT `jbpm_taskinstance_ibfk_3` FOREIGN KEY (`TASKMGMTINSTANCE_`) REFERENCES `jbpm_moduleinstance` (`ID_`),
  CONSTRAINT `jbpm_taskinstance_ibfk_4` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_taskinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_timer
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_timer`;
CREATE TABLE `jbpm_timer` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL,
  `TRANSITIONNAME_` varchar(255) DEFAULT NULL,
  `EXCEPTION_` varchar(4000) DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `ACTION_` bigint(20) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  `GRAPHELEMENTTYPE_` varchar(255) DEFAULT NULL,
  `GRAPHELEMENT_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TIMER_PRINST` (`PROCESSINSTANCE_`) USING BTREE,
  KEY `FK_TIMER_TOKEN` (`TOKEN_`) USING BTREE,
  KEY `FK_TIMER_ACTION` (`ACTION_`) USING BTREE,
  KEY `FK_TIMER_TSKINST` (`TASKINSTANCE_`) USING BTREE,
  CONSTRAINT `jbpm_timer_ibfk_1` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`),
  CONSTRAINT `jbpm_timer_ibfk_2` FOREIGN KEY (`ACTION_`) REFERENCES `jbpm_action` (`ID_`),
  CONSTRAINT `jbpm_timer_ibfk_3` FOREIGN KEY (`PROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`),
  CONSTRAINT `jbpm_timer_ibfk_4` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_timer
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_token
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_token`;
CREATE TABLE `jbpm_token` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_` int(11) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `NODEENTER_` datetime DEFAULT NULL,
  `NEXTLOGINDEX_` int(11) DEFAULT NULL,
  `ISABLETOREACTIVATEPARENT_` bit(1) DEFAULT NULL,
  `ISTERMINATIONIMPLICIT_` bit(1) DEFAULT NULL,
  `ISSUSPENDED_` bit(1) DEFAULT NULL,
  `NODE_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  `SUBPROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TOKEN_SUBPI` (`SUBPROCESSINSTANCE_`) USING BTREE,
  KEY `FK_TOKEN_PROCINST` (`PROCESSINSTANCE_`) USING BTREE,
  KEY `FK_TOKEN_NODE` (`NODE_`) USING BTREE,
  KEY `FK_TOKEN_PARENT` (`PARENT_`) USING BTREE,
  CONSTRAINT `jbpm_token_ibfk_1` FOREIGN KEY (`PARENT_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `jbpm_token_ibfk_2` FOREIGN KEY (`NODE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_token_ibfk_3` FOREIGN KEY (`PROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`),
  CONSTRAINT `jbpm_token_ibfk_4` FOREIGN KEY (`SUBPROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_token
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_tokenvariablemap
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_tokenvariablemap`;
CREATE TABLE `jbpm_tokenvariablemap` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `CONTEXTINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TKVARMAP_TOKEN` (`TOKEN_`) USING BTREE,
  KEY `FK_TKVARMAP_CTXT` (`CONTEXTINSTANCE_`) USING BTREE,
  CONSTRAINT `jbpm_tokenvariablemap_ibfk_1` FOREIGN KEY (`CONTEXTINSTANCE_`) REFERENCES `jbpm_moduleinstance` (`ID_`),
  CONSTRAINT `jbpm_tokenvariablemap_ibfk_2` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_tokenvariablemap
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_transition
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_transition`;
CREATE TABLE `jbpm_transition` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(255) DEFAULT NULL,
  `PROCESSDEFINITION_` bigint(20) DEFAULT NULL,
  `FROM_` bigint(20) DEFAULT NULL,
  `TO_` bigint(20) DEFAULT NULL,
  `FROMINDEX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_TRANSITION_FROM` (`FROM_`) USING BTREE,
  KEY `FK_TRANS_PROCDEF` (`PROCESSDEFINITION_`) USING BTREE,
  KEY `FK_TRANSITION_TO` (`TO_`) USING BTREE,
  CONSTRAINT `jbpm_transition_ibfk_1` FOREIGN KEY (`TO_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_transition_ibfk_2` FOREIGN KEY (`FROM_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_transition_ibfk_3` FOREIGN KEY (`PROCESSDEFINITION_`) REFERENCES `jbpm_processdefinition` (`ID_`)
) ENGINE=GsDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_transition
-- ----------------------------
INSERT INTO `jbpm_transition` VALUES ('1', 'node_3-起草', '1', '1', '3', '0');
INSERT INTO `jbpm_transition` VALUES ('2', 'node_4-分级策略', '1', '3', '4', '0');
INSERT INTO `jbpm_transition` VALUES ('3', 'node_5-区县级管理员审核', '1', '4', '5', '0');
INSERT INTO `jbpm_transition` VALUES ('4', 'node_6-市级管理员审核', '1', '4', '6', '1');
INSERT INTO `jbpm_transition` VALUES ('5', 'node_7-省级管理员审核', '1', '4', '7', '2');
INSERT INTO `jbpm_transition` VALUES ('6', 'node_6-市级管理员审核', '1', '5', '6', '0');
INSERT INTO `jbpm_transition` VALUES ('7', 'node_7-省级管理员审核', '1', '6', '7', '0');
INSERT INTO `jbpm_transition` VALUES ('8', 'node_2-办结', '1', '7', '2', '0');
INSERT INTO `jbpm_transition` VALUES ('9', 'node_9-起草', '2', '8', '14', '0');
INSERT INTO `jbpm_transition` VALUES ('10', 'node_5-区县级管理员审核', '2', '10', '11', '0');
INSERT INTO `jbpm_transition` VALUES ('11', 'node_6-市级管理员审核', '2', '10', '12', '1');
INSERT INTO `jbpm_transition` VALUES ('12', 'node_7-省级管理员审核', '2', '10', '13', '2');
INSERT INTO `jbpm_transition` VALUES ('13', 'node_6-市级管理员审核', '2', '11', '12', '0');
INSERT INTO `jbpm_transition` VALUES ('14', 'node_7-省级管理员审核', '2', '12', '13', '0');
INSERT INTO `jbpm_transition` VALUES ('15', 'node_2-办结', '2', '13', '9', '0');
INSERT INTO `jbpm_transition` VALUES ('16', 'node_4-分级策略', '2', '14', '10', '0');
INSERT INTO `jbpm_transition` VALUES ('17', 'node_3-起草', '3', '15', '17', '0');
INSERT INTO `jbpm_transition` VALUES ('18', 'node_7-分级策略', '3', '17', '21', '0');
INSERT INTO `jbpm_transition` VALUES ('19', 'node_5-市级管理员审核', '3', '18', '19', '0');
INSERT INTO `jbpm_transition` VALUES ('20', 'node_6-省级管理员审核', '3', '19', '20', '0');
INSERT INTO `jbpm_transition` VALUES ('21', 'node_2-办结', '3', '20', '16', '0');
INSERT INTO `jbpm_transition` VALUES ('22', 'node_5-市级管理员审核', '3', '21', '19', '0');
INSERT INTO `jbpm_transition` VALUES ('23', 'node_6-省级管理员审核', '3', '21', '20', '1');
INSERT INTO `jbpm_transition` VALUES ('24', 'node_4-区县级管理员审核', '3', '21', '18', '2');
INSERT INTO `jbpm_transition` VALUES ('25', 'node_3-起草', '4', '22', '24', '0');
INSERT INTO `jbpm_transition` VALUES ('26', 'node_5-分级策略', '4', '24', '26', '0');
INSERT INTO `jbpm_transition` VALUES ('27', 'node_6-市级管理员审核', '4', '25', '27', '0');
INSERT INTO `jbpm_transition` VALUES ('28', 'node_4-区县级管理员审核', '4', '26', '25', '0');
INSERT INTO `jbpm_transition` VALUES ('29', 'node_6-市级管理员审核', '4', '26', '27', '1');
INSERT INTO `jbpm_transition` VALUES ('30', 'node_7-省级管理员审核', '4', '26', '28', '2');
INSERT INTO `jbpm_transition` VALUES ('31', 'node_7-省级管理员审核', '4', '27', '28', '0');
INSERT INTO `jbpm_transition` VALUES ('32', 'node_2-办结', '4', '28', '23', '0');
INSERT INTO `jbpm_transition` VALUES ('33', 'node_3-起草', '5', '29', '31', '0');
INSERT INTO `jbpm_transition` VALUES ('34', 'node_7-分级策略', '5', '31', '35', '0');
INSERT INTO `jbpm_transition` VALUES ('35', 'node_5-市级管理员审核', '5', '32', '33', '0');
INSERT INTO `jbpm_transition` VALUES ('36', 'node_6-省级管理员审核', '5', '33', '34', '0');
INSERT INTO `jbpm_transition` VALUES ('37', 'node_2-办结', '5', '34', '30', '0');
INSERT INTO `jbpm_transition` VALUES ('38', 'node_4-区县级管理员审核', '5', '35', '32', '0');
INSERT INTO `jbpm_transition` VALUES ('39', 'node_5-市级管理员审核', '5', '35', '33', '1');
INSERT INTO `jbpm_transition` VALUES ('40', 'node_6-省级管理员审核', '5', '35', '34', '2');
INSERT INTO `jbpm_transition` VALUES ('41', 'node_3-起草', '6', '36', '38', '0');
INSERT INTO `jbpm_transition` VALUES ('42', 'node_7-分级策略', '6', '38', '42', '0');
INSERT INTO `jbpm_transition` VALUES ('43', 'node_5-市级管理员审核', '6', '39', '40', '0');
INSERT INTO `jbpm_transition` VALUES ('44', 'node_6-省级管理员审核', '6', '40', '41', '0');
INSERT INTO `jbpm_transition` VALUES ('45', 'node_2-办结', '6', '41', '37', '0');
INSERT INTO `jbpm_transition` VALUES ('46', 'node_4-区县级领导审核', '6', '42', '39', '0');
INSERT INTO `jbpm_transition` VALUES ('47', 'node_5-市级管理员审核', '6', '42', '40', '1');
INSERT INTO `jbpm_transition` VALUES ('48', 'node_6-省级管理员审核', '6', '42', '41', '2');
INSERT INTO `jbpm_transition` VALUES ('49', 'node_3-起草', '7', '43', '45', '0');
INSERT INTO `jbpm_transition` VALUES ('50', 'node_4-主管警员审核', '7', '45', '46', '0');
INSERT INTO `jbpm_transition` VALUES ('51', 'node_5-分级策略', '7', '46', '47', '0');
INSERT INTO `jbpm_transition` VALUES ('52', 'node_6-区县级管理员审核', '7', '47', '48', '0');
INSERT INTO `jbpm_transition` VALUES ('53', 'node_7-市级管理员审核', '7', '47', '49', '1');
INSERT INTO `jbpm_transition` VALUES ('54', 'node_8-省级管理员审核', '7', '47', '50', '2');
INSERT INTO `jbpm_transition` VALUES ('55', 'node_7-市级管理员审核', '7', '48', '49', '0');
INSERT INTO `jbpm_transition` VALUES ('56', 'node_8-省级管理员审核', '7', '49', '50', '0');
INSERT INTO `jbpm_transition` VALUES ('57', 'node_2-办结', '7', '50', '44', '0');
INSERT INTO `jbpm_transition` VALUES ('58', 'node_3-起草', '8', '51', '53', '0');
INSERT INTO `jbpm_transition` VALUES ('59', 'node_7-分级策略', '8', '53', '57', '0');
INSERT INTO `jbpm_transition` VALUES ('60', 'node_5-市级管理员审核', '8', '54', '55', '0');
INSERT INTO `jbpm_transition` VALUES ('61', 'node_6-省级管理员审核', '8', '55', '56', '0');
INSERT INTO `jbpm_transition` VALUES ('62', 'node_2-办结', '8', '56', '52', '0');
INSERT INTO `jbpm_transition` VALUES ('63', 'node_4-区县级领导审核', '8', '57', '54', '0');
INSERT INTO `jbpm_transition` VALUES ('64', 'node_5-市级管理员审核', '8', '57', '55', '1');
INSERT INTO `jbpm_transition` VALUES ('65', 'node_6-省级管理员审核', '8', '57', '56', '2');
INSERT INTO `jbpm_transition` VALUES ('66', 'node_2-起草', '9', '58', '59', '0');
INSERT INTO `jbpm_transition` VALUES ('67', 'node_3-node_3', '9', '59', '60', '0');
INSERT INTO `jbpm_transition` VALUES ('68', 'node_4-区县级管理员审核', '9', '60', '61', '0');
INSERT INTO `jbpm_transition` VALUES ('69', 'node_5-市级管理员审核', '9', '60', '62', '1');
INSERT INTO `jbpm_transition` VALUES ('70', 'node_6-省级管理员审核', '9', '60', '63', '2');
INSERT INTO `jbpm_transition` VALUES ('71', 'node_7-局级管理员审核', '9', '60', '64', '3');
INSERT INTO `jbpm_transition` VALUES ('72', 'node_8-部级用户管理员', '9', '60', '65', '4');
INSERT INTO `jbpm_transition` VALUES ('73', 'node_5-市级管理员审核', '9', '61', '62', '0');
INSERT INTO `jbpm_transition` VALUES ('74', 'node_6-省级管理员审核', '9', '62', '63', '0');
INSERT INTO `jbpm_transition` VALUES ('75', 'node_9-办结', '9', '63', '66', '0');
INSERT INTO `jbpm_transition` VALUES ('76', 'node_8-部级用户管理员', '9', '64', '65', '0');
INSERT INTO `jbpm_transition` VALUES ('77', 'node_9-办结', '9', '65', '66', '0');
INSERT INTO `jbpm_transition` VALUES ('78', 'node_2-起草', '10', '67', '68', '0');
INSERT INTO `jbpm_transition` VALUES ('79', 'node_3-分级策略', '10', '68', '69', '0');
INSERT INTO `jbpm_transition` VALUES ('80', 'node_4-区县级管理员审核', '10', '69', '70', '0');
INSERT INTO `jbpm_transition` VALUES ('81', 'node_5-市级管理员审核', '10', '69', '71', '1');
INSERT INTO `jbpm_transition` VALUES ('82', 'node_6-省级管理员审核', '10', '69', '72', '2');
INSERT INTO `jbpm_transition` VALUES ('83', 'node_5-市级管理员审核', '10', '70', '71', '0');
INSERT INTO `jbpm_transition` VALUES ('84', 'node_6-省级管理员审核', '10', '71', '72', '0');
INSERT INTO `jbpm_transition` VALUES ('85', 'node_7-办结', '10', '72', '73', '0');
INSERT INTO `jbpm_transition` VALUES ('86', 'node_2-起草', '11', '74', '75', '0');
INSERT INTO `jbpm_transition` VALUES ('87', 'node_3-主管警员', '11', '75', '76', '0');
INSERT INTO `jbpm_transition` VALUES ('88', 'node_4-node_4', '11', '76', '77', '0');
INSERT INTO `jbpm_transition` VALUES ('89', 'node_5-区县级管理员审核', '11', '77', '78', '0');
INSERT INTO `jbpm_transition` VALUES ('90', 'node_6-市级管理员审核', '11', '77', '79', '1');
INSERT INTO `jbpm_transition` VALUES ('91', 'node_7-省级管理员审核', '11', '77', '80', '2');
INSERT INTO `jbpm_transition` VALUES ('92', 'node_6-市级管理员审核', '11', '78', '79', '0');
INSERT INTO `jbpm_transition` VALUES ('93', 'node_7-省级管理员审核', '11', '79', '80', '0');
INSERT INTO `jbpm_transition` VALUES ('94', 'node_8-办结', '11', '80', '81', '0');
INSERT INTO `jbpm_transition` VALUES ('95', 'node_2-起草', '12', '82', '83', '0');
INSERT INTO `jbpm_transition` VALUES ('96', 'node_3-主管警员', '12', '83', '84', '0');
INSERT INTO `jbpm_transition` VALUES ('97', 'node_4-分级策略', '12', '84', '85', '0');
INSERT INTO `jbpm_transition` VALUES ('98', 'node_5-区县管理员审核', '12', '85', '86', '0');
INSERT INTO `jbpm_transition` VALUES ('99', 'node_6-市级管理员审核', '12', '85', '87', '1');
INSERT INTO `jbpm_transition` VALUES ('100', 'node_7-省级管理员审核', '12', '85', '88', '2');
INSERT INTO `jbpm_transition` VALUES ('101', 'node_6-市级管理员审核', '12', '86', '87', '0');
INSERT INTO `jbpm_transition` VALUES ('102', 'node_7-省级管理员审核', '12', '87', '88', '0');
INSERT INTO `jbpm_transition` VALUES ('103', 'node_8-办结', '12', '88', '89', '0');
INSERT INTO `jbpm_transition` VALUES ('104', 'node_2-起草', '13', '90', '91', '0');
INSERT INTO `jbpm_transition` VALUES ('105', 'node_3-主管警员', '13', '91', '92', '0');
INSERT INTO `jbpm_transition` VALUES ('106', 'node_4-分级策略', '13', '92', '93', '0');
INSERT INTO `jbpm_transition` VALUES ('107', 'node_5-区县级管理员审核', '13', '93', '94', '0');
INSERT INTO `jbpm_transition` VALUES ('108', 'node_6-市级管理员审核', '13', '93', '95', '1');
INSERT INTO `jbpm_transition` VALUES ('109', 'node_7-省级管理员审核', '13', '93', '96', '2');
INSERT INTO `jbpm_transition` VALUES ('110', 'node_6-市级管理员审核', '13', '94', '95', '0');
INSERT INTO `jbpm_transition` VALUES ('111', 'node_7-省级管理员审核', '13', '95', '96', '0');
INSERT INTO `jbpm_transition` VALUES ('112', 'node_8-办结', '13', '96', '97', '0');
INSERT INTO `jbpm_transition` VALUES ('113', 'node_2-起草', '14', '98', '99', '0');
INSERT INTO `jbpm_transition` VALUES ('114', 'node_3-主管警员审核', '14', '99', '100', '0');
INSERT INTO `jbpm_transition` VALUES ('115', 'node_4-分组策略', '14', '100', '101', '0');
INSERT INTO `jbpm_transition` VALUES ('116', 'node_5-区县级管理员审核', '14', '101', '102', '0');
INSERT INTO `jbpm_transition` VALUES ('117', 'node_6-市级管理员审核', '14', '101', '103', '1');
INSERT INTO `jbpm_transition` VALUES ('118', 'node_7-省级管理员审核', '14', '101', '104', '2');
INSERT INTO `jbpm_transition` VALUES ('119', 'node_6-市级管理员审核', '14', '102', '103', '0');
INSERT INTO `jbpm_transition` VALUES ('120', 'node_7-省级管理员审核', '14', '103', '104', '0');
INSERT INTO `jbpm_transition` VALUES ('121', 'node_8-办结', '14', '104', '105', '0');
INSERT INTO `jbpm_transition` VALUES ('122', 'node_2-起草', '15', '106', '107', '0');
INSERT INTO `jbpm_transition` VALUES ('123', 'node_3-主管警员审核', '15', '107', '108', '0');
INSERT INTO `jbpm_transition` VALUES ('124', 'node_4-分级策略', '15', '108', '109', '0');
INSERT INTO `jbpm_transition` VALUES ('125', 'node_5-区县级管理员审核', '15', '109', '110', '0');
INSERT INTO `jbpm_transition` VALUES ('126', 'node_6-市级管理员审核', '15', '109', '111', '1');
INSERT INTO `jbpm_transition` VALUES ('127', 'node_7-省级管理员审核', '15', '109', '112', '2');
INSERT INTO `jbpm_transition` VALUES ('128', 'node_6-市级管理员审核', '15', '110', '111', '0');
INSERT INTO `jbpm_transition` VALUES ('129', 'node_7-省级管理员审核', '15', '111', '112', '0');
INSERT INTO `jbpm_transition` VALUES ('130', 'node_8-办结', '15', '112', '113', '0');
INSERT INTO `jbpm_transition` VALUES ('131', 'node_2-起草', '16', '114', '115', '0');
INSERT INTO `jbpm_transition` VALUES ('132', 'node_3-主管警员审核', '16', '115', '116', '0');
INSERT INTO `jbpm_transition` VALUES ('133', 'node_4-分级策略', '16', '116', '117', '0');
INSERT INTO `jbpm_transition` VALUES ('134', 'node_5-区县级管理员审核', '16', '117', '118', '0');
INSERT INTO `jbpm_transition` VALUES ('135', 'node_6-市级管理员审核', '16', '117', '119', '1');
INSERT INTO `jbpm_transition` VALUES ('136', 'node_7-省级管理员审核', '16', '117', '120', '2');
INSERT INTO `jbpm_transition` VALUES ('137', 'node_6-市级管理员审核', '16', '118', '119', '0');
INSERT INTO `jbpm_transition` VALUES ('138', 'node_7-省级管理员审核', '16', '119', '120', '0');
INSERT INTO `jbpm_transition` VALUES ('139', 'node_8-办结', '16', '120', '121', '0');
INSERT INTO `jbpm_transition` VALUES ('140', 'node_3-起草', '17', '122', '124', '0');
INSERT INTO `jbpm_transition` VALUES ('141', 'node_4-主管警员', '17', '124', '125', '0');
INSERT INTO `jbpm_transition` VALUES ('142', 'node_5-分级策略', '17', '125', '126', '0');
INSERT INTO `jbpm_transition` VALUES ('143', 'node_6-区县级领导审核', '17', '126', '127', '0');
INSERT INTO `jbpm_transition` VALUES ('144', 'node_7-市级管理员审核', '17', '126', '128', '1');
INSERT INTO `jbpm_transition` VALUES ('145', 'node_8-省级管理员审核', '17', '126', '129', '2');
INSERT INTO `jbpm_transition` VALUES ('146', 'node_7-市级管理员审核', '17', '127', '128', '0');
INSERT INTO `jbpm_transition` VALUES ('147', 'node_8-省级管理员审核', '17', '128', '129', '0');
INSERT INTO `jbpm_transition` VALUES ('148', 'node_2-办结', '17', '129', '123', '0');
INSERT INTO `jbpm_transition` VALUES ('149', 'node_2-起草', '18', '130', '131', '0');
INSERT INTO `jbpm_transition` VALUES ('150', 'node_4-用户身份判定', '18', '131', '133', '0');
INSERT INTO `jbpm_transition` VALUES ('151', 'node_5-办结', '18', '132', '134', '0');
INSERT INTO `jbpm_transition` VALUES ('152', 'node_3-主管警员审核', '18', '133', '132', '0');
INSERT INTO `jbpm_transition` VALUES ('153', 'node_5-办结', '18', '133', '134', '1');
INSERT INTO `jbpm_transition` VALUES ('154', 'node_3-起草', '19', '135', '137', '0');
INSERT INTO `jbpm_transition` VALUES ('155', 'node_2-办结', '19', '137', '136', '0');
INSERT INTO `jbpm_transition` VALUES ('156', 'node_3-起草', '20', '138', '140', '0');
INSERT INTO `jbpm_transition` VALUES ('157', 'node_4-所在部门审核', '20', '140', '141', '0');
INSERT INTO `jbpm_transition` VALUES ('158', 'node_5-政工部门审核', '20', '141', '142', '0');
INSERT INTO `jbpm_transition` VALUES ('159', 'node_6-单位领导审核', '20', '142', '143', '0');
INSERT INTO `jbpm_transition` VALUES ('160', 'node_2-办结', '20', '143', '139', '0');
INSERT INTO `jbpm_transition` VALUES ('161', 'node_3-起草', '21', '144', '146', '0');
INSERT INTO `jbpm_transition` VALUES ('162', 'node_4-所在部门审核', '21', '146', '147', '0');
INSERT INTO `jbpm_transition` VALUES ('163', 'node_5-政工部门审核', '21', '147', '148', '0');
INSERT INTO `jbpm_transition` VALUES ('164', 'node_6-单位领导', '21', '148', '149', '0');
INSERT INTO `jbpm_transition` VALUES ('165', 'node_2-办结', '21', '149', '145', '0');
INSERT INTO `jbpm_transition` VALUES ('166', 'node_3-起草', '22', '150', '152', '0');
INSERT INTO `jbpm_transition` VALUES ('167', 'node_6-用户身份判定', '22', '152', '154', '0');
INSERT INTO `jbpm_transition` VALUES ('168', 'node_2-办结', '22', '153', '151', '0');
INSERT INTO `jbpm_transition` VALUES ('169', 'node_4-主管警员审核', '22', '154', '153', '0');
INSERT INTO `jbpm_transition` VALUES ('170', 'node_2-办结', '22', '154', '151', '1');
INSERT INTO `jbpm_transition` VALUES ('171', 'node_3-起草', '23', '155', '157', '0');
INSERT INTO `jbpm_transition` VALUES ('172', 'node_4-所在部门审核', '23', '157', '158', '0');
INSERT INTO `jbpm_transition` VALUES ('173', 'node_5-政工部门审核', '23', '158', '159', '0');
INSERT INTO `jbpm_transition` VALUES ('174', 'node_6-单位领导审核', '23', '159', '160', '0');
INSERT INTO `jbpm_transition` VALUES ('175', 'node_2-办结', '23', '160', '156', '0');
INSERT INTO `jbpm_transition` VALUES ('176', 'node_3-起草', '24', '161', '163', '0');
INSERT INTO `jbpm_transition` VALUES ('177', 'node_4-所在部门审核', '24', '163', '164', '0');
INSERT INTO `jbpm_transition` VALUES ('178', 'node_5-政工部门审核', '24', '164', '165', '0');
INSERT INTO `jbpm_transition` VALUES ('179', 'node_6-单位领导审核', '24', '165', '166', '0');
INSERT INTO `jbpm_transition` VALUES ('180', 'node_2-办结', '24', '166', '162', '0');
INSERT INTO `jbpm_transition` VALUES ('181', 'node_3-起草', '25', '167', '169', '0');
INSERT INTO `jbpm_transition` VALUES ('182', 'node_2-办结', '25', '169', '168', '0');
INSERT INTO `jbpm_transition` VALUES ('183', 'node_3-起草', '26', '170', '172', '0');
INSERT INTO `jbpm_transition` VALUES ('184', 'node_4-所在部门审核', '26', '172', '173', '0');
INSERT INTO `jbpm_transition` VALUES ('185', 'node_5-政工部门审核', '26', '173', '174', '0');
INSERT INTO `jbpm_transition` VALUES ('186', 'node_6-单位领导审核', '26', '174', '175', '0');
INSERT INTO `jbpm_transition` VALUES ('187', 'node_2-办结', '26', '175', '171', '0');
INSERT INTO `jbpm_transition` VALUES ('188', 'node_3-起草', '27', '176', '178', '0');
INSERT INTO `jbpm_transition` VALUES ('189', 'node_2-办结', '27', '178', '177', '0');
INSERT INTO `jbpm_transition` VALUES ('190', 'node_3-起草', '28', '179', '181', '0');
INSERT INTO `jbpm_transition` VALUES ('191', 'node_4-用户身份判定', '28', '181', '182', '0');
INSERT INTO `jbpm_transition` VALUES ('192', 'node_5-主管警员审核', '28', '182', '183', '0');
INSERT INTO `jbpm_transition` VALUES ('193', 'node_6-所在部门审核', '28', '182', '184', '1');
INSERT INTO `jbpm_transition` VALUES ('194', 'node_6-所在部门审核', '28', '183', '184', '0');
INSERT INTO `jbpm_transition` VALUES ('195', 'node_7-政工部门审核', '28', '184', '185', '0');
INSERT INTO `jbpm_transition` VALUES ('196', 'node_8-单位领导审核', '28', '185', '186', '0');
INSERT INTO `jbpm_transition` VALUES ('197', 'node_2-办结', '28', '186', '180', '0');
INSERT INTO `jbpm_transition` VALUES ('198', 'node_3-起草', '29', '187', '189', '0');
INSERT INTO `jbpm_transition` VALUES ('199', 'node_5-用户身份判定', '29', '189', '191', '0');
INSERT INTO `jbpm_transition` VALUES ('200', 'node_6-所在部门审核', '29', '190', '192', '0');
INSERT INTO `jbpm_transition` VALUES ('201', 'node_4-主管警员审核', '29', '191', '190', '0');
INSERT INTO `jbpm_transition` VALUES ('202', 'node_6-所在部门审核', '29', '191', '192', '1');
INSERT INTO `jbpm_transition` VALUES ('203', 'node_7-政工部门审核', '29', '192', '193', '0');
INSERT INTO `jbpm_transition` VALUES ('204', 'node_8-单位领导审核', '29', '193', '194', '0');
INSERT INTO `jbpm_transition` VALUES ('205', 'node_2-办结', '29', '194', '188', '0');
INSERT INTO `jbpm_transition` VALUES ('206', 'node_3-起草', '30', '195', '197', '0');
INSERT INTO `jbpm_transition` VALUES ('207', 'node_4-用户身份判定', '30', '197', '198', '0');
INSERT INTO `jbpm_transition` VALUES ('208', 'node_5-主管警员审核', '30', '198', '199', '0');
INSERT INTO `jbpm_transition` VALUES ('209', 'node_6-所在部门审核', '30', '198', '200', '1');
INSERT INTO `jbpm_transition` VALUES ('210', 'node_6-所在部门审核', '30', '199', '200', '0');
INSERT INTO `jbpm_transition` VALUES ('211', 'node_7-政工部门审核', '30', '200', '201', '0');
INSERT INTO `jbpm_transition` VALUES ('212', 'node_8-单位领导审核', '30', '201', '202', '0');
INSERT INTO `jbpm_transition` VALUES ('213', 'node_2-办结', '30', '202', '196', '0');
INSERT INTO `jbpm_transition` VALUES ('214', 'node_3-起草', '31', '203', '205', '0');
INSERT INTO `jbpm_transition` VALUES ('215', 'node_4-用户身份判定', '31', '205', '206', '0');
INSERT INTO `jbpm_transition` VALUES ('216', 'node_5-主管警员审核', '31', '206', '207', '0');
INSERT INTO `jbpm_transition` VALUES ('217', 'node_2-办结', '31', '206', '204', '1');
INSERT INTO `jbpm_transition` VALUES ('218', 'node_2-办结', '31', '207', '204', '0');
INSERT INTO `jbpm_transition` VALUES ('219', 'node_3-起草', '32', '208', '210', '0');
INSERT INTO `jbpm_transition` VALUES ('220', 'node_4-用户身份判定', '32', '210', '211', '0');
INSERT INTO `jbpm_transition` VALUES ('221', 'node_5-主管警员审核', '32', '211', '212', '0');
INSERT INTO `jbpm_transition` VALUES ('222', 'node_6-所在部门审核', '32', '211', '213', '1');
INSERT INTO `jbpm_transition` VALUES ('223', 'node_6-所在部门审核', '32', '212', '213', '0');
INSERT INTO `jbpm_transition` VALUES ('224', 'node_7-政工部门审核', '32', '213', '214', '0');
INSERT INTO `jbpm_transition` VALUES ('225', 'node_8-单位领导审核', '32', '214', '215', '0');
INSERT INTO `jbpm_transition` VALUES ('226', 'node_2-办结', '32', '215', '209', '0');
INSERT INTO `jbpm_transition` VALUES ('227', 'node_3-起草', '33', '216', '218', '0');
INSERT INTO `jbpm_transition` VALUES ('228', 'node_4-用户身份判定', '33', '218', '219', '0');
INSERT INTO `jbpm_transition` VALUES ('229', 'node_5-主管警员审核', '33', '219', '220', '0');
INSERT INTO `jbpm_transition` VALUES ('230', 'node_2-办结', '33', '219', '217', '1');
INSERT INTO `jbpm_transition` VALUES ('231', 'node_2-办结', '33', '220', '217', '0');
INSERT INTO `jbpm_transition` VALUES ('232', 'node_3-起草', '34', '221', '223', '0');
INSERT INTO `jbpm_transition` VALUES ('233', 'node_4-所在单位审核', '34', '223', '224', '0');
INSERT INTO `jbpm_transition` VALUES ('234', 'node_5-政工部门审核', '34', '224', '225', '0');
INSERT INTO `jbpm_transition` VALUES ('235', 'node_6-单位领导审核', '34', '225', '226', '0');
INSERT INTO `jbpm_transition` VALUES ('236', 'node_2-办结', '34', '226', '222', '0');
INSERT INTO `jbpm_transition` VALUES ('237', 'node_3-起草', '35', '227', '229', '0');
INSERT INTO `jbpm_transition` VALUES ('238', 'node_4-政工部门审核', '35', '229', '230', '0');
INSERT INTO `jbpm_transition` VALUES ('239', 'node_5-单位领导审核', '35', '230', '231', '0');
INSERT INTO `jbpm_transition` VALUES ('240', 'node_2-办结', '35', '231', '228', '0');
INSERT INTO `jbpm_transition` VALUES ('241', 'node_3-起草', '36', '232', '234', '0');
INSERT INTO `jbpm_transition` VALUES ('242', 'node_4-政工部门审核', '36', '234', '235', '0');
INSERT INTO `jbpm_transition` VALUES ('243', 'node_5-单位领导审核', '36', '235', '236', '0');
INSERT INTO `jbpm_transition` VALUES ('244', 'node_2-办结', '36', '236', '233', '0');
INSERT INTO `jbpm_transition` VALUES ('245', 'node_3-起草', '37', '237', '239', '0');
INSERT INTO `jbpm_transition` VALUES ('246', 'node_4-政工部门审核', '37', '239', '240', '0');
INSERT INTO `jbpm_transition` VALUES ('247', 'node_5-部门领导审核', '37', '240', '241', '0');
INSERT INTO `jbpm_transition` VALUES ('248', 'node_2-办结', '37', '241', '238', '0');
INSERT INTO `jbpm_transition` VALUES ('249', 'node_3-起草', '38', '242', '244', '0');
INSERT INTO `jbpm_transition` VALUES ('250', 'node_4-用户身份判定', '38', '244', '245', '0');
INSERT INTO `jbpm_transition` VALUES ('251', 'node_5-主管警员审核', '38', '245', '246', '0');
INSERT INTO `jbpm_transition` VALUES ('252', 'node_6-所在部门审核', '38', '245', '247', '1');
INSERT INTO `jbpm_transition` VALUES ('253', 'node_6-所在部门审核', '38', '246', '247', '0');
INSERT INTO `jbpm_transition` VALUES ('254', 'node_7-政工部门审核', '38', '247', '248', '0');
INSERT INTO `jbpm_transition` VALUES ('255', 'node_8-单位领导审核', '38', '248', '249', '0');
INSERT INTO `jbpm_transition` VALUES ('256', 'node_2-办结', '38', '249', '243', '0');
INSERT INTO `jbpm_transition` VALUES ('257', 'node_3-起草', '39', '250', '252', '0');
INSERT INTO `jbpm_transition` VALUES ('258', 'node_4-所在部门审核', '39', '252', '253', '0');
INSERT INTO `jbpm_transition` VALUES ('259', 'node_5-政工部门审核', '39', '253', '254', '0');
INSERT INTO `jbpm_transition` VALUES ('260', 'node_6-单位领导审核', '39', '254', '255', '0');
INSERT INTO `jbpm_transition` VALUES ('261', 'node_2-办结', '39', '255', '251', '0');
INSERT INTO `jbpm_transition` VALUES ('262', 'node_3-起草', '40', '256', '258', '0');
INSERT INTO `jbpm_transition` VALUES ('263', 'node_4-所在部门审核', '40', '258', '259', '0');
INSERT INTO `jbpm_transition` VALUES ('264', 'node_5-政工部门审核', '40', '259', '260', '0');
INSERT INTO `jbpm_transition` VALUES ('265', 'node_6-单位领导审核', '40', '260', '261', '0');
INSERT INTO `jbpm_transition` VALUES ('266', 'node_2-办结', '40', '261', '257', '0');
INSERT INTO `jbpm_transition` VALUES ('267', 'node_3-起草', '41', '262', '264', '0');
INSERT INTO `jbpm_transition` VALUES ('268', 'node_4-所在部门审核', '41', '264', '265', '0');
INSERT INTO `jbpm_transition` VALUES ('269', 'node_5-政工部门审核', '41', '265', '266', '0');
INSERT INTO `jbpm_transition` VALUES ('270', 'node_6-单位领导审核', '41', '266', '267', '0');
INSERT INTO `jbpm_transition` VALUES ('271', 'node_2-办结', '41', '267', '263', '0');
INSERT INTO `jbpm_transition` VALUES ('272', 'node_3-起草', '42', '268', '270', '0');
INSERT INTO `jbpm_transition` VALUES ('273', 'node_5-用户身份判定', '42', '270', '272', '0');
INSERT INTO `jbpm_transition` VALUES ('274', 'node_6-所在部门审核', '42', '271', '273', '0');
INSERT INTO `jbpm_transition` VALUES ('275', 'node_4-主管警员审核', '42', '272', '271', '0');
INSERT INTO `jbpm_transition` VALUES ('276', 'node_6-所在部门审核', '42', '272', '273', '1');
INSERT INTO `jbpm_transition` VALUES ('277', 'node_7-政工部门审核', '42', '273', '274', '0');
INSERT INTO `jbpm_transition` VALUES ('278', 'node_8-单位领导审核', '42', '274', '275', '0');
INSERT INTO `jbpm_transition` VALUES ('279', 'node_2-办结', '42', '275', '269', '0');

-- ----------------------------
-- Table structure for jbpm_variableaccess
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_variableaccess`;
CREATE TABLE `jbpm_variableaccess` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VARIABLENAME_` varchar(255) DEFAULT NULL,
  `ACCESS_` varchar(255) DEFAULT NULL,
  `MAPPEDNAME_` varchar(255) DEFAULT NULL,
  `PROCESSSTATE_` bigint(20) DEFAULT NULL,
  `TASKCONTROLLER_` bigint(20) DEFAULT NULL,
  `INDEX_` int(11) DEFAULT NULL,
  `SCRIPT_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_VARACC_PROCST` (`PROCESSSTATE_`) USING BTREE,
  KEY `FK_VARACC_SCRIPT` (`SCRIPT_`) USING BTREE,
  KEY `FK_VARACC_TSKCTRL` (`TASKCONTROLLER_`) USING BTREE,
  CONSTRAINT `jbpm_variableaccess_ibfk_1` FOREIGN KEY (`TASKCONTROLLER_`) REFERENCES `jbpm_taskcontroller` (`ID_`),
  CONSTRAINT `jbpm_variableaccess_ibfk_2` FOREIGN KEY (`PROCESSSTATE_`) REFERENCES `jbpm_node` (`ID_`),
  CONSTRAINT `jbpm_variableaccess_ibfk_3` FOREIGN KEY (`SCRIPT_`) REFERENCES `jbpm_action` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_variableaccess
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm_variableinstance
-- ----------------------------
DROP TABLE IF EXISTS `jbpm_variableinstance`;
CREATE TABLE `jbpm_variableinstance` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CLASS_` char(1) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `CONVERTER_` char(1) DEFAULT NULL,
  `TOKEN_` bigint(20) DEFAULT NULL,
  `TOKENVARIABLEMAP_` bigint(20) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `BYTEARRAYVALUE_` bigint(20) DEFAULT NULL,
  `DATEVALUE_` datetime DEFAULT NULL,
  `DOUBLEVALUE_` double DEFAULT NULL,
  `LONGIDCLASS_` varchar(255) DEFAULT NULL,
  `LONGVALUE_` bigint(20) DEFAULT NULL,
  `STRINGIDCLASS_` varchar(255) DEFAULT NULL,
  `STRINGVALUE_` varchar(255) DEFAULT NULL,
  `TASKINSTANCE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `FK_VARINST_PRCINST` (`PROCESSINSTANCE_`) USING BTREE,
  KEY `FK_VARINST_TKVARMP` (`TOKENVARIABLEMAP_`) USING BTREE,
  KEY `FK_VARINST_TK` (`TOKEN_`) USING BTREE,
  KEY `FK_BYTEINST_ARRAY` (`BYTEARRAYVALUE_`) USING BTREE,
  KEY `FK_VAR_TSKINST` (`TASKINSTANCE_`) USING BTREE,
  CONSTRAINT `jbpm_variableinstance_ibfk_1` FOREIGN KEY (`TASKINSTANCE_`) REFERENCES `jbpm_taskinstance` (`ID_`),
  CONSTRAINT `jbpm_variableinstance_ibfk_2` FOREIGN KEY (`BYTEARRAYVALUE_`) REFERENCES `jbpm_bytearray` (`ID_`),
  CONSTRAINT `jbpm_variableinstance_ibfk_3` FOREIGN KEY (`PROCESSINSTANCE_`) REFERENCES `jbpm_processinstance` (`ID_`),
  CONSTRAINT `jbpm_variableinstance_ibfk_4` FOREIGN KEY (`TOKEN_`) REFERENCES `jbpm_token` (`ID_`),
  CONSTRAINT `jbpm_variableinstance_ibfk_5` FOREIGN KEY (`TOKENVARIABLEMAP_`) REFERENCES `jbpm_tokenvariablemap` (`ID_`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jbpm_variableinstance
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_admins
-- ----------------------------
DROP TABLE IF EXISTS `jpt_admins`;
CREATE TABLE `jpt_admins` (
  `ID` char(32) NOT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `ORGID` char(32) DEFAULT NULL,
  `ORGNAME` varchar(120) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `IDENTITYTYPE` int(11) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `PERMISSIONS` bigint(20) DEFAULT NULL,
  `TEMPLATEID` char(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_admins
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_admintemplate
-- ----------------------------
DROP TABLE IF EXISTS `jpt_admintemplate`;
CREATE TABLE `jpt_admintemplate` (
  `id` varchar(32) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `identitytype` varchar(120) DEFAULT NULL,
  `permissions` varchar(120) DEFAULT NULL,
  `createUserId` varchar(32) DEFAULT NULL,
  `createUserName` varchar(120) DEFAULT NULL,
  `createTime` varchar(50) DEFAULT NULL,
  `code` varchar(12) DEFAULT NULL,
  `province` char(2) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `subordinate` char(2) DEFAULT NULL,
  `subordinate2` char(2) DEFAULT NULL,
  `subordinate3` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jpt_admintemplate_6` (`province`,`city`,`country`,`subordinate`,`subordinate2`,`subordinate3`) USING BTREE,
  KEY `IX_jpt_admintemplate_name` (`name`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_admintemplate
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_applogin
-- ----------------------------
DROP TABLE IF EXISTS `jpt_applogin`;
CREATE TABLE `jpt_applogin` (
  `userId` char(32) NOT NULL,
  `dn` varchar(600) DEFAULT NULL,
  `updateTime` char(24) DEFAULT NULL,
  `year` char(4) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `IX_accessTime_updateTime` (`updateTime`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_applogin
-- ----------------------------
INSERT INTO `jpt_applogin` VALUES ('ffffffffffffffffffffffffffffffff', null, '2018-03-20 10:55:57', '2018');

-- ----------------------------
-- Table structure for jpt_applogin_log_2017
-- ----------------------------
DROP TABLE IF EXISTS `jpt_applogin_log_2017`;
CREATE TABLE `jpt_applogin_log_2017` (
  `ID` char(32) NOT NULL COMMENT '主键',
  `LOCALCODE` varchar(6) DEFAULT NULL COMMENT '应用访问的本地码',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用码',
  `IP` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `USERROLECODE` varchar(80) DEFAULT NULL COMMENT '用户角色编码',
  `PRIVILEGECODE` varchar(512) DEFAULT NULL COMMENT '获取的权限码',
  `ISLOCALUSER` int(1) DEFAULT NULL COMMENT '是否为本地用户',
  `ACCESSTIME` char(19) DEFAULT NULL COMMENT '访问时间',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(128) DEFAULT NULL COMMENT '用户名',
  `OPTUSERDN` varchar(2000) DEFAULT NULL COMMENT '用户证件号码',
  `CODE` char(12) DEFAULT NULL COMMENT '组织机构编码',
  `DEPNAME` varchar(256) DEFAULT NULL COMMENT '组织机构名称',
  `POLICECLASS` varchar(255) DEFAULT NULL COMMENT '警种编码',
  `RANK` varchar(255) DEFAULT NULL COMMENT '职级编码',
  `POSTNAME` varchar(255) DEFAULT NULL COMMENT '岗位编码',
  `CHARGE` varchar(255) DEFAULT NULL COMMENT '正副职编码',
  `MINISTRY` varchar(255) DEFAULT NULL COMMENT '外部委编码',
  `CERTROLE` varchar(255) DEFAULT NULL COMMENT '证书类型编码',
  `APPNAME` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态 信任，危险，处置完毕',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  `OPTIONSTATUS` int(11) DEFAULT NULL COMMENT '用户对预警数据操作状态 信任，危险，处置完毕',
  `LOGINMODE` int(2) DEFAULT NULL,
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_APPLOGIN_LOG_2017_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2017_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2017_m` (`MARK`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_applogin_log_2017
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_applogin_log_2018
-- ----------------------------
DROP TABLE IF EXISTS `jpt_applogin_log_2018`;
CREATE TABLE `jpt_applogin_log_2018` (
  `ID` char(32) NOT NULL COMMENT '主键',
  `LOCALCODE` varchar(6) DEFAULT NULL COMMENT '应用访问的本地码',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用码',
  `IP` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `USERROLECODE` varchar(80) DEFAULT NULL COMMENT '用户角色编码',
  `PRIVILEGECODE` varchar(512) DEFAULT NULL COMMENT '获取的权限码',
  `ISLOCALUSER` int(1) DEFAULT NULL COMMENT '是否为本地用户',
  `ACCESSTIME` char(19) DEFAULT NULL COMMENT '访问时间',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(128) DEFAULT NULL COMMENT '用户名',
  `OPTUSERDN` varchar(2000) DEFAULT NULL COMMENT '用户证件号码',
  `CODE` char(12) DEFAULT NULL COMMENT '组织机构编码',
  `DEPNAME` varchar(256) DEFAULT NULL COMMENT '组织机构名称',
  `POLICECLASS` varchar(255) DEFAULT NULL COMMENT '警种编码',
  `RANK` varchar(255) DEFAULT NULL COMMENT '职级编码',
  `POSTNAME` varchar(255) DEFAULT NULL COMMENT '岗位编码',
  `CHARGE` varchar(255) DEFAULT NULL COMMENT '正副职编码',
  `MINISTRY` varchar(255) DEFAULT NULL COMMENT '外部委编码',
  `CERTROLE` varchar(255) DEFAULT NULL COMMENT '证书类型编码',
  `APPNAME` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态 信任，危险，处置完毕',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  `OPTIONSTATUS` int(11) DEFAULT NULL COMMENT '用户对预警数据操作状态 信任，危险，处置完毕',
  `LOGINMODE` int(2) DEFAULT NULL,
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_APPLOGIN_LOG_2018_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2018_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2018_m` (`MARK`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_applogin_log_2018
-- ----------------------------
INSERT INTO `jpt_applogin_log_2018` VALUES ('aa85c8020ba116100944166ca29e66bb', null, '00000001', '127.0.0.1', null, null, '0', '2018-03-20 10:55:13', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, null, null, null, null, null, null, null, null, '警证通', null, null, null, null, null, null, '0', null, '1', '2018', '0', '4', '超级管理员');
INSERT INTO `jpt_applogin_log_2018` VALUES ('d4f7719a2f3ad6a9c4bea14d184d55b5', null, '00000001', '127.0.0.1', null, null, '0', '2018-03-20 10:55:57', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, null, null, null, null, null, null, null, null, '警证通', null, null, null, null, null, null, '0', null, '1', '2018', '0', '4', '超级管理员');

-- ----------------------------
-- Table structure for jpt_applogin_log_2019
-- ----------------------------
DROP TABLE IF EXISTS `jpt_applogin_log_2019`;
CREATE TABLE `jpt_applogin_log_2019` (
  `ID` char(32) NOT NULL COMMENT '主键',
  `LOCALCODE` varchar(6) DEFAULT NULL COMMENT '应用访问的本地码',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用码',
  `IP` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `USERROLECODE` varchar(80) DEFAULT NULL COMMENT '用户角色编码',
  `PRIVILEGECODE` varchar(512) DEFAULT NULL COMMENT '获取的权限码',
  `ISLOCALUSER` int(1) DEFAULT NULL COMMENT '是否为本地用户',
  `ACCESSTIME` char(19) DEFAULT NULL COMMENT '访问时间',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(128) DEFAULT NULL COMMENT '用户名',
  `OPTUSERDN` varchar(2000) DEFAULT NULL COMMENT '用户证件号码',
  `CODE` char(12) DEFAULT NULL COMMENT '组织机构编码',
  `DEPNAME` varchar(256) DEFAULT NULL COMMENT '组织机构名称',
  `POLICECLASS` varchar(255) DEFAULT NULL COMMENT '警种编码',
  `RANK` varchar(255) DEFAULT NULL COMMENT '职级编码',
  `POSTNAME` varchar(255) DEFAULT NULL COMMENT '岗位编码',
  `CHARGE` varchar(255) DEFAULT NULL COMMENT '正副职编码',
  `MINISTRY` varchar(255) DEFAULT NULL COMMENT '外部委编码',
  `CERTROLE` varchar(255) DEFAULT NULL COMMENT '证书类型编码',
  `APPNAME` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态 信任，危险，处置完毕',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  `OPTIONSTATUS` int(11) DEFAULT NULL COMMENT '用户对预警数据操作状态 信任，危险，处置完毕',
  `LOGINMODE` int(2) DEFAULT NULL,
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_APPLOGIN_LOG_2019_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2019_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2019_m` (`MARK`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_applogin_log_2019
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_applogin_log_2020
-- ----------------------------
DROP TABLE IF EXISTS `jpt_applogin_log_2020`;
CREATE TABLE `jpt_applogin_log_2020` (
  `ID` char(32) NOT NULL COMMENT '主键',
  `LOCALCODE` varchar(6) DEFAULT NULL COMMENT '应用访问的本地码',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用码',
  `IP` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `USERROLECODE` varchar(80) DEFAULT NULL COMMENT '用户角色编码',
  `PRIVILEGECODE` varchar(512) DEFAULT NULL COMMENT '获取的权限码',
  `ISLOCALUSER` int(1) DEFAULT NULL COMMENT '是否为本地用户',
  `ACCESSTIME` char(19) DEFAULT NULL COMMENT '访问时间',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(128) DEFAULT NULL COMMENT '用户名',
  `OPTUSERDN` varchar(2000) DEFAULT NULL COMMENT '用户证件号码',
  `CODE` char(12) DEFAULT NULL COMMENT '组织机构编码',
  `DEPNAME` varchar(256) DEFAULT NULL COMMENT '组织机构名称',
  `POLICECLASS` varchar(255) DEFAULT NULL COMMENT '警种编码',
  `RANK` varchar(255) DEFAULT NULL COMMENT '职级编码',
  `POSTNAME` varchar(255) DEFAULT NULL COMMENT '岗位编码',
  `CHARGE` varchar(255) DEFAULT NULL COMMENT '正副职编码',
  `MINISTRY` varchar(255) DEFAULT NULL COMMENT '外部委编码',
  `CERTROLE` varchar(255) DEFAULT NULL COMMENT '证书类型编码',
  `APPNAME` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态 信任，危险，处置完毕',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  `OPTIONSTATUS` int(11) DEFAULT NULL COMMENT '用户对预警数据操作状态 信任，危险，处置完毕',
  `LOGINMODE` int(2) DEFAULT NULL,
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_APPLOGIN_LOG_2020_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2020_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2020_m` (`MARK`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_applogin_log_2020
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_applogin_log_2021
-- ----------------------------
DROP TABLE IF EXISTS `jpt_applogin_log_2021`;
CREATE TABLE `jpt_applogin_log_2021` (
  `ID` char(32) NOT NULL COMMENT '主键',
  `LOCALCODE` varchar(6) DEFAULT NULL COMMENT '应用访问的本地码',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用码',
  `IP` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `USERROLECODE` varchar(80) DEFAULT NULL COMMENT '用户角色编码',
  `PRIVILEGECODE` varchar(512) DEFAULT NULL COMMENT '获取的权限码',
  `ISLOCALUSER` int(1) DEFAULT NULL COMMENT '是否为本地用户',
  `ACCESSTIME` char(19) DEFAULT NULL COMMENT '访问时间',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(128) DEFAULT NULL COMMENT '用户名',
  `OPTUSERDN` varchar(2000) DEFAULT NULL COMMENT '用户证件号码',
  `CODE` char(12) DEFAULT NULL COMMENT '组织机构编码',
  `DEPNAME` varchar(256) DEFAULT NULL COMMENT '组织机构名称',
  `POLICECLASS` varchar(255) DEFAULT NULL COMMENT '警种编码',
  `RANK` varchar(255) DEFAULT NULL COMMENT '职级编码',
  `POSTNAME` varchar(255) DEFAULT NULL COMMENT '岗位编码',
  `CHARGE` varchar(255) DEFAULT NULL COMMENT '正副职编码',
  `MINISTRY` varchar(255) DEFAULT NULL COMMENT '外部委编码',
  `CERTROLE` varchar(255) DEFAULT NULL COMMENT '证书类型编码',
  `APPNAME` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态 信任，危险，处置完毕',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  `OPTIONSTATUS` int(11) DEFAULT NULL COMMENT '用户对预警数据操作状态 信任，危险，处置完毕',
  `LOGINMODE` int(2) DEFAULT NULL,
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_APPLOGIN_LOG_2021_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2021_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2021_m` (`MARK`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_applogin_log_2021
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_applogin_log_2022
-- ----------------------------
DROP TABLE IF EXISTS `jpt_applogin_log_2022`;
CREATE TABLE `jpt_applogin_log_2022` (
  `ID` char(32) NOT NULL COMMENT '主键',
  `LOCALCODE` varchar(6) DEFAULT NULL COMMENT '应用访问的本地码',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用码',
  `IP` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `USERROLECODE` varchar(80) DEFAULT NULL COMMENT '用户角色编码',
  `PRIVILEGECODE` varchar(512) DEFAULT NULL COMMENT '获取的权限码',
  `ISLOCALUSER` int(1) DEFAULT NULL COMMENT '是否为本地用户',
  `ACCESSTIME` char(19) DEFAULT NULL COMMENT '访问时间',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(128) DEFAULT NULL COMMENT '用户名',
  `OPTUSERDN` varchar(2000) DEFAULT NULL COMMENT '用户证件号码',
  `CODE` char(12) DEFAULT NULL COMMENT '组织机构编码',
  `DEPNAME` varchar(256) DEFAULT NULL COMMENT '组织机构名称',
  `POLICECLASS` varchar(255) DEFAULT NULL COMMENT '警种编码',
  `RANK` varchar(255) DEFAULT NULL COMMENT '职级编码',
  `POSTNAME` varchar(255) DEFAULT NULL COMMENT '岗位编码',
  `CHARGE` varchar(255) DEFAULT NULL COMMENT '正副职编码',
  `MINISTRY` varchar(255) DEFAULT NULL COMMENT '外部委编码',
  `CERTROLE` varchar(255) DEFAULT NULL COMMENT '证书类型编码',
  `APPNAME` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态 信任，危险，处置完毕',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  `OPTIONSTATUS` int(11) DEFAULT NULL COMMENT '用户对预警数据操作状态 信任，危险，处置完毕',
  `LOGINMODE` int(2) DEFAULT NULL,
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_APPLOGIN_LOG_2022_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2022_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_APPLOGIN_LOG_2022_m` (`MARK`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_applogin_log_2022
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_applogin_log_statistics
-- ----------------------------
DROP TABLE IF EXISTS `jpt_applogin_log_statistics`;
CREATE TABLE `jpt_applogin_log_statistics` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `COUNTS` int(10) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_APPLOGIN_LOG_S_C_6` (`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_applogin_log_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_applogin_yd
-- ----------------------------
DROP TABLE IF EXISTS `jpt_applogin_yd`;
CREATE TABLE `jpt_applogin_yd` (
  `userId` varchar(32) NOT NULL,
  `dn` varchar(600) DEFAULT NULL,
  `updateTime` varchar(24) DEFAULT NULL,
  `year` char(4) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `IX_accessTime_updateTime` (`updateTime`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_applogin_yd
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_attachment_info
-- ----------------------------
DROP TABLE IF EXISTS `jpt_attachment_info`;
CREATE TABLE `jpt_attachment_info` (
  `INNERID` char(32) NOT NULL,
  `FILENAME` varchar(510) DEFAULT NULL,
  `FILETYPE` varchar(510) DEFAULT NULL,
  `FILEPATH` varchar(510) DEFAULT NULL,
  `FILESIZE` varchar(510) DEFAULT NULL,
  `RELEASEUSERID` char(32) DEFAULT NULL,
  `RELEASEUSERNAME` varchar(510) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `ISLOCKED` int(11) DEFAULT NULL,
  `LOCKEDUSERID` varchar(510) DEFAULT NULL,
  `LOCKEDUSERNAME` varchar(510) DEFAULT NULL,
  `MOUDLEID` varchar(510) DEFAULT NULL,
  `MOUDLENAME` varchar(510) DEFAULT NULL,
  PRIMARY KEY (`INNERID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_attachment_info
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_attachment_relship
-- ----------------------------
DROP TABLE IF EXISTS `jpt_attachment_relship`;
CREATE TABLE `jpt_attachment_relship` (
  `INNERID` char(32) NOT NULL,
  `ATTACHMENTREF` varchar(510) DEFAULT NULL,
  `FILENAME` varchar(510) DEFAULT NULL,
  `FILETYPE` varchar(510) DEFAULT NULL,
  `FILEPATH` varchar(510) DEFAULT NULL,
  `FILESIZE` varchar(510) DEFAULT NULL,
  `OBJECTNAME` varchar(510) DEFAULT NULL,
  `OBJECTREF` varchar(510) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `CLOUDCODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`INNERID`),
  KEY `IX_attachmentrelship_objectref` (`OBJECTREF`(255)) USING BTREE,
  KEY `IX_attachrelship_attachmenref` (`ATTACHMENTREF`(255)) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_attachment_relship
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_configmanager
-- ----------------------------
DROP TABLE IF EXISTS `jpt_configmanager`;
CREATE TABLE `jpt_configmanager` (
  `INNERID` char(32) NOT NULL,
  `CONFIGMANAGERID` varchar(510) DEFAULT NULL,
  `CONFIGMANAGERNAME` varchar(510) DEFAULT NULL,
  `CONFIGMANAGERTYPE` varchar(4) DEFAULT NULL,
  `PARENTIID` varchar(126) DEFAULT NULL,
  `PARENTID` varchar(510) DEFAULT NULL,
  `DEFAULTVALUE` varchar(4000) DEFAULT NULL,
  `CONFIGMANAGERVALUE` varchar(4000) DEFAULT NULL,
  `CREATETIME` bigint(20) DEFAULT NULL,
  `LASTMODIFYTIME` bigint(20) DEFAULT NULL,
  `ALLOWEDIT` varchar(4) DEFAULT NULL,
  `AUTHOR` varchar(510) DEFAULT NULL,
  `AUTHORNAME` varchar(510) DEFAULT NULL,
  `DESCRIPTION` varchar(1022) DEFAULT NULL,
  `ORDERNUM` int(11) DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT NULL,
  `ISPLATFORM` int(11) DEFAULT NULL,
  PRIMARY KEY (`INNERID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_configmanager
-- ----------------------------
INSERT INTO `jpt_configmanager` VALUES ('0', 'root', '配置根节点', '1', '-1', '-1', null, null, '20140723', '0', '0', '1', 'guanliyuan', '注：初始化数据项；0', '0', '-1', null);
INSERT INTO `jpt_configmanager` VALUES ('2c908d0257f437ef0157f51967160001', 'syncconfig', '数据推送配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'root', '', '', '201610241311050122', '201702081004150247', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '9', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f044887404b014887693bf80001', 'platformSetting', '系统配置（不可修改）', '1', '0', 'root', '', '', '20140918141813848', '20170106184548608', '0', 'ffffffffffffffffffffffffffffffff', '超级管理员', '系统配置，不可修改项', '3', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f044887404b0148876a443c0002', 'ftpsetting', 'FTP设置', '1', '2c908fad576e7e9401576f00597c0005', 'platformsetting', '', '', '20140918141921500', '20170106185954982', '0', 'ffffffffffffffffffffffffffffffff', '超级管理员', '注：初始化数据项；FTP设置，FTP为本系统的附件服务器。', '2', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f044887404b0148876b1c870003', 'ADDRESS', '地址', '0', '2c908f044887404b0148876a443c0002', 'ftpsetting', '127.0.0.1', '', '20140918142016888', '20170106172411731', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '注：初始化数据项；地址；修改此项需重启tomcat', '1', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f044887404b0148876ba4cf0004', 'USERNAME', '用户名', '0', '2c908f044887404b0148876a443c0002', 'ftpsetting', 'admin', '', '20140918142051760', '20170216140257184', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮1', '注：初始化数据项；用户名；修改此项需重启tomcat', '2', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f044887404b0148876c0dcb0005', 'PASSWORD', '密码', '0', '2c908f044887404b0148876a443c0002', 'ftpsetting', '123456', '', '20140918142118648', '20170106181920978', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '注：初始化数据项；密码；修改此项需重启tomcat', '3', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f04493fbd5d01493ffc8c020001', 'FTPPORT', '端口', '0', '2c908f044887404b0148876a443c0002', 'ftpsetting', '21', '', '20141024102915672', '20170106172438646', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '注：初始化数据项；端口；修改此项需重启tomcat', '4', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f04493fbd5d01493ffce95e0002', 'FTPONOFF', '是否启用ftp', '0', '2c908f044887404b0148876a443c0002', 'ftpsetting', 'off', '', '20141024102939808', '201701011641370673', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '注：初始化数据项；on：开启；off：关闭；修改此项需重启tomcat', '5', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f075499b030015499c975e0000d', 'wgxtdz', '外挂系统地址', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'root', '', '', '201605101629570560', '20170106190139251', '0', 'ffffffffffffffffffffffffffffffff', '超级管理员', '子节点配置值编写规则：HttpUrl#【地址URL，必填】;ImgUrl#【内部图片名称，可空】（注意【】去掉，例子如配置值，图片如果不填会用默认图）\r\n例：HttpUrl#http://renkou.com/;ImgUrl#renwutongji.png', '11', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f0758513653015851539b4c0003', 'isOpenManageFlow', '是否开启业务管理流程', '0', '2c908f7c5828e935015828effc540006', 'flowConfig', '0', '', '201611111059430563', '20170309133454301', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '如果开启业务管理流程，例如用户新增，需要通过流程申请才能完成用户添加工作。填写“0”为否，“1”为是', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f0758513653015851585aa50004', 'doNotFlowAdmins', '不使用业务管理流程的管理员', '0', '2c908f7c5828e935015828effc540006', 'flowConfig', '', '', '201611111104540693', '20170106173928460', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '如果开启业务管理流程，设置某些管理员，可以不使用业务管理流程，完成业务管理工作，例如用户新增，不受限制的管理员，直接完成用户新增的操作，不需要走流程。配置值规则：[管理员的身份证号],[管理员的身份证号],[管理员的身份证号]', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f076024ec3c016024fb30e00003', 'LOCALFILEROOT', '本地文件服务根目录', '0', '2c908f044887404b0148876a443c0002', 'ftpsetting', '', '', '20171205124210015', '20171205125013403', '', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '存储本地文件服务的根目录，如果未开启FTP服务时，系统会将文件自动保存在本地文件服务的根目录下。此配置项没有配置值时，会使用系统默认根目录，地址为当前tomcat下的JITLOCALFILE目录。如果需要自定义根目录使用此配置项，设置配置值。', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f2262a380040162a3a4493f0002', 'isOpenAirCert', '是否开启空中发证', '0', '2c9092115da5af88015da5ba1a390004', 'certMakeYD', '0', '', '20180408130435647', '20180408130519962', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '0代表不开启，1代表开启，默认不开启', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad051d0130015', 'fjyonghuzhuceConfig', '辅警用户注册流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170315125507027', '20170103143602733', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '8', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad05237f80016', 'fjzhengshushenqingConfig', '辅警证书申请流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170315125533624', '20170315142932387', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '10', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad052a7980017', 'fjzhengshubufaConfig', '辅警证书补发流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170315125602200', '20170315142946912', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '11', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad06c8e0a0018', 'provinceDecisionfjyonghuzhuce', '省级', '0', '2c908f335acfed50015ad051d0130015', 'fjyonghuzhuceConfig', '', 'node_7-省级管理员审核', '20170315132419594', '20170315133045223', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad06ffe910019', 'cityDecisionfjyonghuzhuce', '市级', '0', '2c908f335acfed50015ad051d0130015', 'fjyonghuzhuceConfig', '', 'node_6-市级管理员审核', '20170315132805009', '20170315133050931', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad0714133001a', 'countryDecisionfjyonghuzhuce', '区县级', '0', '2c908f335acfed50015ad051d0130015', 'fjyonghuzhuceConfig', '', 'node_5-区县级管理员审核', '20170315132927603', '20170315133054699', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad07feba3002b', 'provinceDecisionfjzhengshushenqing', '省级', '0', '2c908f335acfed50015ad05237f80016', 'fjzhengshushenqingConfig', '', 'node_7-省级管理员审核', '20170315134528739', '20170315135019809', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad080b043002c', 'cityDecisionfjzhengshushenqing', '市级', '0', '2c908f335acfed50015ad05237f80016', 'fjzhengshushenqingConfig', '', 'node_6-市级管理员审核', '20170315134619074', '20170315135029162', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad081ba5c002d', 'countryDecisionfjzhengshushenqing', '区县级', '0', '2c908f335acfed50015ad05237f80016', 'fjzhengshushenqingConfig', '', 'node_5-区县级管理员审核', '20170315134727196', '20170315135041483', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad0841d12002e', 'provinceDecisionfjzhengshubufa', '省级', '0', '2c908f335acfed50015ad052a7980017', 'fjzhengshubufaConfig', '', 'node_7-省级管理员审核', '20170315135003538', '20170315135309916', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad085b1d8002f', 'cityDecisionfjzhengshubufa', '市级', '0', '2c908f335acfed50015ad052a7980017', 'fjzhengshubufaConfig', '', 'node_6-市级管理员审核', '20170315135147160', '20170315135319186', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335acfed50015ad086bbd00030', 'countryDecisionfjzhengshubufa', '区县级', '0', '2c908f335acfed50015ad052a7980017', 'fjzhengshubufaConfig', '', 'node_5-区县级管理员审核', '20170315135255248', '20170315135255248', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335b00a68f015b00bfe21e0002', 'certMake', '证书管理配置', '1', '2c908f7c5958a31c015958c8649e0006', 'certSetting', null, null, '20170324223706974', '20170324223706974', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f335b00a68f015b00c1e6810003', 'certMakeRange', '管理员可见待下载证书范围策略', '0', '2c908f335b00a68f015b00bfe21e0002', 'certMake', '1', '2', '20170324223919169', '20170325142341288', null, '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '如果管理全部下级单位设置1，如果管理本单位设置2，（1：全部下级单位，2：本单位）', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3557d241b30157d25b0b100002', 'jzpz', '介质服务配置', '1', '2c908f7c5958a31c015958c8649e0006', 'PKI', '', '', '201610171916040480', '201701181707300031', null, 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f35589411590158942446690001', 'smsfw', '短信服务配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'root', '', '', '201611241022350109', '201701011443230326', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3558941159015894265a6d0002', 'sms', '开启短信服务', '0', '2c908f35589411590158942446690001', 'smsfw', '0', '', '201611241024510309', '20170106190530368', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '是否开启短信服务，填写“0”为不开启，“1”为开启', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355980e88f015981ed041000e0', 'cityDecisionzhengshushenqing', '市级', '0', '2c908f3c58fadcac0158fb0b6ebc009c', 'zhengshushenqingConfig', '', 'node_5-市级管理员审核', '201701091431510056', '20170307101859726', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_34-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355980e88f015981ef46a700e1', 'countryDecisionzhengshushenqing', '区县级', '0', '2c908f3c58fadcac0158fb0b6ebc009c', 'zhengshushenqingConfig', '', 'node_4-区县级领导审核', '201701091434190175', '20170307101854578', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d347716015d34bb33d7004c', 'wirelessZhengshuyanqiConfig', '警员移动证书延期流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170712105750039', '20170714135622861', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '24', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d347716015d34bce5f3004e', 'wirelessZzhengshuxinxijiaozhunConfig', '警员移动证书信息校准流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170712105941171', '20170714135608934', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '26', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d347716015d34d02c480051', 'provinceDecisionWirelessZhengshuyanqi', '省级', '0', '2c908f355d347716015d34bb33d7004c', 'wirelessZhengshuyanqiConfig', '', 'node_6-省级管理员审核', '20170712112044360', '20170712133553832', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d354966015d354d04af0001', 'cityDecisionWirelessZhengshuyanqi', '市级', '0', '2c908f355d347716015d34bb33d7004c', 'wirelessZhengshuyanqiConfig', '', 'node_5-市级管理员审核', '20170712133706220', '20170712135330049', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d354966015d354ed22c0002', 'countryDecisionWirelessZhengshuyanqi', '区县级', '0', '2c908f355d347716015d34bb33d7004c', 'wirelessZhengshuyanqiConfig', '', 'node_4-区县级管理员审核', '20170712133904363', '20170712140425019', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d354966015d3562df9e000a', 'provinceDecisionWirelessZhengshuxinxijiaozhun', '省级', '0', '2c908f355d347716015d34bce5f3004e', 'wirelessZhengshuxinxijiaozhunConfig', '', 'node_6-省级管理员审核', '20170712140058526', '20170712140132182', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d354966015d35641369000b', 'cityDecisionWirelessZhengshuyxinxijiaozhun', '市级', '0', '2c908f355d347716015d34bce5f3004e', 'wirelessZhengshuxinxijiaozhunConfig', '', 'node_5-市级管理员审核', '20170712140217321', '20170712140255114', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d354966015d3565de86000c', 'countryDecisionWirelessZhengshuxinxijiaozhun', '区县级', '0', '2c908f355d347716015d34bce5f3004e', 'wirelessZhengshuxinxijiaozhunConfig', '', 'node_4-区县级管理员审核', '20170712140414854', '20170712140445588', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3eddda015d3ee1cd9f0002', 'wirelessZhengshushenqingConfig', '警员移动证书申请流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170714101611934', '20170714135553733', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '28', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3eddda015d3ee493830004', 'wirelessZhengshubufaConfig', '警员移动证书补发流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170714101913666', '20170714135542928', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '30', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3eddda015d3ee5f7040006', 'wirelessZhengshuzhuxiaoConfig', '警员移动证书注销流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170714102044676', '20170714135529130', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '32', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3eddda015d3ee76bed0008', 'wirelessZhengshujiedongConfig', '警员移动证书解冻流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170714102220141', '20170714135515781', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '34', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f06ff500001', 'provinceDecisionWirelessZhengshushenqing', '省级', '0', '2c908f355d3eddda015d3ee1cd9f0002', 'wirelessZhengshushenqingConfig', '', 'node_6-省级管理员审核', '20170714105649432', '20170714105705837', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f08344a0002', 'cityDecisionWirelessZhengshushenqing', '市级', '0', '2c908f355d3eddda015d3ee1cd9f0002', 'wirelessZhengshushenqingConfig', '', 'node_5-市级管理员审核', '20170714105808586', '20170714105808586', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_34-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f09f83a0003', 'countryDecisionWirelessZhengshushenqing', '区县级', '0', '2c908f355d3eddda015d3ee1cd9f0002', 'wirelessZhengshushenqingConfig', '', 'node_4-区县级领导审核', '20170714110004282', '20170714110004282', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f0fa65f0009', 'provinceDecisionWirelessZhengshubufa', '省级', '0', '2c908f355d3eddda015d3ee493830004', 'wirelessZhengshubufaConfig', '', 'node_7-省级管理员审核', '20170714110616543', '20170714110616543', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_35-省管理员审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f102a2a000a', 'cityDecisionWirelessZhengshubufa', '市级', '0', '2c908f355d3eddda015d3ee493830004', 'wirelessZhengshubufaConfig', '', 'node_6-市级管理员审核', '20170714110650282', '20170714110650282', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_34-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f10ada6000b', 'countryDecisionWirelessZhengshubufa', '区县级', '0', '2c908f355d3eddda015d3ee493830004', 'wirelessZhengshubufaConfig', '', 'node_5-区县级管理员审核', '20170714110723941', '20170714110723941', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_33-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f14826a0011', 'provinceDecisionWirelessZhengshuzhuxiao', '省级', '0', '2c908f355d3eddda015d3ee5f7040006', 'wirelessZhengshuzhuxiaoConfig', '', 'node_6-省级管理员审核', '20170714111135018', '20170714111135018', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f1508f70012', 'cityDecisionWirelessZhengshuzhuxiao', '市级', '0', '2c908f355d3eddda015d3ee5f7040006', 'wirelessZhengshuzhuxiaoConfig', '', 'node_5-市级管理员审核', '20170714111209463', '20170714111209463', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_34-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f158f3e0013', 'countryDecisionWirelessZhengshuzhuxiao', '区县级', '0', '2c908f355d3eddda015d3ee5f7040006', 'wirelessZhengshuzhuxiaoConfig', '', 'node_4-区县级领导审核', '20170714111243837', '20170714111243837', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f193ae40019', 'provinceDecisionWirelessZhengshujiedong', '省级', '0', '2c908f355d3eddda015d3ee76bed0008', 'wirelessZhengshujiedongConfig', '', 'node_7-省级管理员审核', '20170714111644388', '20170714111644388', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f19bb8f001a', 'cityDecisionWirelessZhengshujiedong', '市级', '0', '2c908f355d3eddda015d3ee76bed0008', 'wirelessZhengshujiedongConfig', '', 'node_6-市级管理员审核', '20170714111717327', '20170714111717327', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d3efd87015d3f1a45f9001b', 'countryDecisionWirelessZhengshujiedong', '区县级', '0', '2c908f355d3eddda015d3ee76bed0008', 'wirelessZhengshujiedongConfig', '', 'node_4-区县管理员审核', '20170714111752736', '20170714111752736', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d81a751015d81c345dc0006', 'wirelessZhengshuguanliConfig', '移动证书管理流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170727095724572', '20170727095724572', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '36', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d81a751015d81c4820c0007', 'provinceDecisionWirelessZhengshuguanli', '省级', '0', '2c908f355d81a751015d81c345dc0006', 'wirelessZhengshuguanliConfig', '', 'node_6-省级管理员审核', '20170727095845516', '20170727100032690', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d81a751015d81c4f60b0008', 'cityDecisionWirelessZhengshuguanli', '市级', '0', '2c908f355d81a751015d81c345dc0006', 'wirelessZhengshuguanliConfig', '', 'node_5-市级管理员审核', '20170727095915210', '20170727100104412', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355d81a751015d81c58c100009', 'countryDecisionWirelessZhengshuguanli', '区县级', '0', '2c908f355d81a751015d81c345dc0006', 'wirelessZhengshuguanliConfig', '', 'node_4-区县级管理员审核', '20170727095953616', '20170727100146761', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355da5a9f4015da5b66b420001', 'wirelessCertVisibleUserRange', '移动证书组织机构树可见用户范围策略', '0', '2c908f3c5b02f4d4015b02f898f90001', 'userManageConfig', '1', '2', '20170803092941914', '20170803094702519', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此处配置用户范围。配置值1为警员和辅警，2为警员，3为辅警。默认为1警员和辅警都可见。', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f355f2d14e8015f2e99f35e0067', 'isOpenVoucherByFlow', '是否开启电子凭证', '0', '2c908f7c5828e935015828effc540006', 'flowConfig', '0', '', '20171018162922141', '20171018162922141', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '“0”为不开启电子凭证，“1”为开启电子凭证并且是必填项，“2”为开启电子凭证并且是非必填项。', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58904fae015890b594c90021', 'httpPort', 'http登录端口', '0', '2c908fe5580a684101580aa1027a0037', 'loginSetting', '83', '', '201611231822490033', '20170106172621126', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '如果需要修改tomcat端口号，需要在tomcat\\conf\\server.xml文件中的<Connector>属性上修改', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58f74ad00158f76073e00010', 'zhengshuyanqiConfig', '警员证书延期流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612131650430295', '20170315142649265', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58f74ad00158f76139ad0011', 'provinceDecisionzhengshuyanqi', '省级', '0', '2c908f3c58f74ad00158f76073e00010', 'zhengshuyanqiConfig', '', 'node_7-省级管理员审核', '201612131651330932', '20170307112837994', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58f74ad00158f761a7380012', 'cityDecisionzhengshuyanqi', '市级', '0', '2c908f3c58f74ad00158f76073e00010', 'zhengshuyanqiConfig', '', 'node_6-市级管理员审核', '201612131652010975', '20170307112828280', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58f74ad00158f76203600013', 'countryDecisionzhengshuyanqi', '区县级', '0', '2c908f3c58f74ad00158f76073e00010', 'zhengshuyanqiConfig', '', 'node_5-区县级管理员审核', '201612131652250567', '20170307112819661', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb0586510096', 'fjyonghushuxingbiangengConfig', '辅警用户信息变更流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612140949530104', '20170315142726068', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '9', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb067dd70097', 'provinceDecisionfjyonghushuxingbiangeng', '省级', '0', '2c908f3c58fadcac0158fb0586510096', 'fjyonghushuxingbiangengConfig', '', 'node_8-省级管理员审核', '201612140950560469', '20170307131942933', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb06ee9d0098', 'cityDecisionfjyonghushuxingbiangeng', '市级', '0', '2c908f3c58fadcac0158fb0586510096', 'fjyonghushuxingbiangengConfig', '', 'node_7-市级管理员审核', '201612140951250340', '20170307131952583', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb0749dc0099', 'countryDecisionfjyonghushuxingbiangeng', '区县级', '0', '2c908f3c58fadcac0158fb0586510096', 'fjyonghushuxingbiangengConfig', '', 'node_6-区县级管理员审核', '201612140951480699', '20170307132002266', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb0b6ebc009c', 'zhengshushenqingConfig', '警员证书申请流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612140956200283', '20170315142609627', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb0fe97000a2', 'zhengshubufaConfig', '警员证书补发流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612141001130839', '20170315142618177', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb111c6d00a3', 'provinceDecisionzhengshubufa', '省级', '0', '2c908f3c58fadcac0158fb0fe97000a2', 'zhengshubufaConfig', '', 'node_7-省级管理员审核', '201612141002320428', '20170307113329826', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_35-省管理员审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb11669800a4', 'cityDecisionzhengshubufa', '市级', '0', '2c908f3c58fadcac0158fb0fe97000a2', 'zhengshubufaConfig', '', 'node_6-市级管理员审核', '201612141002510415', '20170307113322971', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_34-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb11acb600a5', 'countryDecisionzhengshubufa', '区县级', '0', '2c908f3c58fadcac0158fb0fe97000a2', 'zhengshubufaConfig', '', 'node_5-区县级管理员审核', '201612141003090365', '20170307113314518', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_33-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb13da4300a7', 'zhengshujiedongConfig', '警员证书解冻流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612141005320098', '20170315142626582', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb144f4200a8', 'provinceDecisionzhengshujiedong', '省级', '0', '2c908f3c58fadcac0158fb13da4300a7', 'zhengshujiedongConfig', '', 'node_7-省级管理员审核', '201612141006020048', '20170307131524013', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb14976100a9', 'cityDecisionzhengshujiedong', '市级', '0', '2c908f3c58fadcac0158fb13da4300a7', 'zhengshujiedongConfig', '', 'node_6-市级管理员审核', '201612141006200512', '20170307131514797', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb14f2ef00aa', 'countryDecisionzhengshujiedong', '区县级', '0', '2c908f3c58fadcac0158fb13da4300a7', 'zhengshujiedongConfig', '', 'node_4-区县管理员审核', '201612141006430950', '20170307131506345', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb16422000ac', 'fjzhengshujiedongConfig', '辅警证书解冻流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612141008090758', '20170315143023446', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '12', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb16b5ea00ad', 'provinceDecisionfjzhengshujiedong', '省级', '0', '2c908f3c58fadcac0158fb16422000ac', 'fjzhengshujiedongConfig', '', 'node_8-省级管理员审核', '201612141008390401', '20170307100726334', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb1706d900ae', 'cityDecisionfjzhengshujiedong', '市级', '0', '2c908f3c58fadcac0158fb16422000ac', 'fjzhengshujiedongConfig', '', 'node_7-市级管理员审核', '201612141009000120', '20170307100736610', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb1755dc00af', 'countryDecisionfjzhengshujiedong', '区县级', '0', '2c908f3c58fadcac0158fb16422000ac', 'fjzhengshujiedongConfig', '', 'node_6-区县级管理员审核', '201612141009200347', '20170307100746185', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb1bf81600b1', 'zhengshuxinxijiaozhunConfig', '警员证书信息校准流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612141014240021', '20170315142633905', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb1c6a4600b2', 'fjzhengshuxinxijiaozhunConfig', '辅警证书信息校准流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612141014530253', '20170315143032808', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '13', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb247dbf00b7', 'provinceDecisionfjzhengshuxinxijiaozhun', '省级', '0', '2c908f3c58fadcac0158fb1c6a4600b2', 'fjzhengshuxinxijiaozhunConfig', '', 'node_8-省级管理员审核', '201612141023420526', '20170307101307604', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb24c89e00b8', 'cityDecisionfjzhengshuxinxijiaozhun', '市级', '0', '2c908f3c58fadcac0158fb1c6a4600b2', 'fjzhengshuxinxijiaozhunConfig', '', 'node_7-市级管理员审核', '201612141024010693', '20170307101254603', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb2515fe00b9', 'countryDecisionfjzhengshuxinxijiaozhun', '区县级', '0', '2c908f3c58fadcac0158fb1c6a4600b2', 'fjzhengshuxinxijiaozhunConfig', '', 'node_6-区县级管理员审核', '201612141024210501', '20170307101245179', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb28de9100bc', 'fjzhengshuyanqiConfig', '辅警证书延期流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612141028290456', '20170315143039744', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '14', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb47d4cb00ec', 'yonghuguanliConfig', '用户管理流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612141102180570', '20170315143136990', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '16', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb48d88e00ef', 'jigouguanliConfig', '机构管理流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612141103250069', '20170315143111815', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '17', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb49507d00f1', 'zhengshuguanliConfig', '证书管理流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201612141103550772', '20170315143146984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '18', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb49ccdb00f2', 'provinceDecisionyonghuguanli', '省部级', '0', '2c908f3c58fadcac0158fb47d4cb00ec', 'yonghuguanliConfig', '', 'node_7-省级管理员审核', '201612141104270610', '20170307102156030', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb4a234f00f3', 'cityDecisionyonghuguanli', '市级', '0', '2c908f3c58fadcac0158fb47d4cb00ec', 'yonghuguanliConfig', '', 'node_6-市级管理员审核', '201612141104490742', '20170307102147082', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb4a7be400f4', 'countryDecisionyonghuguanli', '区县级', '0', '2c908f3c58fadcac0158fb47d4cb00ec', 'yonghuguanliConfig', '', 'node_5-区县级领导审核', '201612141105120419', '20170307102137891', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb4b469000f6', 'provinceDecisionjigouguanli', '省部级', '0', '2c908f3c58fadcac0158fb48d88e00ef', 'jigouguanliConfig', '', 'node_7-省级管理员审核', '201612141106040303', '20170307102705701', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省级管理员审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb4b8bd100f7', 'cityDecisionjigouguanli', '市级', '0', '2c908f3c58fadcac0158fb48d88e00ef', 'jigouguanliConfig', '', 'node_6-市级管理员审核', '201612141106220031', '20170307102657190', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb4bdb3a00f8', 'countryDecisionjigouguanli', '区县级', '0', '2c908f3c58fadcac0158fb48d88e00ef', 'jigouguanliConfig', '', 'node_5-区县级管理员审核', '201612141106420361', '20170307102648850', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb4c942e00fa', 'provinceDecisionzhengshuguanli', '省级', '0', '2c908f3c58fadcac0158fb49507d00f1', 'zhengshuguanliConfig', '', 'node_7-省级管理员审核', '201612141107290709', '20170307103732994', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb4cdc2b00fb', 'cityDecisionzhengshuguanli', '市级', '0', '2c908f3c58fadcac0158fb49507d00f1', 'zhengshuguanliConfig', '', 'node_6-市级管理员审核', '201612141107480138', '20170307103722972', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c58fadcac0158fb4d274400fc', 'countryDecisionzhengshuguanli', '区县级', '0', '2c908f3c58fadcac0158fb49507d00f1', 'zhengshuguanliConfig', '', 'node_5-区县级管理员审核', '201612141108070363', '20170307103715740', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d3a1b3d0002', 'certMakeByBsra', 'BSRA配置', '1', '2c908f7c5958a31c015958c8649e0006', 'certSetting', '', '', '201612300856100813', '20170106195715134', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d3b5ef00004', 'certMakeBy506', '（有线）证书服务基础配置', '1', '2c908fad576e7e9401576f00597c0005', 'certSetting', '', '', '201612300857330680', '20170106195711570', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d3f73a90005', 'jyByBsra', '警员RA配置', '1', '2c908f3c594d2cd701594d3a1b3d0002', 'certMakeByBsra', '', '', '201612300902010129', '20170301155622802', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员配置项', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d3fc04c0006', 'fjByBsra', '辅警RA配置', '1', '2c908f3c594d2cd701594d3a1b3d0002', 'certMakeByBsra', '', '', '201612300902200748', '20170301155627988', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '辅警配置项', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d409ad50008', 'fjBy506', '辅警506RA配置', '1', '2c908f3c594d2cd701594d3b5ef00004', 'certMakeBy506', '', '', '201612300903160693', '20170106195746593', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d41473c000a', 'jyBy506', '警员506RA配置', '1', '2c908f3c594d2cd701594d3b5ef00004', 'certMakeBy506', '', '', '201612300904000812', '20170106195742953', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d580c62000b', 'mycd506', '密钥长度', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', '1024', '', '201612300928530090', '20170106200156758', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置为证书密钥长度。默认为1024', '8', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d58b7cf000c', 'fjmycd506', '密钥长度', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', '1024', '', '201612300929360975', '20170106202420531', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置为证书密钥长度。默认为1024', '8', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d5c3907000d', 'certMakeType', 'RA版本配置', '0', '2c908f3c59918b760159919819e20002', 'certSetting', '506', '', '201612300933260663', '20170106195230735', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '设置制证方式为BSRA制证还是506制证。配置值有506和BSRA两个，\"506\"代表506制证，\"BSRA\"代表BSRA制证。', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d60742a0010', 'raurl', 'ra地址', '0', '2c908f3c594d2cd701594d3f73a90005', 'jyByBsra', '', '', '201612300938030946', '20170106202724552', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', 'BSRA的访问地址，根据实际情况配置', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d61dc5e0013', 'certType', '证书类型', '0', '2c908f3c594d2cd701594d3f73a90005', 'jyByBsra', 'RSA', '', '201612300939360158', '201701211449570204', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '当前BSRA只支持RSA算法制证，日后支持国密需要改动', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d80332f0014', 'fjraurl', 'ra地址', '0', '2c908f3c594d2cd701594d3fc04c0006', 'fjByBsra', '', '', '201612301012440462', '20170106202827053', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '辅警BSRA的访问地址，根据实际情况配置', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d81084f0017', 'fjcertType', '证书类型', '0', '2c908f3c594d2cd701594d3fc04c0006', 'fjByBsra', 'RSA', '', '201612301013390022', '201701211450020574', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c594d2cd701594d997d220021', 'subordinateDepCode', '部级机关管理单位编码', '0', '2c908f7c5828e935015828effc540006', 'flowConfig', '', '', '201612301040210793', '20170106173932679', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置为部机关的管理单位，配置值为12位机构编码，该单位下的管理员即部级单位管理员。例如22局。', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c598b150901598b19f9c00002', 'subject', '警员证书主题', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', 'CN=<姓名> <身份证号>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,C=CN', '', '201701110917320480', '20170106200627794', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '定义警员的证书主题格式，常用的按以下格式配置：E=<电子邮件>,CN=<姓名> <身份证号>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,C=CN', '9', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c598b150901598b1aa3660003', 'fjsubject', '辅警证书主题', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', 'CN=<姓名> <身份证号>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,C=CN', '', '201701110918150910', '20170106202453690', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '定义辅警的证书主题格式，常用的按以下格式配置：E=<电子邮件>,CN=<姓名> <身份证号>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,C=CN', '9', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c59918b760159919819e20002', 'tongYongPeiZhi', '通用配置', '1', '2c908f7c5958a31c015958c8649e0006', 'certSetting', '', '', '201701121533010538', '20170301160337640', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c59918b760159919918420004', 'ctmlName', '警员RSA模板名称', '0', '2c908f3c594d2cd701594d41473c000a', 'jyConfig', '警员证书模板', '', '201701121534060658', '20170106203749692', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '对应RA中系统管理-模板管理-警员证书的模板名称。', '15', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c59918b760159919980ec0005', 'signDep', '签发单位', '0', '2c908f3c594d2cd701594d41473c000a', 'jyConfig', '省厅', '', '201701121534330452', '201701121534330452', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '签发单位根据实际情况配置名称即可。', '16', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c59918b760159919a15990006', 'fjctmlName', '辅警RSA模板名称', '0', '2c908f3c594d2cd701594d409ad50008', 'fjConfig', '辅警模板', '', '201701121535110513', '20170306204056996', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '对应RA中系统管理-模板管理-辅警证书的模板名称。', '12', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c59918b760159919a678c0007', 'fjsignDep', '签发单位', '0', '2c908f3c594d2cd701594d409ad50008', 'fjConfig', '省厅（辅警）', '', '201701121535320491', '20170306204310176', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '签发单位根据实际情况配置名称即可。', '13', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c59ab645b0159ab6c3d440004', 'userType', '警员证书用户类型数据库表名称', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', 'jingyuanyonghu', '', '201701171555140627', '20170106200723968', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置值与RA的警员证书用户类型数据库表名称保持一致。对应RA系统中的系统管理-用户类型管理-警员的用户类型数据库表名称', '10', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c59ab645b0159ab6cc0390005', 'fjuserType', '辅警证书用户类型数据库表名称', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', '', '', '201701171555480153', '20170106202551084', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置值与RA的辅警证书用户类型数据库表名称保持一致。对应RA系统中的系统管理-用户类型管理-辅警的用户类型数据库表名称', '10', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c59b0cf270159b0d70bf80001', 'racsxy', '传输协议', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', 'http', '', '201701181710000425', '20170106200109063', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '定义传输协议的方式', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c59b0cf270159b0da51eb0004', 'fjracsxy', '传输协议', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', 'http', '', '201701181713340954', '20170106202344984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '定义传输协议的方式', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5ab21d04015ab21d8a620001', 'certService', '开启证书服务 ', '0', '2c908f335b00a68f015b00bfe21e0002', 'certSetting', '1', '1', '20170309160924833', '20170330155633982', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '是否开启证书服务，0未开启，1开启\r\n此配置是控制登录页面是否含有“证书”登录方式。\r\n', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5ac732d1015ac7349a4b0001', 'raVersion', '版本号', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', '', '', '20170313182637771', '20170313182637771', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此处配置RA版本号，去掉版本号中间的\".\"，直接填写数字即可。例如：版本号为5.0.6.9，则直接配置5069。', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5ac732d1015ac735df450002', 'fjraVersion', '版本号', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', '', '', '20170313182800965', '20170313182800965', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此处配置RA版本号，去掉版本号中间的\".\"，直接填写数字即可。例如：版本号为5.0.6.9，则直接配置5069。', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5adb4937015adb4d7cf70001', 'loginConfig', '登录设置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'platformsetting', '', '', '20170317160612956', '20170317160612956', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5ae9423d015ae94c6d740001', 'loginType', '登录方式', '0', '2c908f3c5adb4937015adb4d7cf70001', 'loginConfig', '', '', '20170320091944470', '20170325154159654', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '登录方式有五种，配置值可以配置：中间件、旁路网关、主路网关、国密证书   说明：第五种方式，如果以上四种方式都不是，配置值不填写任何信息', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5b02f4d4015b02f898f90001', 'userManageConfig', '用户管理配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'root', '', '', '20170325085818219', '20170325085827283', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5b02f4d4015b02fd9bf00002', 'visibleUserRange', '组织机构树可见用户范围策略', '0', '2c908f3c5b02f4d4015b02f898f90001', 'userManageConfig', '1', '', '20170325090346671', '20170325103254488', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此处配置用户范围。配置值1为警员和辅警，2为警员，3为辅警。默认为1警员和辅警都可见。', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5b0d3124015b0e4977360048', 'makeCertPersonConfig', '制证人选项配置', '0', '2c908f335b00a68f015b00bfe21e0002', 'certSetting', '1', '', '20170327134227382', '20170327153409408', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置为系统开启制证人类别的配置。制证人包括：证书持有者制证、管理员制证两种。配置值1为两种都开启；2为只开启证书持有者制证；3为只开启管理员制证。', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5b224965015b22b9216e0011', 'isSelectDepConfig', '节点精选同一单位策略配置', '0', '2c908f7c5828e935015828effc540006', 'flowConfig', '', '[210000010000]', '20170331125649774', '20170331125914280', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '用于配置按前8位code获取单位级别编码的机构code。直属部门可以用此配置。配置值规则：[机构编码],[机构编码],[机构编码]', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5ba8ce3a015ba9dd6e8c0022', 'fjcertDjOrJd', '辅警业务流程中是否开启证书冻结解冻', '0', '2c908f335b00a68f015b00bfe21e0002', 'certMake', '0', '', '20170426184512971', '20170426184534714', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '辅警的用户管理、证书管理、自助服务等业务流程中是否开启证书冻结解冻：0不开启，1开启', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5bcbe52f015bcd158fa60003', 'sm2applicationName', 'SM2介质应用名称', '0', '2c908f3557d241b30157d25b0b100002', 'jzpz', 'JITAPPLICATION_SM2', '', '20170503145314022', '20170503145318791', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '每一把SM2算法KEY在PKI产品制证之前，都需要先进行格式化和创建应用，且创建的应用名称需与证书对应模板中配置的应用名称一致。', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5bcbe52f015bcd5c0c650004', 'sm2ctmlName', '警员SM2模板名称', '0', '2c908f3c594d2cd701594d41473c000a', 'jyConfig', '警员模板', '', '20170503171227645', '20170503171227645', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '对应RA中系统管理-模板管理-警员证书的模板名称。', '17', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5bcbe52f015bcd5cf91e0005', 'sm2fjctmlName', '辅警SM2模板名称', '0', '2c908f3c594d2cd701594d409ad50008', 'fjConfig', '辅警模板', '', '20170503171227645', '20170503171227645', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '对应RA中系统管理-模板管理-警员证书的模板名称。', '14', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5bcd6ea5015bcd9506fe0003', 'raType', 'RA管理体系（RSA或SM2）', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', 'RSA', 'RSA', '20170503171227645', '20170503171227645', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置填写RA管理体系，一般都为RSA，SM2也支持。', '14', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c5bcd6ea5015bcd97b3c10004', 'fjraType', 'RA管理体系（RSA或SM2）', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', 'RSA', 'RSA', '20170503171227645', '20170503171227645', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置填写RA管理体系，一般都为RSA，SM2也支持。', '11', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f3c62421609016242313a440003', 'certLoginOnlyCheckIdcard', '证书登录是否只验证身份证号配置', '0', '2c908f3c5adb4937015adb4d7cf70001', 'loginConfig', '1', '0', '20180320145545220', '20180813140508221', '1', 'ffffffffffffffffffffffffffffffff', '实施员', '此配置项适用于证书登录时，是否只验证身份证号。0关闭1开启。默认开启，只验证证书中的身份证号即可。若关闭，则需要验证证书DN值和序列号。', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f43598c2c4701598c7290770003', 'raIp', 'RA服务器IP', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', '', '', '201701111533550447', '20170106195811483', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', 'RA服务器的IP，按照实际情况填写。', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f43598c2c4701598c731a380004', 'fjraIp', 'RA服务器IP', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', '', '', '201701111534300712', '20170106202316087', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '辅警RA服务器的IP，按照实际情况填写。', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f43598c2c4701598c7400d40005', 'txPort', '通信端口', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', '40625', '', '201701111535290747', '20170106173017599', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '通信端口按实际情况填写，一般默认为40625', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f43598c2c4701598c7451750006', 'fjtxPort', '通信端口', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', '40625', '', '201701111535500389', '20170106173148955', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '通信端口按实际情况填写，一般默认为40625', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f43598c2c4701598c7a9a8d0007', 'jksPass', 'jks密码', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', '11111111', '', '201701111542420317', '20170106173026399', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '密码默认为六个1，一般也可能为八个1', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f43598c2c4701598c7add190008', 'fjjksPass', 'jks密码', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', '11111111', '', '201701111542590353', '20170106173226209', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '密码默认为六个1，一般也可能为八个1', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f43598c2c4701598c7cbe080009', 'datPass', 'dat密码', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', '11111111', '', '201701111545020472', '20170106173029799', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', 'dat密码默认为六个1，一般也可能为八个1', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f43598c2c4701598c7d5d12000a', 'fjdatPass', 'dat密码', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', '11111111', '', '201701111545430185', '20170106173222592', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', 'dat密码默认为六个1，一般也可能为八个1', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435a6db861015a6f4c4cda0007', 'cmsRaPort', '监控端口', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', '', '30444', '20170224164555801', '20170301155747273', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '监控警员制证专用端口，该端口暂时只用于CMS相关功能。', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435a6db861015a6f4e28d10008', 'fjCmsRaPort', '监控端口', '0', '2c908f3c594d2cd701594d409ad50008', 'fjBy506', '', '30444', '20170224164757649', '20170301155946336', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '监控辅警制证专用端口，该端口暂时只用于CMS相关功能。', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435aeabaaf015aeace9f320001', 'isOpenUserSyncData', '是否打开用户数据推送', '0', '2c908d0257f437ef0157f51967160001', 'syncconfig', '0', '0', '20170320162134046', '20170320162134046', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '用于用户数据的推送。填写“1”为开启，填写“0”为不开启', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435aeabaaf015aead264390002', 'isOpenOrgSyncData', '是否开启机构数据推送', '0', '2c908d0257f437ef0157f51967160001', 'syncconfig', '1', '1', '20170320162541176', '20170321101946105', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '用于机构数据的推送。填写“1”为开启，填写“0”为不开', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435aeabaaf015aead383bc0003', 'isOpenCertSyncData', '是否开启证书数据推送', '0', '2c908d0257f437ef0157f51967160001', 'syncconfig', '0', '0', '20170320162654779', '20170320162654779', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '用于证书数据的推送。填写“1”为开启，填写“0”为不开启', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435afe46fd015aff3d5e4c0015', 'nonPoliceDecisionfjyonghushuxingbiangeng', '辅警', '0', '2c908f3c58fadcac0158fb0586510096', 'fjyonghushuxingbiangengConfig', '', 'node_4-主管警员审核', '20170324153456332', '20170103150806761', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435afe46fd015aff40a6fe001c', 'nonPoliceDecisionfjzhengshujiedong', '辅警', '0', '2c908f3c58fadcac0158fb16422000ac', 'fjzhengshujiedongConfig', '', 'node_5-主管警员审核', '20170324153831549', '20170103151048532', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435afe46fd015aff428b730021', 'nonPoliceDecisionfjzhengshuxinxijiaozhun', '辅警', '0', '2c908f3c58fadcac0158fb1c6a4600b2', 'fjzhengshuxinxijiaozhunConfig', '', 'node_5-主管警员审核', '20170324154035571', '20170103151155002', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435afe46fd015aff4379810023', 'nonPoliceDecisionfjzhengshuyanqi', '辅警', '0', '2c908f3c58fadcac0158fb28de9100bc', 'fjzhengshuyanqiConfig', '', 'node_5-主管警员审核', '20170324154136513', '20170103151244429', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435afe46fd015aff443ab90025', 'nonPoliceDecisionfjzhuguanjingyuanbiangeng', '辅警', '0', '2c908fac59812af2015981ca79830047', 'fujingzhuguanjingyuanbiangengConfig', '', '', '20170324154225977', '20170324154225977', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435b3bae56015b3bc5659f000d', 'bangdingfujingguanxi', '绑定辅警关系流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170405094044062', '20170405094044062', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '22', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435b3bae56015b3bc755d9000e', 'provinceDecisionbangdingfujingguanxi', '省级', '0', '2c908f435b3bae56015b3bc5659f000d', 'bangdingfujingguanxi', '', '', '20170405094251097', '20170405094251097', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435b3bae56015b3bc8640b000f', 'cityDecisionbangdingfujingguanxi', '市级', '0', '2c908f435b3bae56015b3bc5659f000d', 'bangdingfujingguanxi', '', '', '20170405094400266', '20170405094400266', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435b3bae56015b3bc947900010', 'countryDecisionbangdingfujingguanxi', '区县级', '0', '2c908f435b3bae56015b3bc5659f000d', 'bangdingfujingguanxi', '', '', '20170405094458512', '20170405094458512', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435b3bae56015b3bca89810011', 'nonPoliceDecisionbangdingfujingguanxi', '辅警', '0', '2c908f435b3bae56015b3bc5659f000d', 'bangdingfujingguanxi', '', '', '20170405094620929', '20170405094620929', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '辅警人员判定节点走向，配置值为流程节点ID及名称，例：：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435b3bae56015b3bcbb1740012', 'policeDecisionbangdingfujingguanxi', '警员', '0', '2c908f435b3bae56015b3bc5659f000d', 'bangdingfujingguanxi', '', '', '20170405094736692', '20170405094736692', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员人员判定节点走向，配置值为流程节点ID及名称，例：node_4-部门领导审核，指向办结，直接配置“办结”二个字', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f435f528491015f52bf62b4000a', 'isOpenYDCertSyncData', '是否打开移动证书数据推送', '0', '2c908d0257f437ef0157f51967160001', 'syncconfig', '0', '', '20171025165635251', '20171025165644344', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '用于移动证书数据的推送。填写“1”为开启，填写“0”为不开启', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f4363f185950163f1f91d4a0001', 'glysfpz', '管理员身份名称配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'seniorSetting', '', '', '20180612111025094', '20180612111503472', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '12', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f4363f185950163f1faa5820002', 'useradmin', '用户管理员', '0', '2c908f4363f185950163f1f91d4a0001', 'glysfpz', '用户管理员', '', '20180612111205506', '20180612160727527', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '修改此参数必须重启服务才能生效。', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f4363f185950163f1fb01b30003', 'certadmin', '证书管理员', '0', '2c908f4363f185950163f1f91d4a0001', 'glysfpz', '证书管理员', '', '20180612111229107', '20180612160720142', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '修改此参数必须重启服务才能生效。', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f4363f185950163f1fbed110004', 'wirelesscertadmin', '证书管理员（移动）', '0', '2c908f4363f185950163f1f91d4a0001', 'glysfpz', '证书管理员（移动）', '', '20180612111329361', '20180612160647289', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '修改此参数必须重启服务才能生效。', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f4363f185950163f1fc5e400005', 'auditadmin', '安全审计员', '0', '2c908f4363f185950163f1f91d4a0001', 'glysfpz', '安全审计员', '', '20180612111358335', '20180612160652889', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '修改此参数必须重启服务才能生效。', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f4363f185950163f1fd0ff20006', 'platformadmin', '系统管理员', '0', '2c908f4363f185950163f1f91d4a0001', 'glysfpz', '系统管理员', '', '20180612111443825', '20180612160657490', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '修改此参数必须重启服务才能生效。', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f4363f185950163f29770040008', 'subplatformadmin', '下级系统管理员', '0', '2c908f4363f185950163f1f91d4a0001', 'glysfpz', '下级系统管理员', '', '20180612140320964', '20180612160801911', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '修改此参数必须重启服务才能生效。', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f48583da16601583dd7b2a80002', 'flowConfig', '工作流配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'root', '', '', '201611071611350975', '201701181301480489', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f48586091c1015860c1d49a0003', 'flowDecision', '流程判定节点配置', '1', '2c908f48583da16601583dd7b2a80002', 'flowConfig', 'yonghushuxingbiangeng|210000:node_4-县区审核;21**00:node_4-县区审核;21****:node_4-县区审核/', '', '201611141054250433', '201611141334140742', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '各个流程有关判定节点走向配置', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f48586091c1015860c3605a0004', 'yonghuzhuceConfig', '警员用户注册流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201611141056060746', '20170315123442516', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f48586091c1015860cc00780005', 'provinceDecisionyonghuzhuce', '省级', '0', '2c908f48586091c1015860c3605a0004', 'yonghuzhuceConfig', '', 'node_6-省级管理员审核', '201611141105320023', '20170315124758771', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_6-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f48586091c1015860cca5740006', 'cityDecisionyonghuzhuce', '市级', '0', '2c908f48586091c1015860c3605a0004', 'yonghuzhuceConfig', '', 'node_5-市级管理员审核', '201611141106140259', '20170315124805788', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_5-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f48586091c1015860cdb46e0007', 'countryDecisionyonghuzhuce', '区县级', '0', '2c908f48586091c1015860c3605a0004', 'yonghuzhuceConfig', '', 'node_4-区县级管理员审核', '201611141107230629', '20170315124813420', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485861b2b9015861bd1f460004', 'yonghushuxingbiangengConfig', '警员用户属性变更流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201611141528540086', '20170315123517625', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485861b2b9015861bd83f80005', 'provinceDecisionyonghushuxingbiangeng', '省级', '0', '2c908f485861b2b9015861bd1f460004', 'yonghushuxingbiangengConfig', '', 'node_6-省级管理员审核', '201611141529190863', '20170307101036436', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485861b2b9015861bdd9c00006', 'cityDecisionyonghushuxingbiangeng', '市级', '0', '2c908f485861b2b9015861bd1f460004', 'yonghushuxingbiangengConfig', '', 'node_5-市级管理员审核', '201611141529410824', '20170307100925032', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485861b2b9015861be24610007', 'countryDecisionyonghushuxingbiangeng', '区县级', '0', '2c908f485861b2b9015861bd1f460004', 'yonghushuxingbiangengConfig', '', 'node_4-区县级管理员审核', '201611141530000928', '20170307100848051', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b00bda4015b00c06db30001', 'policeDecisionfjyonghushuxingbiangeng', '警员', '0', '2c908f3c58fadcac0158fb0586510096', 'fjyonghushuxingbiangengConfig', '', 'node_6-所在部门审核', '20170324223742692', '20170103150821683', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-部门领导审核', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b00bda4015b00c1d8a50004', 'policeDecisionfjzhengshujiedong', '警员', '0', '2c908f3c58fadcac0158fb16422000ac', 'fjzhengshujiedongConfig', '', '办结', '20170324223915621', '20170103151118609', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-部门领导审核', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b00bda4015b00c260a90005', 'policeDecisionfjzhengshuxinxijiaozhun', '警员', '0', '2c908f3c58fadcac0158fb1c6a4600b2', 'fjzhengshuxinxijiaozhunConfig', '', 'node_6-所在部门审核', '20170324223950441', '20170103151206786', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-部门领导审核', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b00bda4015b00c2cf530006', 'policeDecisionfjzhengshuyanqi', '警员', '0', '2c908f3c58fadcac0158fb28de9100bc', 'fjzhengshuyanqiConfig', '', '办结', '20170324224018771', '20170103151251088', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-部门领导审核', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b00bda4015b00c349430007', 'policeDecisionfjzhuguanjingyuanbiangeng', '警员', '0', '2c908fac59812af2015981ca79830047', 'fujingzhuguanjingyuanbiangengConfig', '', '', '20170324224049987', '20170324224049987', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-部门领导审核', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b22271d015b2232c2bd000a', 'jiebangfujingguanxi', '解绑辅警关系流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170331103003708', '20170331103003708', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '22', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b22271d015b223373b4000b', 'provinceDecisionjiebangfujingguanxi', '省级', '0', '2c908f485b22271d015b2232c2bd000a', 'jiebangfujingguanxi', '', '', '20170331103049012', '20170405101154234', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b22271d015b22344726000c', 'cityDecisionjiebangfujingguanxi', '市级', '0', '2c908f485b22271d015b2232c2bd000a', 'jiebangfujingguanxi', '', '', '20170331103143142', '20170331103143142', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b22271d015b2234d586000d', 'countryDecisionjiebangfujingguanxi', '区县级', '0', '2c908f485b22271d015b2232c2bd000a', 'jiebangfujingguanxi', '', '', '20170331103219590', '20170331103219590', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b22271d015b22361c4a000e', 'nonPoliceDecisionjiebangfujingguanxi', '辅警', '0', '2c908f485b22271d015b2232c2bd000a', 'jiebangfujingguanxi', '', '', '20170331103343242', '20170331103405213', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '辅警人员判定节点走向，配置值为流程节点ID及名称，例：：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f485b22271d015b223763f1000f', 'policeDecisionjiebangfujingguanxi', '警员', '0', '2c908f485b22271d015b2232c2bd000a', 'jiebangfujingguanxi', '', '', '20170331103507121', '20170331103507121', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员人员判定节点走向，配置值为流程节点ID及名称，例：node_4-部门领导审核，指向办结，直接配置“办结”二个字', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f48627063e8016270839e0f0002', 'smsUserName', '短信平台用户名', '0', '2c908f35589411590158942446690001', 'smsfw', '', '', '20180329144816655', '20180329144902118', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '对接短信平台授权用户名', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f48627063e8016270841b280003', 'smsPwd', '短信平台密码', '0', '2c908f35589411590158942446690001', 'smsfw', '', '', '20180329144848679', '20180329144848679', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '短信平台接入授权密码', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f48627063e801627087b4a90004', 'smsAddress', '短信平台服务地址', '0', '2c908f35589411590158942446690001', 'smsfw', '', '', '20180329145244585', '20180329145525958', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '短信平台对外提供ws服务地址', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f58611d3cd701611d3e41ab0001', 'isOpenPersonScan', '是否开启人像采集功能', '0', '2c908f3c5b02f4d4015b02f898f90001', 'certSettingYD', '0', '', '20180122174114793', '20180122174114793', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '0代表不开启，1代表开启，默认不开启', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c580a159401580a23d2770001', 'WARINGIP', '异常IP地址预警', '1', '2c908f7c5828e935015828eb0ad60001', 'WARINGLOG', '', '', '201610281514290611', '201610281518270040', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c580a159401580a2466d70002', 'usualIP', 'ip地址范围', '0', '2c908f7c580a159401580a23d2770001', 'WARINGIP', '172.16.15.1-172.16.15.100', '', '201610281515070607', '201701011420430964', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '合法IP地址。ip范围之间用\";\"隔开配置规则：ip-ip;ip-ip 例：172.16.15.1-172.16.15.100;172.16.15.103-172.16.15.104', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c580a159401580a2589190004', 'WARINGTIME', '异常时间访问预警', '1', '2c908f7c5828e935015828eb0ad60001', 'WARINGLOG', '', '', '201610281516210913', '201610281518050119', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c580a159401580a25f0f70005', 'usualTIMEZONES', '正常时间段', '0', '2c908f7c580a159401580a2589190004', 'WARINGTIME', '08:00-11:00', '08:30-09:00', '201610281516480503', '201701011428070626', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '正常时间段\r\n配置规则：时间-时间\r\n例：08:00-11:00', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c5828e935015828eb0ad60001', 'YJSERVICE', '预警服务配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'root', '', '', '201611031440420197', '201611031440420197', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c5828e935015828effc540006', 'tongYongPeiZhi', '通用配置', '1', '2c908f48583da16601583dd7b2a80002', 'YJSERVICE', '', '', '201611031446060164', '201611031446060164', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c5828e935015828f45aae0009', 'TXYJ', '退休用户预警 ', '1', '2c908f7c5828e935015828eb0ad60001', 'WARINGDATA', '', '', '201611031450520462', '201610281511470925', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c5828e935015828f4e08e000a', 'maleTx', '男性退休年龄', '0', '2c908f7c5828e935015828f45aae0009', 'TXYJ', '60', '', '201611031451260734', '20170106193627921', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '单位：岁', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c5828e935015828f55f67000b', 'femaleTx', '女性退休年龄', '0', '2c908f7c5828e935015828f45aae0009', 'TXYJ', '55', '', '201611031451590207', '20170106193635706', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '单位：岁', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c582d2a2301582d3a2c560001', 'txyjTs', '退休预警天数', '0', '2c908f7c5828e935015828f45aae0009', 'TXYJ', '30', '', '201611041045360970', '20170106193645614', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '单位：天', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c58d8b7a20158d8be33970001', 'mailService', '是否开启邮箱服务', '0', '2c908fe557db84f60157db8d81690003', 'emailSetting', '0', '', '201612071804530513', '20170106190317226', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '填写“0”为 关闭 ；填写“1”为 开启', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f7c5958a31c015958c8649e0006', 'certSetting', '（有线）证书服务高级配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'root', '', '', '201701011447250086', '201701181707200822', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f8f580a124501580a1b92cd0002', 'umsfw', 'UMS服务配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'PKI', '', '', '201610281505290037', '201701181707580783', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '10', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f8f580a124501580a1d37150003', 'UMSUrl', 'UMS地址', '0', '2c908f8f580a124501580a1b92cd0002', 'umsfw', '', '', '201610281507160629', '20170106173648974', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '它是为了测试PKI服务里的UMS地址', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f955a889682015a88e262be0003', 'fwqctmlName', '服务器证书模板名称', '0', '2c908f3c594d2cd701594d41473c000a', 'fwqConfig', '服务器证书模板', '', '20170301160022206', '20170306204256844', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '对应警员RA中系统管理-模板管理-服务器证书的模板名称。可配置多个服务器证书模板，分隔符用|。例如服务器证书模板|服务器国密证书模板。', '18', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f955a889682015a88edb5f20004', 'fwqsubject', '服务器证书主题', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', 'CN=<IP>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,C=CN', '', '20170301161244402', '20170106200712877', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '定义服务器证书的证书主题格式，常用的按以下格式配置：CN=<IP>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,C=CN', '10', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f955a889682015a88f1fc670005', 'fwquserType', '服务器证书用户类型数据库表名称', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', 'fuwuqiyonghu', '', '20170301161724583', '20170106200813962', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置值与RA的服务器证书用户类型数据库表名称保持一致。对应RA系统中的系统管理-用户类型管理-服务器的用户类型数据库表名称', '11', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f955a889682015a88f3efbd0006', 'fwqdomain', '服务器证书的域名字段', '0', '2c908f3c594d2cd701594d41473c000a', 'jyBy506', 'fuwuqiyuming', '', '20170301161932413', '20170106202157180', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置值与RA的服务器证书的域名字段保持一致。对应RA系统中的系统管理-用户属性字典管理-服务器的用户类型-服务器域名-属性字典表字段名称', '12', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f955b1cbd22015b1d2aa2e50006', 'deviceLock', '是否开启证书介质解锁锁定功能', '0', '2c908f3557d241b30157d25b0b100002', 'jzpz', '0', '', '20170330110305189', '20170405142256550', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '证书介质解锁锁定功能策略：0不开启，1开启一所，2开启三所', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f955b3ce583015b3ced098c0002', 'certDjOrJd', '警员业务流程中是否开启证书冻结解冻', '0', '2c908f335b00a68f015b00bfe21e0002', 'certMake', '1', '', '20170405150339148', '20170405175652291', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员的用户管理、证书管理、自助服务等业务流程中是否开启证书冻结解冻：0不开启，1开启', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f955b432ba2015b432eff9d0001', 'sansuoUrl', '三所数字证书管理系统的地址', '0', '2c908f3557d241b30157d25b0b100002', 'jzpz', '', '192.168.12.172:8082', '20170406201325261', '20170406201757083', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f955b432ba2015b4342685d0002', 'sansuoMl', '三所数字证书管理系统的地址空间', '0', '2c908f3557d241b30157d25b0b100002', 'jzpz', '', 'http://www.jit.com/', '20170406203437262', '20170406203534447', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f955b43c6e8015b43dcbee0000d', 'yisuoUrl', '一所数字证书管理系统的地址', '0', '2c908f3557d241b30157d25b0b100002', 'jzpz', '', '', '20170406232311967', '20170406232311967', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908f955b43c6e8015b43dd232f000e', 'yisuoMl', '一所数字证书管理系统的地址空间', '0', '2c908f3557d241b30157d25b0b100002', 'jzpz', '', '', '20170406232337647', '20170406232337647', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac5962c4540159631db3ba0062', 'nonPoliceDecisionfjyonghuzhuce', '辅警', '0', '2c908f335acfed50015ad051d0130015', 'fjyonghuzhuceConfig', '', 'node_5-主管警员审核', '20170103145648058', '20170103150706779', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac5962c4540159631eb5800063', 'policeDecisionfjyonghuzhuce', '警员', '0', '2c908f335acfed50015ad051d0130015', 'fjyonghuzhuceConfig', '', 'node_6-所在部门审核', '20170103145754048', '20170103150723480', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-部门领导审核', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac5962c4540159632169640064', 'nonPoliceDecisionfjzhengshushenqing', '辅警', '0', '2c908f335acfed50015ad05237f80016', 'fjzhengshushenqingConfig', '', 'node_5-主管警员审核', '20170103150051172', '20170103150903433', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac5962c45401596322339c0065', 'policeDecisionfjzhengshushenqing', '警员', '0', '2c908f335acfed50015ad05237f80016', 'fjzhengshushenqingConfig', '', 'node_6-所在部门审核', '20170103150142940', '20170103150916897', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-部门领导审核', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac5962c45401596324b29f0066', 'nonPoliceDecisionfjzhengshubufa', '辅警', '0', '2c908f335acfed50015ad052a7980017', 'fjzhengshubufaConfig', '', 'node_5-主管警员审核', '20170103150426526', '20170103150956650', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '辅警判定节点走向，配置值为节点ID及名称，例：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac5962c45401596324fe790067', 'policeDecisionfjzhengshubufa', '警员', '0', '2c908f335acfed50015ad052a7980017', 'fjzhengshubufaConfig', '', 'node_6-所在部门审核', '20170103150445945', '20170103151013123', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-部门领导审核', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981ca79830047', 'fujingzhuguanjingyuanbiangengConfig', '辅警主管警员变更流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '201701091354070362', '201701091354070362', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '15', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981d36b3b0048', 'provinceDecisionfjzhuguanjingyuanbiangeng', '省级', '0', '2c908fac59812af2015981ca79830047', 'fujingzhuguanjingyuanbiangengConfig', '', 'node_6-省级管理员审核', '201701091403530531', '20170307095420905', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981d4eb160049', 'cityDecisionfjzhuguanjingyuanbiangeng', '市级', '0', '2c908fac59812af2015981ca79830047', 'fujingzhuguanjingyuanbiangengConfig', '', 'node_4-市级管理员审核', '201701091405310798', '20170307095429586', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981d628b7004a', 'countryDecisionfjzhuguanjingyuanbiangeng', '区县级', '0', '2c908fac59812af2015981ca79830047', 'fujingzhuguanjingyuanbiangengConfig', '', 'node_5-区县级领导审核', '201701091406530110', '20170307095438228', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981ddf490004d', 'provinceDecisionfjzhengshuyanqi', '省级', '0', '2c908f3c58fadcac0158fb28de9100bc', 'fjzhengshuyanqiConfig', '', 'node_8-省级管理员审核', '201701091415240048', '20170307095320746', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981e00ce9004e', 'cityDecisionfjzhengshuyanqi', '市级', '0', '2c908f3c58fadcac0158fb28de9100bc', 'fjzhengshuyanqiConfig', '', 'node_7-市级管理员审核', '201701091417410353', '20170307095337010', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981e0fd64004f', 'countryDecisionfjzhengshuyanqi', '区县级', '0', '2c908f3c58fadcac0158fb28de9100bc', 'fjzhengshuyanqiConfig', '', 'node_6-区县级领导审核', '201701091418420916', '20170307095345629', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981e4cc090052', 'provinceDecisionzhengshuxinxijiaozhun', '省级', '0', '2c908f3c58fadcac0158fb1bf81600b1', 'zhengshuxinxijiaozhunConfig', '', 'node_6-省级管理员审核', '201701091422520425', '20170307102328640', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981e598a60053', 'cityDecisionzhengshuxinxijiaozhun', '市级', '0', '2c908f3c58fadcac0158fb1bf81600b1', 'zhengshuxinxijiaozhunConfig', '', 'node_5-市级管理员审核', '201701091423440806', '20170307102322362', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981e65c480054', 'countryDecisionzhengshuxinxijiaozhun', '区县级', '0', '2c908f3c58fadcac0158fb1bf81600b1', 'zhengshuxinxijiaozhunConfig', '', 'node_4-区县级领导审核', '201701091424340888', '20170307102316920', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fac59812af2015981eaad6c0057', 'provinceDecisionzhengshushenqing', '省级', '0', '2c908f3c58fadcac0158fb0b6ebc009c', 'zhengshushenqingConfig', '', 'node_6-省级管理员审核', '201701091429170804', '20170307101904501', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fad576e7e9401576f00597c0005', 'baseSetting', '基础配置（必配）', '1', '0', 'root', '', '', '201609281214360384', '20170106191401623', '0', 'ffffffffffffffffffffffffffffffff', '超级管理员', '基础配置，必配项', '1', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fad57a30ac40157a3315e8e0001', 'jwf', '工作流基础设置', '1', '2c908f044887404b014887693bf80001', 'platformsetting', '', '', '201610081528240160', '201701181302400563', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fad57a30ac40157a335bcb90002', 'endDriverEventBean', '流程办结事件触发', '0', '2c908fad57a30ac40157a3315e8e0001', 'jwf', 'flowDiverEndEventService', 'flowDiverEndEventService', '201610081533100448', '20170315111941028', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '流程毁掉是的办结服务——配置值不可改。', '1', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fad57a30ac40157a336e3410003', 'appCode', '应用代码', '0', '2c908fad57a30ac40157a3315e8e0001', 'jwf', 'PCS', '', '201610081534250848', '20170307101854250', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '不可修改', '3', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fad57fb30d70157fb531a050002', 'GQDATE', '个人证书即将过期提示时间', '0', '2c908f335b00a68f015b00bfe21e0002', 'certSetting', '90', '', '201610251811490893', '20170106195035216', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此处配置具体数字，单位天。默认为90。即个人证书在90天以内要过期时，在证书信息页面提示用户还有多少天过期。', '8', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908faf64bb66bb0164bb8f23aa0001', 'isOpenDeviceManagerSyncData', '是否开启移动终端推送', '0', '2c908d0257f437ef0157f51967160001', 'syncconfig', '0', '', '20180721143757500', '20180721143819342', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '用于移动终端数据的推送。填写“1”为开启，填写“0”为不开启', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908faf64fe6e810164fea2617f0001', 'uiasManagerUrl', '多因子请求数据推送地址', '0', '2c908fe36481cba60164821134780003', 'uiasConfig', '', 'http://172.16.15.175:2020', '20180803151331965', '20180803151331965', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '多因子数据推送请求webservice', '8', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908faf65c64a5c0165c75020750002', 'isOpenDeviceSyncData', '是否开启移动介质推送', '0', '2c908d0257f437ef0157f51967160001', 'syncconfig', '0', '', '20180911142721844', '20180913100657741', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '用于移动介质数据的推送。填写“1”为开启，填写“0”为不开启', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908faf65d13e6b0165d1c226870001', 'exceedDay', '超期任务时间', '0', '2c9092115da5af88015da5c8cc05000a', 'tongYongPeiZhi', '60', '', '20180913150806645', '20180913171222187', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '按天为单位', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908faf65f100d90165f16d8e7d0001', 'cerUpload', '是否开启证书实体上传', '0', '2c908f3c5b02f4d4015b02f898f90001', 'userManageConfig', '0', '', '20180919184333611', '20180919224851748', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '1为开启，其他为不开启；开启后，用户新增/编辑可以上传cer格式的证书实体文件，保存后系统会解析证书实体文件获取到证书签名序列号与主题，并与用户进行关联', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca57a4066d0157a414f7ee0002', 'YHLX', 'PKI类型（不可修改）', '1', '2c908f044887404b014887693bf80001', 'platformsetting', '', '', '201610081937000064', '201701181656100635', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca57a4066d0157a415fd880003', 'JY', '警员', '0', '2c908fca57a4066d0157a414f7ee0002', 'YHLX', null, null, '201610081938070080', '201610081938070080', '1', '001', '超级管理员', null, '1', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca57a4066d0157a41643420004', 'FJ', '辅警', '0', '2c908fca57a4066d0157a414f7ee0002', 'YHLX', null, null, '201610081938240960', '201610081938240960', '1', '001', '超级管理员', null, '2', '-1', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5ad5c399015ad66ee0140005', 'certAutoCancel', '过期证书自动注销服务', '0', '2c908fe55828cf06015829465b3c000d', 'zsdqyj', '0', '', '20170316172434964', '20180126160542885', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '单位：天', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5ae94791015ae968261d0001', 'middlewareIP', '中间件IP', '0', '2c908f3c5adb4937015adb4d7cf70001', 'loginConfig', '', '', '20170320095001221', '20170320095001221', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '中间件IP', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5ae94791015ae96abe610002', 'middlewarePort', '中间件端口', '0', '2c908f3c5adb4937015adb4d7cf70001', 'loginConfig', '', '', '20170320095251297', '20170320095251297', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '中间件端口', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5afe04cd015afe0629050001', 'certsms', '开启证书下载短信验证', '0', '2c908f35589411590158942446690001', 'smsfw', '0', '3', '20170324095500996', '20170324095500996', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '是否开启证书下载短信验证，填写“0”为不开启，“1”为全部开启，“2”为只是警员开启，“3”为只是辅警开启', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5b033440015b0339f06a0001', 'zhengshuzhuxiaoConfig', '证书注销流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170325100940427', '20170325100940427', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '16', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5b033440015b0340c01b0002', 'provinceDecisionzhengshuzhuxiao', '省级', '0', '2c908fca5b033440015b0339f06a0001', 'zhengshuzhuxiaoConfig', '', 'node_6-省级管理员审核', '20170325101706843', '20170325101706843', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5b033440015b034374f70003', 'cityDecisionzhengshuzhuxiao', '市级', '0', '2c908fca5b033440015b0339f06a0001', 'zhengshuzhuxiaoConfig', '', 'node_5-市级管理员审核', '20170325102004215', '20170325102004215', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_34-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5b033440015b034600f00004', 'countryDecisionzhengshuzhuxiao', '区县级', '0', '2c908fca5b033440015b0339f06a0001', 'zhengshuzhuxiaoConfig', '', 'node_3-区县级领导审核', '20170325102251120', '20170325102251120', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5b033440015b035591ca0014', 'fjzhengshuzhuxiaoConfig', '辅警证书注销流程', '1', '2c908f48586091c1015860c1d49a0003', 'flowDecision', '', '', '20170325103951242', '20170325103951242', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '17', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5b033440015b035d5a8e0015', 'provinceDecisionfjzhengshuzhuxiao', '省级', '0', '2c908fca5b033440015b035591ca0014', 'fjzhengshuzhuxiaoConfig', '', 'node_8-省级管理员审核', '20170325104821390', '20170325104821390', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '省级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-省审核', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5b033440015b03603cd00016', 'cityDecisionfjzhengshuzhuxiao', '市级', '0', '2c908fca5b033440015b035591ca0014', 'fjzhengshuzhuxiaoConfig', '', 'node_7-市级管理员审核', '20170325105130384', '20170325105130384', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '市级人员判定节点走向，配置值为流程节点ID及名称，例：node_34-市审核', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5b033440015b036234570017', 'countryDecisionfjzhengshuzhuxiao', '区县级', '0', '2c908fca5b033440015b035591ca0014', 'fjzhengshuzhuxiaoConfig', '', 'node_6-区县级管理员审核', '20170325105339287', '20170325105339287', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '区县级人员判定节点走向，配置值为流程节点ID及名称，例：node_4-区县审核', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5b033440015b036482f20018', 'nonPoliceDecisionfjzhengshuzhuxiao', '辅警', '0', '2c908fca5b033440015b035591ca0014', 'fjzhengshuzhuxiaoConfig', '', 'node_4-主管警员审核', '20170325105610482', '20170103151346503', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '辅警判定节点走向，配置值为节点ID及名称，例：node_1-主管警员审核', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fca5b033440015b0365d8bf0019', 'policeDecisionfjzhengshuzhuxiao', '警员', '0', '2c908fca5b033440015b035591ca0014', 'fjzhengshuzhuxiaoConfig', '', '办结', '20170325105737983', '20170103151355677', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员判定节点走向，配置值为节点ID及名称，例：node_1-部门领导审核', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe36481cba60164821134780003', 'uiasConfig', '多因子服务配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'seniorSetting', '', '', '20180710104202999', '20180719151153590', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '16', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe36481cba6016482124ce00004', 'isOpenUias', '是否开启与多因子对接', '0', '2c908fe36481cba60164821134780003', 'uiasConfig', '0', '', '20180710104314784', '20180719163348199', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '0为不开启 1为开启 默认为不开启', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe364b019130164b053f8ba0004', 'uiasAppCode', '警证通在多因子中的应用代码', '0', '2c908fe36481cba60164821134780003', 'uiasConfig', 'PCS', '', '20180719101730554', '20180719153721035', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置为警证通在多因子中的注册的应用代码，无特殊情况不需要修改此配置值', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe364b019130164b05f60490005', 'uiasUrl', '多因子的应用地址', '0', '2c908fe36481cba60164821134780003', 'uiasConfig', '', 'http://172.16.15.175:2020', '20180719102957961', '20180719163333600', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', 'http://[ip]:[port],配置时根据多因子的配置修改IP和端口号', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe364b019130164b060c73d0006', 'uiasAppName', '多因子应用名', '0', '2c908fe36481cba60164821134780003', 'uiasConfig', 'uias', '', '20180719103129853', '20180719153716199', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置是多因子的应用名，无特殊情况不需要修改此配置值', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe364b019130164b063ad140007', 'logoutUiasService', '退出多因子认证服务', '0', '2c908fe36481cba60164821134780003', 'uiasConfig', '//uias/shotOff?jsoncallback=?', '', '20180719103439764', '20180719152549628', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置项为多因子的请求uri，无特殊情况不需要修改此配置值', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe364b019130164b07606c90008', 'uiasManageName', '多因子管理应用名称', '0', '2c908fe36481cba60164821134780003', 'uiasConfig', 'uiasmag', '', '20180719105442377', '20180719163337580', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置为多因子管理端的应用名，无特殊情况不需要修改此配置值', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe364b019130164b0793a5e0009', 'uiasWSDL', '多因子webservice地址', '0', '2c908fe36481cba60164821134780003', 'uiasConfig', '/wsauth/userWSService?wsdl', '', '20180719105812190', '20180719152545764', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置为推送服务的webservice地址，无特殊情况不需要修改此配置值', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe364da7ad60164da7e71250002', 'isOpenDeviceNumMakeCert', '按移动设备终端号空中发证', '0', '2c9092115da5af88015da5ba1a390004', 'certMakeYD', '1', '', '20180727144756965', '20180727155211197', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '默认值为1，是按照设备终端号来进行空中发证的，当配置为0时，时按照身份证号进行空中发证的', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe365175370016517584df50002', 'pcsVirtualIpAddress', '警证通虚拟ip地址', '0', '2c908fe36481cba60164821134780003', 'uiasConfig', '', '', '20180808102307765', '20180808102521895', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此地址为警证通虚拟ip地址，默认自动取本地ip地址，不需要配置，如果配置了虚拟ip访问，http://[ip]:[port],配置时根据虚拟IP的地址修改IP和端口号', '9', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe3656ab66701656ad25c690002', 'jinghaoType', '是否默认勾选按警号查询', '0', '2c908f3c5b02f4d4015b02f898f90001', 'userManageConfig', '0', '', '20180824152455784', '20180824152455784', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置值如果为0，则在快搜中按警号查询框默认不选中；配置值如果为1，则在快搜中按警号查询框默认选中。', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe3665bf08301665c7805d50002', 'isMustBandDeviceManager', '下载移动证书是否必须绑定移动终端设备', '0', '2c9092115da5af88015da5ba1a390004', 'certMakeYD', '0', '', '20181010133421653', '20181010154005354', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '下载移动证书是否必须绑定移动终端设备（默认 0:不必须 1：必须）', '8', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe3669e8cdd01669e9105200002', 'deviceScope', '地市介质范围', '0', '2c9092115da0f615015da219c20c0002', 'jzpzYD', '', '', '20181023093636128', '20181023133611087', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '控制地市能看到的介质，配置值为介质名称，如果多个则使用逗号分隔，逗号使用英文逗号，没有值就回显全部介质，默认没有值。', '8', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe3673e2b3b01673e602b250003', 'isMobileRequired', '是否手机号为必填项', '0', '2c908f3c5b02f4d4015b02f898f90001', 'userManageConfig', '0', '', '20181123102229157', '20181123102229157', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '默认为0不必填，如果配置为1，用户基础属性中的手机号则为必填信息，包括用户管理、用户导入操作。', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe557db84f60157db8d81690003', 'emailSetting', '邮箱服务配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'root', '', '', '201610191407460537', '201610251951130335', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '8', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe557db84f60157db8ebc0a0004', 'mailSendAddress', '邮箱发送地址', '0', '2c908fe557db84f60157db8d81690003', 'emailSetting', '', '', '201610191409070082', '20170106173712207', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '系统通知时发邮箱的地址，也就是说邮件是哪个邮箱地址发出的。格式：***@qq.com', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe557db84f60157db8f12490005', 'mailPassWord', '邮箱密码', '0', '2c908fe557db84f60157db8d81690003', 'emailSetting', '', '', '201610191409290161', '20170106190422825', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '邮箱发送地址的密码', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe557fa75ba0157fa77b0c20004', 'appName', '应用名称', '0', '2c908fad57a30ac40157a3315e8e0001', 'jwf', '警证通', '', '201610251412100562', '20170307101858737', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '不可修改', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe5580a684101580aa1027a0037', 'loginSetting', '服务端口设置', '1', '2c908fad576e7e9401576f00597c0005', 'platformsetting', '', '', '201610281731130913', '201701181302510121', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe5580a684101580aa26cc60038', 'httpsPort', 'https登录端口', '0', '2c908fe5580a684101580aa1027a0037', 'loginSetting', '8443', '', '201610281732460662', '20170106172616364', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '如果需要修改tomcat端口号，需要在tomcat\\conf\\server.xml文件中的<Connector>属性上修改', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe55828cf06015829465b3c000d', 'zsdqyj', '证书到期预警', '1', '2c908f7c5828e935015828eb0ad60001', 'WARINGDATA', '', '', '201611031620260556', '201611031620260556', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe55828cf060158294f1a10000e', 'certYjDays', '证书到期预警天数', '0', '2c908fe55828cf06015829465b3c000d', 'zsdqyj', '', '365', '201611031629590696', '201612150952520796', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '单位：天', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe5582ccc9a01582cdd12eb0001', 'zshydyj', '证书活跃度预警', '1', '2c908f7c5828e935015828eb0ad60001', 'WARINGDATA', '', '', '201611040903550600', '201611040903550600', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe5582ccc9a01582cdf785e0002', 'certNotUseYjDays', '证书未使用预警天数', '0', '2c908fe5582ccc9a01582cdd12eb0001', 'zshydyj', '90', '', '201611040906320669', '20170106193601389', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '单位：天', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe763b5bc930163b5c667840001', 'selectCloseFlow', '选择关闭流程', '0', '2c908f7c5828e935015828effc540006', 'tongYongPeiZhi', '', '', '20180531183748769', '20180601160009223', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '默认开启所有流程，C0:证书注册，C1:补发证书，C2:更新证书，C3:证书延期，C4:冻结和解冻，C5:证书注销；WC0:移动证书注册，WC1:移动证书补发，WC2:移动证书更新，WC3:移动证书延期，WC4:移动证书冻结/解冻，WC5:移动证书注销;U0:用户新增，U1:用户编辑，U2:用户删除，U3:用户冻结，U4:用户解冻,U5:用户退休，U6:用户返聘，U7:用户调入，U8:用户调出；D0:机构新增，D1:机构修改，D2:机构删除，要关闭多个流程，按例子配置：C0,C1', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c908fe763c883280163c88a54400001', 'jinghaoCOL', '警号扩展属性列', '0', '2c908f3c5b02f4d4015b02f898f90001', 'userManageConfig', '', '', '20180604100458791', '20180604124753708', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置元数据管理中“警号”的扩展属性列，在元数据管理中增加属性名为“警号”的用户属性后会自动将扩展属性列填入配置值。也可以查询元数据管理中的“警号”的用户属性后，将扩展属性列填入配置值', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c909052631e5f5301631e7b0fa10001', 'tgpz', '推广配置', '0', '2c908f044887404b014887693bf80001', 'platformSetting', '', '1', '20180502093251473', '20180502093251473', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c90905d6772ca4e0167730ddc080001', 'exceedDayYX', '超期任务时间', '0', '2c908f3c59918b760159919819e20002', 'tongYongPeiZhi', '60', '', '20181203155227377', '20181203155227377', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c90905e644957c301644972ac200003', 'rkkyjyk', '人口库与警员库配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'seniorSetting', '', '', '20180629105009312', '20180629105009312', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '12', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c90905e644957c301644977d3b60005', 'rkkUrl', '人口库服务地址', '0', '2c90905e644957c301644972ac200003', 'rkkyjyk', '', 'http://10.100.17.163:8180/node_rest/', '20180629105547126', '20180702105431945', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c90905e644957c301644978cdca0007', 'jykUrl', '警员库服务地址', '0', '2c90905e644957c301644972ac200003', 'rkkyjyk', '', 'http://10.100.17.163:8180/node_rest/', '20180629105651146', '20180702105544137', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c90905e6458dfed016458e99a330002', 'rkkService', '是否开启人口库比对服务', '0', '2c90905e644957c301644972ac200003', 'rkkyjyk', '0', '', '20180702105421746', '20180706141338505', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '填写“0”为 关闭 ；填写“1”为 开启', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c90905e6458dfed016458eaa78b0003', 'jykService', '是否开启警员库比对服务', '0', '2c90905e644957c301644972ac200003', 'rkkyjyk', '0', '', '20180702105530698', '20180706141347605', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '填写“0”为 关闭 ；填写“1”为 开启', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c90905e64b0fb7d0164b12e29810003', 'PCSProxy', '警证通扩展服务配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'seniorSetting', '', '', '20180719141549889', '20180719151146758', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '15', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c90905e64b1609c0164b16381890001', 'PCSProxyURL', '扩展服务地址', '0', '2c90905e64b0fb7d0164b12e29810003', 'PCSProxy', '', '', '20180719151405805', '20180719151405805', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置警证通代理请求服务系统地址，默认无配置值，系统自动会按当前服务器ip和端口自动连接代理请求服务系统。如果需要自定义地址，配置值按以下规则修改http://[IP]:[端口]/应用名称，例如http://127.0.0.1:8080/police/。代理地址由警证通产品团队提供。', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115ccd7aa8015ccd8dd36c0002', 'seniorSetting', '高级配置（选配）', '1', '0', 'root', '', '', '20170622100722988', '20170622100816111', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '高级配置，选配项', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115ccd7aa8015ccd8f714a0003', 'idcardService', '是否开启身份证号登录配置', '0', '2c908f3c5adb4937015adb4d7cf70001', 'idcardSetting', '0', '0', '20170622100908938', '20170623171735288', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '1为开启，0为不开启', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d358c65050001', 'wirelssRaIp', 'RA服务器IP', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', '', '172.16.13.135', '20170712144619620', '20170712144619620', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', 'RA服务器的IP，按照实际情况填写。', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d358ddd920002', 'wirelessCmsRaPort', '监控端口', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', '', '30444', '20170712144756050', '20170712144756050', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '监控警员制证专用端口，该端口暂时只用于CMS相关功能。', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d358f59f10003', 'wirelessTxPort', '通信端口', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', '40625', '', '20170712144933425', '20170712144933425', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '通信端口按实际情况填写，一般默认为40625', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d359001440004', 'wirelessRacsxy', '传输协议', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', 'http', '', '20170712145016259', '20170712145016259', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '定义传输协议的方式', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d3590a2040005', 'wirelessRaVersion', '版本号', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', '', '', '20170712145057412', '20170712145057412', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此处配置RA版本号，去掉版本号中间的\".\"，直接填写数字即可。例如：版本号为5.0.6.9，则直接配置5069。', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d35939b4e0006', 'wirelessJksPass', 'jks密码', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', '11111111', '', '20170712145412302', '20170712145412302', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '密码默认为六个1，一般也可能为八个1', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d35957c0d0007', 'wirelessDatPass', 'dat密码', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', '11111111', '', '20170712145615373', '20170712145615373', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', 'dat密码默认为六个1，一般也可能为八个1', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d359625eb0008', 'wirelessMycd506', '密钥长度', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', '1024', '', '20170712145658859', '20170712145658859', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置为证书密钥长度。默认为1024', '8', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d3596e87c0009', 'wirelessSubject', '警员证书主题', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', 'CN=<姓名> <身份证号>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,C=CN', 'CN=<姓名> <身份证号>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,st=01,C=CN', '20170712145748668', '20170712145748668', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '定义警员的证书主题格式，常用的按以下格式配置：E=<电子邮件>,CN=<姓名> <身份证号>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,C=CN', '9', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d359814ad000a', 'wirelessUserType', '警员证书用户类型数据库表名称', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', 'jingyuanyonghu', '', '20170712145905517', '20170712145905517', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置值与RA的警员证书用户类型数据库表名称保持一致。对应RA系统中的系统管理-用户类型管理-警员的用户类型数据库表名称', '10', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d35995837000b', 'wirelessFwqsubject', '服务器证书主题', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', 'CN=<IP>,OU=<OU>,O=<O>,L=<L>,st=01,c=cn', '', '20170712150028343', '20170712150028343', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '定义服务器证书的证书主题格式，常用的按以下格式配置：CN=<IP>,OU=<OU>,O=<O>,L=<L>,st=01,c=cn', '10', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d359a1fee000c', 'wirelessFwquserType', '服务器证书用户类型数据库表名称', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', 'fuwuqiyonghu', '', '20170712150119470', '20170712150119470', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置值与RA的服务器证书用户类型数据库表名称保持一致。对应RA系统中的系统管理-用户类型管理-服务器的用户类型数据库表名称', '11', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d359b885f000d', 'wirelessFwqdomain', '服务器证书的域名字段', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', 'fuwuqiyuming', '', '20170712150251743', '20170712150251743', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置值与RA的服务器证书的域名字段保持一致。对应RA系统中的系统管理-用户属性字典管理-服务器的用户类型-服务器域名-属性字典表字段名称', '13', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d355816015d359c35f9000e', 'wirelessRaType', 'RA管理体系（RSA或SM2）', '0', '2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', 'RSA', 'RSA', '20170712150336185', '20170712150336185', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置填写RA管理体系，一般都为RSA，SM2也支持。', '14', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d3ec11b015d3f1fe0f00002', 'ydzsdqyj', '移动证书到期预警', '1', '2c908f7c5828e935015828eb0ad60001', 'WARINGDATA', '', '', '20170714112400112', '20170714112400112', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d3ec11b015d3f2081dc0003', 'ydcertYjDays', '移动证书到期预警天数', '0', '2c9092115d3ec11b015d3f1fe0f00002', 'ydzsdqyj', '', '365', '20170714112441307', '20170714112441307', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '单位：天', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d3ec11b015d3f2111170004', 'ydcertAutoCancel', '过期证书自动注销服务（移动）', '0', '2c9092115d3ec11b015d3f1fe0f00002', 'ydzsdqyj', '0', '', '20170714112517975', '20180129140743026', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '单位：天', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d3ec11b015d3f22ab050010', 'ydzshydyj', '移动证书活跃度预警', '1', '2c908f7c5828e935015828eb0ad60001', 'WARINGDATA', '', '', '20170714112702917', '20170714112702917', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115d3ec11b015d3f234b570011', 'ydcertNotUseYjDays', '证书未使用预警天数', '0', '2c9092115d3ec11b015d3f22ab050010', 'ydzshydyj', '90', '', '20170714112743959', '20170714112743959', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '单位：天', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da0f615015da219c20c0002', 'jzpzYD', '移动介质服务配置', '1', '2c9092115da5af88015da5b2eeea0003', 'PKI', '', '', '20170802163943372', '20170802163943372', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da0f615015da21ba84a0003', 'deviceLockYD', '是否开启证书介质解锁锁定功能', '0', '2c9092115da0f615015da219c20c0002', 'jzpzYD', '0', '', '20170802164147850', '20170802164354142', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '证书介质解锁锁定功能策略：0不开启，1开启一所，2开启三所', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da0f615015da21d152a0004', 'sansuoUrlYD', '三所数字证书管理系统的地址', '0', '2c9092115da0f615015da219c20c0002', 'jzpzYD', '', 'http://192.168.2.16:8082/DigCertMgmtWS/services/raNotify', '20170802164321258', '20170802164359337', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da0f615015da21e27e40005', 'sansuoMlYD', '三所数字证书管理系统的地址空间', '0', '2c9092115da0f615015da219c20c0002', 'jzpzYD', '', 'http://services.ws.cert.cr.com', '20170802164431587', '20170802164431587', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da0f615015da2257fbe0006', 'yisuoUrlYD', '一所数字证书管理系统的地址', '0', '2c9092115da0f615015da219c20c0002', 'jzpzYD', '', '', '20170802165232830', '20170802165232830', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da0f615015da225d34d0007', 'yisuoMlYD', '一所数字证书管理系统的地址空间', '0', '2c9092115da0f615015da219c20c0002', 'jzpzYD', '', '', '20170802165254221', '20170802165254221', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da0f615015da2265dab0008', 'sm2applicationNameYD', 'SM2介质应用名称', '0', '2c9092115da0f615015da219c20c0002', 'jzpzYD', 'JITAPPLICATION_SM2', '', '20170802165329643', '20170802165329643', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '每一把SM2算法KEY在PKI产品制证之前，都需要先进行格式化和创建应用，且创建的应用名称需与证书对应模板中配置的应用名称一致。', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5af88015da5b2eeea0003', 'certSettingYD', '（移动）证书服务高级配置', '1', '2c9092115ccd7aa8015ccd8dd36c0002', 'PKI', '', '', '20170803092553514', '20170803092553514', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5af88015da5ba1a390004', 'certMakeYD', '证书管理配置', '1', '2c9092115da5af88015da5b2eeea0003', 'certSettingYD', '', '', '20170803093343353', '20170803093343353', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5af88015da5c3d6c00006', 'GQDATEYD', '移动个人证书即将过期提示时间', '0', '2c9092115da5af88015da5ba1a390004', 'certSettingYD', '90', '', '20170803094421440', '20170803094421440', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此处配置具体数字，单位天。默认为90。即个人证书在90天以内要过期时，在证书信息页面提示用户还有多少天过期。', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5af88015da5c7ccfe0008', 'certMakeTypeYD', 'RA版本配置', '0', '2c9092115da5af88015da5c8cc05000a', 'certSettingYD', '', '506', '20170803094841086', '20170803094841086', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '暂时在会支持506制证方式，后期可扩展。', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5af88015da5c851070009', 'certMakeBy506YD', '（移动）证书服务基础配置', '1', '2c908fad576e7e9401576f00597c0005', 'certSettingYD', '', '', '20170803094914887', '20170803094914887', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5af88015da5c8cc05000a', 'tongYongPeiZhi', '通用配置', '1', '2c9092115da5af88015da5b2eeea0003', 'certSettingYD', '', '', '20170803094946372', '20170803094946372', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5af88015da5cdef09000c', 'certMakeRangeYD', '管理员可见待下载证书范围策略', '0', '2c9092115da5af88015da5ba1a390004', 'certMakeYD', '1', '1', '20170803095523016', '20170803095523016', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '管理员可见待下载证书范围策略：(管理全部下级单位设置1，管理本单位设置2)。', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5af88015da5ced447000d', 'certDjOrJdYD', '警员业务流程中是否开启证书冻结解冻', '0', '2c9092115da5af88015da5ba1a390004', 'certMakeYD', '0', '1', '20170803095621703', '20170803095621703', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '警员的用户管理、证书管理、自助服务等业务流程中是否开启证书冻结解冻：0不开启，1开启', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5af88015da5d91829000e', 'fjcertDjOrJdYD', '辅警业务流程中是否开启证书冻结解冻', '0', '2c9092115da5af88015da5ba1a390004', 'certMakeYD', '0', '', '20170803100734441', '20170803100734441', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '辅警的用户管理、证书管理、自助服务等业务流程中是否开启证书冻结解冻：0不开启，1开启', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5af88015da5dd23fa0010', 'jwBy506YD', '警员506RA配置', '1', '2c9092115da5af88015da5c851070009', 'certMakeBy506YD', '', '', '20170803101159610', '20170803101159610', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5ee49a00001', 'fjBy506YD', '辅警506RA配置', '1', '2c9092115da5af88015da5c851070009', 'certMakeBy506YD', '', '', '20170803103043357', '20170803103043357', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5f387860002', 'fjraIpYD', 'RA服务器IP', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', '', '172.16.15.135', '20170803103626886', '20170803103626886', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '辅警RA服务器的IP，按照实际情况填写。', '1', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5f404900003', 'fjCmsRaPortYD', '监控端口', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', '', '30444', '20170803103658896', '20170803103658896', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '监控辅警制证专用端口，该端口暂时只用于CMS相关功能。', '3', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5f4b9680004', 'fjtxPortYD', '通信端口', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', '40625', '', '20170803103745192', '20170803103745192', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '通信端口按实际情况填写，一般默认为40625', '4', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5f9d0840005', 'fjracsxyYD', '传输协议', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', 'http', '', '20170803104318788', '20170803104318788', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '定义传输协议的方式', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5faa7a90006', 'fjraVersionYD', '版本号', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', '', '', '20170803104413865', '20170803104413865', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此处配置RA版本号，去掉版本号中间的\".\"，直接填写数字即可。例如：版本号为5.0.6.9，则直接配置5069。', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5fb317b0007', 'fjjksPassYD', 'jks密码', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', '11111111', '', '20170803104449147', '20170803104449147', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '密码默认为六个1，一般也可能为八个1', '6', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5fbcbf20008', 'fjdatPassYD', 'dat密码', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', '11111111', '', '20170803104528690', '20170803104528690', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', 'dat密码默认为六个1，一般也可能为八个1', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5fc5cbf0009', 'fjmycd506YD', '密钥长度', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', '1024', '', '20170803104605759', '20170803104605759', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置为证书密钥长度。默认为1024', '8', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5fcf4e5000a', 'fjsubjectYD', '辅警证书主题', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', 'CN=<姓名> <身份证号>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,C=CN', '', '20170803104644709', '20170803104644709', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '定义辅警的证书主题格式，常用的按以下格式配置：E=<电子邮件>,CN=<姓名> <身份证号>,OU=<机构编码10,11>,OU=<机构编码8,9>,O=<机构编码6,7>,L=<机构编码4,5>,L=<机构编码2,3>,ST=<机构编码0,1>,C=CN', '9', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5fdd1aa000b', 'fjuserTypeYD', '辅警证书用户类型数据库表名称', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', '', 'jingyuanyonghu', '20170803104741226', '20170803104741226', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置值与RA的辅警证书用户类型数据库表名称保持一致。对应RA系统中的系统管理-用户类型管理-辅警的用户类型数据库表名称', '10', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5fec2ea000c', 'fjraTypeYD', 'RA管理体系（RSA或SM2）', '0', '2c9092115da5e654015da5ee49a00001', 'fjBy506YD', 'RSA', '', '20170803104842985', '20170803104842985', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此配置填写RA管理体系，一般都为RSA，SM2也支持。', '11', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da5ff8fc8000d', 'ctmlNameYD', '警员RSA模板名称', '0', '2c9092115da5af88015da5dd23fa0010', 'jyConfigYD', '警员证书模板', '警员证书模板', '20170803104935432', '20170803104935432', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '对应RA中系统管理-模板管理-警员证书的模板名称。', '15', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da60006f9000e', 'sm2ctmlNameYD', '警员SM2模板名称', '0', '2c9092115da5af88015da5dd23fa0010', 'jyConfigYD', '警员模板', '警员SM2模板', '20170803105005945', '20170803105005945', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '对应RA中系统管理-模板管理-警员证书的模板名称。', '17', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da6007311000f', 'signDepYD', '签发单位', '0', '2c9092115da5af88015da5dd23fa0010', 'jyConfigYD', '省厅', '', '20170803105033617', '20170803105033617', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '签发单位根据实际情况配置名称即可。', '16', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da600fd330010', 'fjctmlNameYD', '辅警RSA模板名称', '0', '2c9092115da5e654015da5ee49a00001', 'fjConfigYD', '辅警模板', '', '20170803105108979', '20170803105108979', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '对应RA中系统管理-模板管理-辅警证书的模板名称。', '12', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da60186550011', 'sm2fjctmlNameYD', '辅警SM2模板名称', '0', '2c9092115da5e654015da5ee49a00001', 'fjConfigYD', '辅警模板', '', '20170803105144085', '20170803105144085', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '对应RA中系统管理-模板管理-辅警证书的模板名称。', '14', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115da5e654015da601fd360012', 'fjsignDepYD', '签发单位', '0', '2c9092115da5e654015da5ee49a00001', 'fjConfigYD', '省厅（辅警）', '', '20170803105214518', '20170803105214518', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '签发单位根据实际情况配置名称即可。', '13', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092115e97cd35015e97e27db50008', 'provinceDepcode', '市级用户省级节点审核', '0', '2c908f7c5828e935015828effc540006', 'flowConfig', '', '', '20170919100556532', '20170921104959113', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此值可不配置、采用逗号分隔\r\n配置特殊用户机构\r\n', '5', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('2c9092116033d44d016033dc7f3e0001', 'certUpdateIsOpen', '是否开启证书更新后通知介质客户端服务', '0', '2c908f3557d241b30157d25b0b100002', 'jzpz', '0', '', '20171208100256667', '20171208100443762', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '如果开启此项，则用户信息发生变化时通知介质客户端消息提醒，证书更新完成后关闭介质客户端消息提醒;0不开启，2开启三所;', '7', '0', '1');
INSERT INTO `jpt_configmanager` VALUES ('40289f2065e6483a0165e64db8e70001', 'DataSynchroUrl', '数据同步地址', '0', '2c90905e64b0fb7d0164b12e29810003', 'PCSProxy', '', '', '20180917145257941', '20180917145357304', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '用于与第三方进行数据同步，获取第三方机构、用户等数据接口地址', '2', '0', '1');

-- ----------------------------
-- Table structure for jpt_configmanager_affiliated
-- ----------------------------
DROP TABLE IF EXISTS `jpt_configmanager_affiliated`;
CREATE TABLE `jpt_configmanager_affiliated` (
  `INNERID` char(32) NOT NULL,
  `CONFIGMANAGERID` varchar(510) DEFAULT NULL,
  `CONFIGMANAGERNAME` varchar(510) DEFAULT NULL,
  `CONFIGMANAGERVALUE` varchar(4000) DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT NULL,
  `DEFAULTVALUE` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`INNERID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_configmanager_affiliated
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_configmanager_affiliated_s
-- ----------------------------
DROP TABLE IF EXISTS `jpt_configmanager_affiliated_s`;
CREATE TABLE `jpt_configmanager_affiliated_s` (
  `INNERID` char(32) NOT NULL,
  `CONFIGMANAGERID` varchar(510) DEFAULT NULL,
  `CONFIGMANAGERNAME` varchar(510) DEFAULT NULL,
  `CONFIGMANAGERVALUE` varchar(4000) DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT NULL,
  `DEFAULTVALUE` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`INNERID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_configmanager_affiliated_s
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_configmanager_service
-- ----------------------------
DROP TABLE IF EXISTS `jpt_configmanager_service`;
CREATE TABLE `jpt_configmanager_service` (
  `INNERID` char(32) NOT NULL,
  `CONFIGMANAGERID` varchar(510) DEFAULT NULL,
  `CONFIGMANAGERNAME` varchar(510) DEFAULT NULL,
  `CONFIGMANAGERTYPE` varchar(4) DEFAULT NULL,
  `PARENTIID` varchar(126) DEFAULT NULL,
  `PARENTID` varchar(510) DEFAULT NULL,
  `DEFAULTVALUE` varchar(4000) DEFAULT NULL,
  `CONFIGMANAGERVALUE` varchar(4000) DEFAULT NULL,
  `CREATETIME` bigint(20) DEFAULT NULL,
  `LASTMODIFYTIME` bigint(20) DEFAULT NULL,
  `ALLOWEDIT` varchar(4) DEFAULT NULL,
  `AUTHOR` varchar(510) DEFAULT NULL,
  `AUTHORNAME` varchar(510) DEFAULT NULL,
  `DESCRIPTION` varchar(1022) DEFAULT NULL,
  `ORDERNUM` int(11) DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT NULL,
  `ISPLATFORM` int(11) DEFAULT NULL,
  PRIMARY KEY (`INNERID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_configmanager_service
-- ----------------------------
INSERT INTO `jpt_configmanager_service` VALUES ('0', 'root', '配置根节点', '1', '-1', '-1', null, null, '20140723', '0', '0', '1', 'guanliyuan', '注：初始化数据项；0', '0', '-1', null);
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5938e31f015938f027c60001', 'syncconfig', '数据推送', '1', '0', 'root', '', '', '201612261023000037', '201612261023000037', '1', null, null, '', '1', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5938e31f015938f266260003', 'ums', 'UMS配置', '1', '2c908fad5938e31f015938f027c60001', 'syncconfig', '', 'umsinit', '201612261025270077', '201701041238010686', '1', null, null, '', '1', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5938e31f015938f4b7db0004', 'isOpenUMS', '是否开启ums推送服务', '0', '2c908fad5938e31f015938f266260003', 'ums', '0', '', '201612261027590067', '201701211443220984', '1', null, null, '1开启；非1不开启', '1', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5938e31f015938f71c430005', 'orgwebservice', '机构调用地址', '0', '2c908fad5938e31f015938f266260003', 'ums', 'http://172.16.15.103:8002/service/pmi/orgExtend?wsdl', '', '201612261030350842', '201612261030350842', '1', null, null, '', '2', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5938e31f015938f7f02a0006', 'userwebservice', '用户调用接口地址', '0', '2c908fad5938e31f015938f266260003', 'ums', 'http://172.16.15.103:8002/service/pmi/userExtend?wsdl', '', '201612261031300089', '201612261031300089', '1', null, null, '', '3', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad594dc29a01594dc3b2e00001', 'authtype', '认证类型', '0', '2c908fad5938e31f015938f266260003', 'ums', '', '0', '201612301126280055', '201612301126280055', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad594dc29a01594dc40b030002', 'authIP', '认证IP', '0', '2c908fad5938e31f015938f266260003', 'ums', '', 'jzt', '201612301126500627', '201612301126500627', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5986f8f001598739fb720002', 'aes', 'AES配置', '1', '2c908fad5938e31f015938f027c60001', 'syncconfig', '', 'aesinit', '201701101514010201', '201701101515500747', '', null, null, '', '2', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5986f8f00159873dc4200003', 'isOpenAES', '是否开启aes推送服务', '0', '2c908fad5986f8f001598739fb720002', 'aes', '', '', '201701101518090184', '201702151626570814', '', null, null, '1开启，非1不开启', '1', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5a20d8aa015a20dbded10004', 'dialect', '数据库驱动方言', '0', '2c908fad5986f8f001598739fb720002', 'aes', '', 'org.hibernate.dialect.Oracle9Dialect', '201702091112440753', '201702091112440753', '1', null, null, '', '1', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5a20d8aa015a20dc45730005', 'driver', '数据库驱动', '0', '2c908fad5986f8f001598739fb720002', 'aes', '', 'oracle.jdbc.driver.OracleDriver', '201702091113110027', '201702091113110027', '1', null, null, '', '2', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5a20d8aa015a20dec2080007', 'url', '数据库路径地址', '0', '2c908fad5986f8f001598739fb720002', 'aes', '', 'jdbc:oracle:thin:@172.16.15.163:1521:orcl', '201702091115530992', '201702091115530992', '1', null, null, '', '3', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5a20d8aa015a20dfc4d20008', 'username', '数据库用户名', '0', '2c908fad5986f8f001598739fb720002', 'aes', '', 'lnsplat_aes', '201702091117000242', '201702091117000242', '1', null, null, '', '4', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5a20d8aa015a20e016d00009', 'password', '数据库密码', '0', '2c908fad5986f8f001598739fb720002', 'aes', '', 'lnsplat_aes', '201702091117210231', '201702091117210231', '1', null, null, '', '5', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5a4472e7015a447594af0002', 'timeconfig', '时间配置', '1', '0', 'root', '', '', '201702160907200878', '201702160907200878', '1', null, null, '', '1', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908fad5a4472e7015a44760ed00003', 'interval', '间隔时间', '0', '2c908fad5a4472e7015a447594af0002', 'timeconfig', '', '180000', '201702160907520144', '201702171424250084', '1', null, null, '以毫秒为单位，配置180000为三分钟推送一次', '1', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf63cdbc940163ce7582550001', 'zhutituisong', '主题推送', '1', '2c908fad5938e31f015938f027c60001', 'syncconfig', '', '', '201806051339570652', '201806051339570652', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf63d369d80163d3b69c9f0001', 'userPush', '用户推送的主题', '0', '2c908faf64b076a80164b07e48d90001', 'tongyong', '', 'jit-PcsTopic', '201806061409100296', '201806261037580929', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置推送的主题，以逗号分隔，proxy默认使用jit-PcsTopic主题，例如 “jit-PcsTopic,dpt,bwpt”;', '1', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf63d369d80163d3bb0c120002', 'orgPush', '机构推送的主题', '0', '2c908faf64b076a80164b07e48d90001', 'tongyong', '', 'jit-PcsTopic', '201806061414000977', '201806250947060127', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置推送的主题，以逗号分隔，proxy默认使用jit-PcsTopic主题，例如 “jit-PcsTopic,dpt,bwpt”;', '2', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf63d369d80163d3bb6c4e0003', 'wirelessPush', '移动证书推送的主题', '0', '2c908faf64b076a80164b07e48d90001', 'tongyong', '', 'wpt', '201806061414250613', '201806250947190755', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置推送的主题，以逗号分隔，例如 “dpt,bwpt”;', '3', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf63d369d80163d3c8a50a0004', 'devicemanagerPush', '移动终端主题', '0', '2c908faf64b076a80164b07e48d90001', 'tongyong', '', 'wpt', '201806061428520106', '201806250947260405', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置推送的主题，以逗号分隔，例如 “dpt,bwpt”;', '4', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf63f6bdd00163f6f29a080001', 'quanxianPush', '权限推送', '1', '2c908faf63cdbc940163ce7582550001', 'zhutituisong', '', '', '201806131021240353', '201806211403450006', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '7', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf63f6bdd00163f707ab5f0003', 'singoleAppZhuti', '单应用推送主题', '0', '2c908faf63f6bdd00163f6f29a080001', 'quanxianPush', '', '', '201806131044250055', '201806251045520504', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '支持推送多主题，推送主题(应用代码)以逗号分隔,格式为[ppt_机构代码]例如 “ppt_23115001250,ppt_23115001251”；', '2', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf6420e98a016420f0eacd0001', 'powerPush', '权限推送（全部应用）', '0', '2c908faf63f6bdd00163f6f29a080001', 'quanxianPush', '', '', '201806211403370032', '201806250947570771', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置推送的主题，以逗号分隔，proxy默认使用jit-PcsTopic主题，例如 “jit-PcsTopic,dpt,bwpt”;', '5', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf646e70bd01646e73ae120001', 'duoyinzi', '多因子配置', '1', '2c908fad5938e31f015938f027c60001', 'syncconfig', '', '', '201807061517120321', '201807061517330725', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf647cc9d301647ccbe97c0001', 'isOpenUIASOrg', '是否开启多因子推送机构数据', '0', '2c908faf646e70bd01646e73ae120001', 'duoyinzi', '1', '', '201807091008150720', '201807101014450151', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '1代表开启，否则不开启；此值代表是否开启警证通给多因子推送机构数据，此值作为二次验证，总开关在警证通中配置;', '1', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf647cc9d301647cccd4d20002', 'isOpenUIASJUser', '是否开启多因子用户数据', '0', '2c908faf646e70bd01646e73ae120001', 'duoyinzi', '1', '', '201807091009150986', '201807101014520496', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '1代表开启，否则不开启；此值代表是否开启警证通给多因子推送用户数据，此值作为二次验证，总开关在警证通中配置;', '2', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf64b076a80164b07e48d90001', 'tongyong', '通用推送', '1', '2c908faf63cdbc940163ce7582550001', 'zhutituisong', '', '', '201807191103430559', '201807191103590705', '', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf65227d6c0165228dc2970001', 'ydjwPush', '移动警务的主题', '0', '2c908faf64b076a80164b07e48d90001', 'tongyong', '', '', '201808101437200377', '201808101438490229', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置推送的主题，以逗号分隔，例如:ydjwPush;', '5', '0', '1');
INSERT INTO `jpt_configmanager_service` VALUES ('2c908faf65c893230165c897ad480001', 'devicePush', '介质推送主题', '0', '2c908faf64b076a80164b07e48d90001', 'tongyong', '', '', '201809112025080147', '201809131014430452', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '配置推送的主题，以逗号分隔，例如 “bwpt,wpt”;', '5', '0', '1');

-- ----------------------------
-- Table structure for jpt_data_push
-- ----------------------------
DROP TABLE IF EXISTS `jpt_data_push`;
CREATE TABLE `jpt_data_push` (
  `id` char(32) NOT NULL,
  `objid` varchar(32) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `optiontype` varchar(50) DEFAULT NULL,
  `createtime` char(50) DEFAULT NULL,
  `idcardOrCode` varchar(512) DEFAULT NULL,
  `appCode` varchar(50) DEFAULT NULL,
  `roleCode` varchar(50) DEFAULT NULL,
  `resCode` varchar(50) DEFAULT NULL,
  `certDn` varchar(100) DEFAULT NULL,
  `SXRQ` varchar(32) DEFAULT NULL,
  `cType` varchar(32) DEFAULT 'all' COMMENT '用于区分向哪推送（例如ums,ra）',
  `topic` varchar(100) DEFAULT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`),
  KEY `IX_jpt_data_push_objid_type` (`objid`,`type`) USING BTREE,
  KEY `IX_jpt_data_push_type_optiontype` (`type`,`optiontype`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_data_push
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_dead_queue
-- ----------------------------
DROP TABLE IF EXISTS `jpt_dead_queue`;
CREATE TABLE `jpt_dead_queue` (
  `id` char(32) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `objId` varchar(32) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `optiontype` varchar(50) DEFAULT NULL,
  `createtime` char(50) DEFAULT NULL,
  `errorreason` varchar(100) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`),
  KEY `IX_deadqueue_type_optiontype` (`type`,`optiontype`) USING BTREE,
  KEY `IX_deadqueue_sortctimetypeopt` (`createtime`,`type`,`optiontype`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_dead_queue
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `jpt_dictionary`;
CREATE TABLE `jpt_dictionary` (
  `INNERID` char(32) NOT NULL,
  `DICTIONARYID` varchar(510) DEFAULT NULL,
  `DICTIONARYNAME` varchar(510) DEFAULT NULL,
  `DICTIONARYTYPE` varchar(4) DEFAULT NULL,
  `PARENTIID` varchar(126) DEFAULT NULL,
  `PARENTID` varchar(510) DEFAULT NULL,
  `DICTIONARYVALUE` varchar(4000) DEFAULT NULL,
  `CREATETIME` bigint(20) DEFAULT NULL,
  `LASTMODIFYTIME` bigint(20) DEFAULT NULL,
  `ALLOWEDIT` varchar(4) DEFAULT NULL,
  `AUTHOR` varchar(510) DEFAULT NULL,
  `AUTHORNAME` varchar(510) DEFAULT NULL,
  `DESCRIPTION` varchar(1022) DEFAULT NULL,
  `ORDERNUM` int(11) DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`INNERID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_dictionary
-- ----------------------------
INSERT INTO `jpt_dictionary` VALUES ('0', 'root', '数据字典', '1', '0', '-1', null, '20140723', '20140723', '0', '1', '1', '注：初始化数据项', '0', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c80424ac27611e69aca4055eb993e69', 'policeClass01', '国内安全保卫', '0', '2c908fe457db85540157db8884550002', 'policeClass', '01', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c829857c27611e69aca4055eb993e69', 'policeClass02', '经济犯罪侦察', '0', '2c908fe457db85540157db8884550002', 'policeClass', '02', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c8428e1c27611e69aca4055eb993e69', 'policeClass03', '治安管理', '0', '2c908fe457db85540157db8884550002', 'policeClass', '03', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c857c18c27611e69aca4055eb993e69', 'policeClass04', '边防管理', '0', '2c908fe457db85540157db8884550002', 'policeClass', '04', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c86fe6ec27611e69aca4055eb993e69', 'policeClass05', '刑事侦察', '0', '2c908fe457db85540157db8884550002', 'policeClass', '05', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c888064c27611e69aca4055eb993e69', 'policeClass06', '出入境管理', '0', '2c908fe457db85540157db8884550002', 'policeClass', '06', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c89dd37c27611e69aca4055eb993e69', 'policeClass07', '消防', '0', '2c908fe457db85540157db8884550002', 'policeClass', '07', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '7', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c8b51d0c27611e69aca4055eb993e69', 'policeClass08', '警卫', '0', '2c908fe457db85540157db8884550002', 'policeClass', '08', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '8', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c8caadac27611e69aca4055eb993e69', 'policeClass09', '中办警卫', '0', '2c908fe457db85540157db8884550002', 'policeClass', '09', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '9', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c8e1a1bc27611e69aca4055eb993e69', 'policeClass10', '铁道（行业）', '0', '2c908fe457db85540157db8884550002', 'policeClass', '10', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '10', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c8fdce7c27611e69aca4055eb993e69', 'policeClass11', '公共信息网络安全监察', '0', '2c908fe457db85540157db8884550002', 'policeClass', '11', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '10', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c922d7ac27611e69aca4055eb993e69', 'policeClass12', '行动技术', '0', '2c908fe457db85540157db8884550002', 'policeClass', '12', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '11', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c938af1c27611e69aca4055eb993e69', 'policeClass13', '监所管理', '0', '2c908fe457db85540157db8884550002', 'policeClass', '13', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '12', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c94ae70c27611e69aca4055eb993e69', 'policeClass14', '交通（行业）', '0', '2c908fe457db85540157db8884550002', 'policeClass', '14', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '14', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c95f897c27611e69aca4055eb993e69', 'policeClass15', '民航（行业）', '0', '2c908fe457db85540157db8884550002', 'policeClass', '15', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '15', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c972104c27611e69aca4055eb993e69', 'policeClass16', '林业（行业）', '0', '2c908fe457db85540157db8884550002', 'policeClass', '16', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '16', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c985444c27611e69aca4055eb993e69', 'policeClass17', '交通管理', '0', '2c908fe457db85540157db8884550002', 'policeClass', '17', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '13', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c999d13c27611e69aca4055eb993e69', 'policeClass18', '法制', '0', '2c908fe457db85540157db8884550002', 'policeClass', '18', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '14', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c9ae606c27611e69aca4055eb993e69', 'policeClass19', '外事', '0', '2c908fe457db85540157db8884550002', 'policeClass', '19', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '15', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c9c1813c27611e69aca4055eb993e69', 'policeClass20', '装备财务', '0', '2c908fe457db85540157db8884550002', 'policeClass', '20', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '16', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c9d5f7dc27611e69aca4055eb993e69', 'policeClass21', '禁毒', '0', '2c908fe457db85540157db8884550002', 'policeClass', '21', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '17', '0');
INSERT INTO `jpt_dictionary` VALUES ('1c9f3845c27611e69aca4055eb993e69', 'policeClass22', '科技', '0', '2c908fe457db85540157db8884550002', 'policeClass', '22', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '18', '0');
INSERT INTO `jpt_dictionary` VALUES ('1ca0800cc27611e69aca4055eb993e69', 'policeClass23', '信息通信', '0', '2c908fe457db85540157db8884550002', 'policeClass', '23', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '19', '0');
INSERT INTO `jpt_dictionary` VALUES ('1ca1a8c4c27611e69aca4055eb993e69', 'policeClass24', '海关（行业）', '0', '2c908fe457db85540157db8884550002', 'policeClass', '24', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '24', '0');
INSERT INTO `jpt_dictionary` VALUES ('1ca32546c27611e69aca4055eb993e69', 'policeClass26', '反邪教', '0', '2c908fe457db85540157db8884550002', 'policeClass', '26', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '20', '0');
INSERT INTO `jpt_dictionary` VALUES ('1ca45126c27611e69aca4055eb993e69', 'policeClass27', '反恐怖', '0', '2c908fe457db85540157db8884550002', 'policeClass', '27', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '21', '0');
INSERT INTO `jpt_dictionary` VALUES ('1ca59d26c27611e69aca4055eb993e69', 'policeClass31', '办公厅（室）', '0', '2c908fe457db85540157db8884550002', 'policeClass', '31', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '22', '0');
INSERT INTO `jpt_dictionary` VALUES ('1ca6eaf7c27611e69aca4055eb993e69', 'policeClass32', '纪委', '0', '2c908fe457db85540157db8884550002', 'policeClass', '32', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '23', '0');
INSERT INTO `jpt_dictionary` VALUES ('1ca81e34c27611e69aca4055eb993e69', 'policeClass33', '监察', '0', '2c908fe457db85540157db8884550002', 'policeClass', '33', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '24', '0');
INSERT INTO `jpt_dictionary` VALUES ('1ca947f7c27611e69aca4055eb993e69', 'policeClass34', '督察', '0', '2c908fe457db85540157db8884550002', 'policeClass', '34', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '25', '0');
INSERT INTO `jpt_dictionary` VALUES ('1caaa749c27611e69aca4055eb993e69', 'policeClass35', '政工', '0', '2c908fe457db85540157db8884550002', 'policeClass', '35', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '26', '0');
INSERT INTO `jpt_dictionary` VALUES ('1caca9b2c27611e69aca4055eb993e69', 'policeClass36', '人事训练', '0', '2c908fe457db85540157db8884550002', 'policeClass', '36', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '27', '0');
INSERT INTO `jpt_dictionary` VALUES ('1caddfa2c27611e69aca4055eb993e69', 'policeClass38', '机关党委', '0', '2c908fe457db85540157db8884550002', 'policeClass', '38', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '28', '0');
INSERT INTO `jpt_dictionary` VALUES ('1caf1248c27611e69aca4055eb993e69', 'policeClass39', '离退休干部局', '0', '2c908fe457db85540157db8884550002', 'policeClass', '39', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '29', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cb06e7ec27611e69aca4055eb993e69', 'policeClass40', '机关服务', '0', '2c908fe457db85540157db8884550002', 'policeClass', '40', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '30', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cb1afbfc27611e69aca4055eb993e69', 'policeClass41', '审计', '0', '2c908fe457db85540157db8884550002', 'policeClass', '41', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '41', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cb3655bc27611e69aca4055eb993e69', 'policeClass89', '出版社', '0', '2c908fe457db85540157db8884550002', 'policeClass', '89', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '89', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cb4ba67c27611e69aca4055eb993e69', 'policeClass90', '院校', '0', '2c908fe457db85540157db8884550002', 'policeClass', '90', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '90', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cb5ec5bc27611e69aca4055eb993e69', 'policeClass91', '研究所', '0', '2c908fe457db85540157db8884550002', 'policeClass', '91', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '91', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cb73bbcc27611e69aca4055eb993e69', 'policeClass92', '医院', '0', '2c908fe457db85540157db8884550002', 'policeClass', '92', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '92', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cb8a347c27611e69aca4055eb993e69', 'policeClass93', '训练基地', '0', '2c908fe457db85540157db8884550002', 'policeClass', '93', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '93', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cbac2a9c27611e69aca4055eb993e69', 'policeClass94', '边检', '0', '2c908fe457db85540157db8884550002', 'policeClass', '94', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '94', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cbbf689c27611e69aca4055eb993e69', 'policeClass95', '巡警', '0', '2c908fe457db85540157db8884550002', 'policeClass', '95', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '31', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cbd5806c27611e69aca4055eb993e69', 'policeClass96', '派出所', '0', '2c908fe457db85540157db8884550002', 'policeClass', '96', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '32', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cbe86eec27611e69aca4055eb993e69', 'policeClass97', '金盾办', '0', '2c908fe457db85540157db8884550002', 'policeClass', '97', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '33', '0');
INSERT INTO `jpt_dictionary` VALUES ('1cbfc27bc27611e69aca4055eb993e69', 'policeClass98', '科技委', '0', '2c908fe457db85540157db8884550002', 'policeClass', '98', '201612151204569984', '201612151204569984', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '34', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f335acfed50015ad03c5f210001', 'fjyonghuzhuce', '辅警用户注册', '0', '2c908f3c57ac2ecd0157ac3a6dd80007', 'user', 'fjyonghuzhuce', '20170315123141856', '20170324210556192', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f335acfed50015ad0774665001b', 'fjzhengshushenqing', '辅警证书申请', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'fjzhengshushenqing', '20170315133602149', '20170324210637330', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f335acfed50015ad07827fa001c', 'fjzhengshubufa', '辅警证书补发', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'fjzhengshubufa', '20170315133659898', '20170324210641386', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '7', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3557d199c30157d1a19c200001', 'jzpz', '介质配置', '1', '0', 'root', '', '201610171553310880', '201701181720520672', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3557d199c30157d1a282890002', 'jzcs', '介质厂商', '1', '2c908f3557d199c30157d1a19c200001', 'jzpz', null, '201610171554300864', '201610171554300864', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3557d199c30157d1a2edc70003', 'yisuo', '一所', '0', '2c908f3557d199c30157d1a282890002', 'jzcs', '', '201610171554580416', '20170302133641604', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3557d199c30157d1a31b390004', 'sansuo', '三所', '0', '2c908f3557d199c30157d1a282890002', 'jzcs', '', '201610171555100000', '20170302133628436', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3557d199c30157d1a476c90006', 'jzsf', '介质算法', '1', '2c908f3557d199c30157d1a19c200001', 'jzpz', '', '201610171556380960', '201701130920520414', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3557d199c30157d1a4f7730007', 'rsa', 'RSA', '0', '2c908f3557d199c30157d1a476c90006', 'jzsf', '', '201610171557110880', '20170309135439925', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3557d199c30157d1a5ad590009', 'rsajgm', 'RSA-SM2', '0', '2c908f3557d199c30157d1a476c90006', 'jzsf', '', '201610171557580480', '20170309135446383', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3557d199c30157d1a73e3c000c', 'syfw', '使用范围', '1', '2c908f3557d199c30157d1a19c200001', 'jzpz', '', '201610171559410080', '201701130920010194', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3557d199c30157d1a7dde0000d', 'jy', '警员', '0', '2c908f3557d199c30157d1a73e3c000c', 'syfw', '', '201610171600210944', '20170309135452189', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3557d199c30157d1a80998000e', 'fj', '辅警', '0', '2c908f3557d199c30157d1a73e3c000c', 'syfw', '', '201610171600330176', '20170309135454333', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f355d347716015d349124510006', 'wirelessCert', '移动证书流程', '1', '2c908fe557791da70157792243b00001', 'liuchengfenlei', 'wirelessCert', '20170712101153553', '20170714135300967', '0', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f355d347716015d34926ad20007', 'wirelessZhengshuyanqi', '警员移动证书延期', '0', '2c908f355d347716015d349124510006', 'wirelessCert', 'wirelessZhengshuyanqi', '20170712101317138', '20170714135329047', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f355d347716015d34acfddb002f', 'wirelessZhengshuxinxijiaozhun', '警员移动证书信息校准', '0', '2c908f355d347716015d349124510006', 'wirelessCert', 'wirelessZhengshuxinxijiaozhun', '20170712104218714', '20170714135345009', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f355d3ec591015d3ecbfdd00001', 'wirelessZhengshushenqing', '警员移动证书申请', '0', '2c908f355d347716015d349124510006', 'wirelessCert', 'wirelessZhengshushenqing', '20170714095222434', '20170714135358859', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f355d3ec591015d3ecd49d30003', 'wirelessZhengshubufa', '警员移动证书补发', '0', '2c908f355d347716015d349124510006', 'wirelessCert', 'wirelessZhengshubufa', '20170714095347475', '20170714135411272', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '7', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f355d3ec591015d3ed3dfc00008', 'wirelessZhengshuzhuxiao', '警员移动证书注销', '0', '2c908f355d347716015d349124510006', 'wirelessCert', 'wirelessZhengshuzhuxiao', '20170714100059072', '20170714135422480', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '9', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f355d3ec591015d3ed59fb1000a', 'wirelessZhengshujiedong', '警员移动证书解冻', '0', '2c908f355d347716015d349124510006', 'wirelessCert', 'wirelessZhengshujiedong', '20170714100253744', '20170714135437371', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '11', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f355d81a751015d81bc72830005', 'wirelessZhengshuguanli', '移动证书管理', '0', '2c908f355d347716015d349124510006', 'wirelessCert', 'wirelessZhengshuguanli', '20170727094957250', '20170727095012795', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '13', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f35624684ae01624760427c0002', 'sbpz', '移动终端配置', '1', '0', 'root', '', '20180321150513595', '20180421153258106', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c57ac2ecd0157ac36e2f50001', 'quanxianshenqing', '警员权限申请', '0', '2c908fad5778914f0157792a7d510003', 'power', 'quanxianshenqing', '201610100931000704', '20170324210613461', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c57ac2ecd0157ac37f6130002', 'zhengshushenqing', '警员证书申请', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'zhengshushenqing', '201610100932110112', '20170324210620762', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c57ac2ecd0157ac38326d0003', 'zhengshubufa', '警员证书补发', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'zhengshubufa', '201610100932260608', '20170324210623758', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c57ac2ecd0157ac3886ed0004', 'zhengshujiedong', '警员证书解冻', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'zhengshujiedong', '201610100932480256', '20170324210626800', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c57ac2ecd0157ac38d4ef0005', 'zhengshuxinxijiaozhun', '警员证书信息校准', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'zhengshuxinxijiaozhun', '201610100933080160', '20170324210631777', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c57ac2ecd0157ac3910ef0006', 'zhengshuyanqi', '警员证书延期', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'zhengshuyanqi', '201610100933230560', '20170324210634522', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c57ac2ecd0157ac3a6dd80007', 'user', '用户流程', '1', '2c908fe557791da70157792243b00001', 'liuchengfenlei', 'user', '201610100934520896', '20170309135543149', '0', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c57ac2ecd0157ac3ac0620008', 'yonghuzhuce', '警员用户注册', '0', '2c908f3c57ac2ecd0157ac3a6dd80007', 'user', 'yonghuzhuce', '201610100935140032', '20170324210549702', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c57ac2ecd0157ac3af49c0009', 'yonghushuxingbiangeng', '警员用户信息变更', '0', '2c908f3c57ac2ecd0157ac3a6dd80007', 'user', 'yonghushuxingbiangeng', '201610100935270400', '20170324210553010', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c5866e03501586702659a0005', 'yonghuguanli', '用户管理', '0', '2c908f3c57ac2ecd0157ac3a6dd80007', 'user', 'yonghuguanli', '201611151602400154', '20170324210605942', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c586796f40158679a15190007', 'zhengshuguanli', '证书管理', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'zhengshuguanli', '201611151848210017', '20170324210655598', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '11', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c59bf11900159bf888c640001', 'zsyq', '证书延期', '1', '2c908f8f57f67b370157f68aa3c20002', 'zspz', '', '201701211338340211', '201701211338340211', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c59bf11900159bf8943ec0002', 'changqi', '长期', '0', '2c908f3c59bf11900159bf888c640001', 'zsyq', '1800', '201701211339210195', '201701211339210195', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此处配置证书延期天数。长期默认为1800天。', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c59bf11900159bf89b3e30003', 'duanqi', '短期', '0', '2c908f3c59bf11900159bf888c640001', 'zsyq', '365', '201701211339490859', '201701211339490859', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '此处配置证书延期短期时间天数，默认为365天。', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f3c5ab18fb1015ab1a1fd420001', 'gm', '国密', '0', '2c908f3557d199c30157d1a476c90006', 'jzsf', '', '20170309135427750', '20170309135442138', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590011940159003191960003', 'PositionLevel0140', '副部、省职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0140', '201612150956050653', '201612150956050653', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435900119401590033cb8c0004', 'PositionLevel0141', '副部职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0141', '201612150958310564', '201612150958310564', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590011940159003443d90005', 'PositionLevel0142', '副省职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0142', '201612150959020361', '201612150959020361', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435900119401590034b73f0006', 'PositionLevel0143', '副部级', '0', '2c908fe457db85540157db89f1230004', 'rank', '0143', '201612150959310902', '201612150959310902', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '0143', '7', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590011940159003532830007', 'PositionLevel0150', '正司、局、厅(巡视员)职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0150', '201612151000030458', '201612151000030459', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '8', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435900119401590035a07e0008', 'PositionLevel0151', '正司职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0151', '201612151000310613', '201612151000310613', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '9', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590011940159003708950009', 'PositionLevel0152', '正局职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0152', '201612151002030797', '201612151002030797', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '10', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f4359001194015900378029000a', 'PositionLevel0153', '正厅职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0153', '201612151002340409', '201612151002340409', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '11', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435900119401590037d355000b', 'PositionLevel0154', '正厅级', '0', '2c908fe457db85540157db89f1230004', 'rank', '0154', '201612151002550700', '201612151002550700', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '12', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435900119401590039357e000c', 'PositionLevel0155', '正厅级侦察员', '0', '2c908fe457db85540157db89f1230004', 'rank', '0155', '201612151004260366', '201612151004260366', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '13', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159006b27250003', 'PositionLevel0156', '巡视员', '0', '2c908fe457db85540157db89f1230004', 'rank', '0156', '201612151058590493', '201612151058590493', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '14', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159006b9d690004', 'PositionLevel0160', '副司、局、厅(助理巡视员)职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0160', '201612151059290768', '201612151059290768', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '15', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159006c39ce0005', 'PositionLevel0161', '副司职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0161', '201612151100090805', '201612151100090805', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '16', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159006f45720006', 'PositionLevel0162', '副局职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0162', '201612151103290393', '201612151103290393', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '17', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159006ffe1b0007', 'PositionLevel0163', '副厅职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0163', '201612151104160667', '201612151104160667', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '18', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f5015900704bd60008', 'PositionLevel0164', '副厅级', '0', '2c908fe457db85540157db89f1230004', 'rank', '0164', '201612151104360566', '201612151104360566', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '19', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f501590070a4570009', 'PositionLevel0165', '副厅级侦察员', '0', '2c908fe457db85540157db89f1230004', 'rank', '0165', '201612151104590223', '201612151104590223', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '20', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f501590070fbfd000a', 'PositionLevel0166', '助理巡视员', '0', '2c908fe457db85540157db89f1230004', 'rank', '0166', '201612151105210660', '201612151105210660', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '21', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f5015900718efe000b', 'PositionLevel0170', '正处、县(调研员)职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0170', '201612151105590293', '201612151105590293', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '22', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f501590071e417000c', 'PositionLevel0171', '正处职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0171', '201612151106210079', '201612151106210079', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '23', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f5015900724e75000d', 'PositionLevel0172', '正县职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0172', '201612151106480308', '201612151106480308', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '24', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f501590072ac6b000e', 'PositionLevel0173', '正处级', '0', '2c908fe457db85540157db89f1230004', 'rank', '0173', '201612151107120363', '201612151107120363', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '25', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f501590072f94b000f', 'PositionLevel0174', '正处级侦察员', '0', '2c908fe457db85540157db89f1230004', 'rank', '0174', '201612151107320043', '201612151107320043', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '26', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f5015900734b5c0010', 'PositionLevel0175', '调研员', '0', '2c908fe457db85540157db89f1230004', 'rank', '0175', '201612151107530051', '201612151107530051', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '27', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f501590073a06b0011', 'PositionLevel0180', '副处、县(助理调研员)职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0180', '201612151108140826', '201612151108140826', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '28', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f5015900756bc40012', 'PositionLevel0181', '副处职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0181', '201612151110120420', '201612151110120420', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '29', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f501590075d2850013', 'PositionLevel0182', '副县职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0182', '201612151110380725', '201612151110380725', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '30', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f5015900761c6b0014', 'PositionLevel0183', '副处级', '0', '2c908fe457db85540157db89f1230004', 'rank', '0183', '201612151110570643', '201612151110570643', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '31', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159007694500015', 'PositionLevel0184', '副处级侦察员', '0', '2c908fe457db85540157db89f1230004', 'rank', '0184', '201612151111280335', '201612151111280335', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '32', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159007764a20016', 'PositionLevel0185', '助理调研员', '0', '2c908fe457db85540157db89f1230004', 'rank', '0185', '201612151112210666', '201612151112210666', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '33', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f501590077b39e0017', 'PositionLevel0190', '正科(主任科员)职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0190', '201612151112410886', '201612151112410886', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '34', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159007803230018', 'PositionLevel0191', '正科职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0191', '201612151113020242', '201612151113020242', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '35', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159007862a00019', 'PositionLevel0192', '主任科员', '0', '2c908fe457db85540157db89f1230004', 'rank', '0192', '201612151113260687', '201612151113260687', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '36', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f501590078b090001a', 'PositionLevel01a0', '副科(副主任科员)职', '0', '2c908fe457db85540157db89f1230004', 'rank', '01a0', '201612151113460639', '201612151113460639', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '37', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159007918c0001b', 'PositionLevel01a1', '副科职', '0', '2c908fe457db85540157db89f1230004', 'rank', '01a1', '201612151114130312', '201612151114130312', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '38', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f5015900798d3d001c', 'PositionLevel01a2', '副主任科员', '0', '2c908fe457db85540157db89f1230004', 'rank', '01a2', '201612151114430132', '201612151114430132', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '39', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f501590079ffae001d', 'PositionLevel01b0', '科员', '0', '2c908fe457db85540157db89f1230004', 'rank', '01b0', '201612151115120430', '201612151115120430', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '40', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159007a5cfd001e', 'PositionLevel01c0', '办事员', '0', '2c908fe457db85540157db89f1230004', 'rank', '01c0', '201612151115360316', '201612151115360316', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '41', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f43590058f50159007aaaeb001f', 'PositionLevel01d0', '未定职公务员', '0', '2c908fe457db85540157db89f1230004', 'rank', '01d0', '201612151115560266', '201612151115560266', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '42', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435a7d8df4015a7e7c44850001', 'jzlx', '介质类型', '1', '2c908f3557d199c30157d1a19c200001', 'jzpz', '', '20170227153237573', '20170227153237573', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435a7d8df4015a7e7e53970002', 'ptkey', '普通key', '0', '2c908f435a7d8df4015a7e7c44850001', 'jzlx', '', '20170227153452566', '20170227153452566', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435a7d8df4015a7e7eb14d0003', 'zwkey', '指纹key', '0', '2c908f435a7d8df4015a7e7c44850001', 'jzlx', '', '20170227153516557', '20170227153516557', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435a7d8df4015a7e7f68ef0004', 'rlsbkey', '人脸识别key', '0', '2c908f435a7d8df4015a7e7c44850001', 'jzlx', '', '20170227153603567', '20170227153603567', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435a7d8df4015a7e7fb6ba0005', 'tfk', 'TF卡', '0', '2c908f435a7d8df4015a7e7c44850001', 'jzlx', '', '20170227153623481', '20170227153623481', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435a7d8df4015a7e8004e20006', 'ydjw', '移动警务', '0', '2c908f435a7d8df4015a7e7c44850001', 'jzlx', '', '20170227153643490', '20170227153643490', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435a7d8df4015a7e8054360007', 'ptlkey', '普通老key', '0', '2c908f435a7d8df4015a7e7c44850001', 'jzlx', '', '20170227153703798', '20170227153703798', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f435b1d327b015b1df631f80009', 'bangdingfujingguanxi', '绑定辅警关系', '0', '2c908f3c57ac2ecd0157ac3a6dd80007', 'user', 'bangdingfujingguanxi', '20170330144525624', '20170331092602131', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '初始化配置，此配置不可删除，英文名不可修改。', '8', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f485b22271d015b222a826c0001', 'jiebangfujingguanxi', '解绑辅警关系', '0', '2c908f3c57ac2ecd0157ac3a6dd80007', 'user', 'jiebangfujieguanxi', '20170331102102950', '20170331102102950', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '解绑辅警关系流程代码', '9', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f70624b7d7a01624b9009fb0003', 'sblxphone', '手机', '0', '2c908f35624684ae01624760427c0002', 'sbpz', '1', '20180322103553723', '20180322103553723', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f70624b7d7a01624b9045b30004', 'sblxpos', 'pos机', '0', '2c908f35624684ae01624760427c0002', 'sbpz', '2', '20180322103609011', '20180322103609011', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f70624b7d7a01624b9196180005', 'sblxTabletPC', '平板电脑', '0', '2c908f35624684ae01624760427c0002', 'sbpz', '3', '20180322103735128', '20180322103747975', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f70624b7d7a01624b9218150006', 'sblxqita', '其他', '0', '2c908f35624684ae01624760427c0002', 'sbpz', '4', '20180322103808405', '20180322103808405', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016264f68d320002', 'yunyingshang', '运营商', '1', '2c908f35624684ae01624760427c0002', 'sbpz', '', '20180327085822385', '20180327101658565', '0', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016264f76e210003', 'anquankaleixing', '安全卡类型', '1', '2c908f35624684ae01624760427c0002', 'sbpz', '', '20180327085919968', '20180327085919968', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016264f7ec6d0004', 'zhongduanleixing', '终端类型', '1', '2c908f35624684ae01624760427c0002', 'sbpz', '', '20180327085952301', '20180327085952301', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016264f85a030005', 'zhongduanpinpai', '终端品牌', '1', '2c908f35624684ae01624760427c0002', 'sbpz', '', '20180327090020354', '20180327091243041', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016264f933360006', 'shiyongleixing', '使用类型', '1', '2c908f35624684ae01624760427c0002', 'sbpz', '', '20180327090115957', '20180327091251190', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016264fdb9fd0007', 'yysyigond', '移动', '0', '2c908f706264f023016264f68d320002', 'yunyingshang', '0001', '20180327090612605', '20180327090612605', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016264fe09510008', 'yysliantong', '联通', '0', '2c908f706264f023016264f68d320002', 'yunyingshang', '0002', '20180327090632912', '20180327090632912', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016264fe698d0009', 'yysdianxin', '电信', '0', '2c908f706264f023016264f68d320002', 'yunyingshang', '0003', '20180327090657549', '20180327090657549', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016264fed161000a', 'aqkSIM', 'SIM', '0', '2c908f706264f023016264f76e210003', 'anquankaleixing', '1', '20180327090724129', '20180327090833194', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016264ff5433000b', 'aqkUSBKEY', 'USBKEY', '0', '2c908f706264f023016264f76e210003', 'anquankaleixing', '2', '20180327090757619', '20180327090840053', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016265002e95000c', 'aqkTF', 'TF', '0', '2c908f706264f023016264f76e210003', 'anquankaleixing', '3', '20180327090853524', '20180327090853524', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016265008e34000d', 'aqkPhone', '安全手机', '0', '2c908f706264f023016264f76e210003', 'anquankaleixing', '4', '20180327090918004', '20180327090918004', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650326aa000e', 'zdlxqita', '其他', '0', '2c908f706264f023016264f7ec6d0004', 'zhongduanleixing', '0', '20180327091208106', '20180327091208106', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626504caa30010', 'zdlxPhone', '手机', '0', '2c908f706264f023016264f7ec6d0004', 'zhongduanleixing', '1', '20180327091355619', '20180327091355619', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650522140011', 'zdlxPos', 'pos机', '0', '2c908f706264f023016264f7ec6d0004', 'zhongduanleixing', '2', '20180327091418004', '20180327091418004', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650599550012', 'zdlxTabletPC', '平板电脑', '0', '2c908f706264f023016264f7ec6d0004', 'zhongduanleixing', '3', '20180327091448533', '20180327091508371', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626506dd960013', 'zhongduanxitong', '终端系统', '1', '2c908f35624684ae01624760427c0002', 'sbpz', '4', '20180327091611540', '20180327091611540', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016265077e4c0014', 'zdxtqita', '其他', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '000', '20180327091652684', '20180327091652684', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '0', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650842a00015', 'zdxtAndroid', '安卓', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '001', '20180327091742944', '20180327091742944', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626508fe3b0016', 'zdxtWinMobile', 'WindowMobile', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '002', '20180327091830971', '20180327091830971', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016265098c5c0017', 'zdxtWinPhone7', 'Phone7', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '003', '20180327091907356', '20180327092521777', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626509ebc70018', 'zdxtWInCE', 'WindowsCE', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '004', '20180327091931783', '20180327091931783', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650b51200019', 'zdxtWinXP', 'windowsXP', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '005', '20180327092103264', '20180327092103264', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650bd2d8001a', 'zdxtWin2000', 'windows2000', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '006', '20180327092136471', '20180327092136471', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650c324d001b', 'zdxtWin7', 'windows7', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '007', '20180327092200908', '20180327092200908', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '7', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650cc008001c', 'zdxtubuntu', 'ubuntu', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '008', '20180327092237191', '20180327092237191', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '8', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650d5b55001d', 'zdxtRedhat', 'redhat', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '009', '20180327092316948', '20180327092316948', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '9', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650dd454001e', 'zdxtFedora', 'Fedora', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '010', '20180327092347924', '20180327092347924', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '10', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650e40fc001f', 'zdxtCentOS', 'CentOS', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '011', '20180327092415740', '20180327092415740', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '11', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162650ee9070020', 'zdxtSymbian', 'symbian', '0', '2c908f706264f02301626506dd960013', 'zhongduanxitong', '012', '20180327092458759', '20180327092458759', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '12', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162651c634a0021', 'sylxPhone', '手机', '0', '2c908f706264f023016264f933360006', 'shiyongleixing', '0', '20180327093942026', '20180327093942026', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '0', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162651cd8ad0022', 'sylxNotePC', '笔记本', '0', '2c908f706264f023016264f933360006', 'shiyongleixing', '1', '20180327094012077', '20180327094012077', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162651d43a30023', 'zdppqita', '其他', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '000', '20180327094039458', '20180327094039458', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '0', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162651d86120024', 'zdpplianxiang', '联想', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '001', '20180327094056465', '20180327094056465', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162651dc1610025', 'zdpphuipu', '惠普', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '002', '20180327094111649', '20180327094111649', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162651e1d0b0026', 'zdpphuashuo', '华硕', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '003', '20180327094135115', '20180327094151557', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162651e97880027', 'zdppsuoni', '索尼', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '004', '20180327094206472', '20180327094206472', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162651ecf520028', 'zdppsanxing', '三星', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '005', '20180327094220754', '20180327094220754', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162651f9a700029', 'zdppdaier', '戴尔', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '006', '20180327094312752', '20180327094312752', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162651fcbcf002a', 'zdppsongzhi', '东芝', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '007', '20180327094325390', '20180327094325390', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '7', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162652016bb002b', 'zdppmingji', '明基', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '008', '20180327094344571', '20180327094344571', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '8', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626520654d002c', 'zdppshenzhou', '神舟', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '009', '20180327094404684', '20180327094404684', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '9', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626520a03f002d', 'zdpphaier', '海尔', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '010', '20180327094419775', '20180327094419775', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '10', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f0230162652153a7002e', 'zdppqinghuatongfang', '清华同方', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '011', '20180327094505703', '20180327094505703', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '11', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016265218e22002f', 'zdppfangzheng', '方正', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '012', '20180327094520674', '20180327094520674', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '12', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626521ca4c0030', 'zdpppingguo', '苹果', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '013', '20180327094536076', '20180327094536076', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '13', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626522247e0031', 'zdppfushitong', '富士通', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '014', '20180327094559166', '20180327094559166', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '14', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016265228b800032', 'zdppnuojiya', '诺基亚', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '015', '20180327094625536', '20180327094625536', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '15', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626522bf840033', 'zdppHTC', 'HTC', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '016', '20180327094638851', '20180327094638851', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '16', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626523453d0034', 'zdppmotolola', '摩托罗拉', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '017', '20180327094713085', '20180327094713085', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '17', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626523b27e0035', 'zdppailixin', '爱立信', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '018', '20180327094741054', '20180327094741054', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '18', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626523fd190036', 'zdppheimei', '黑莓', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '019', '20180327094800153', '20180327094800153', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '19', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016265245aef0037', 'zdpptianyu', '天语', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '020', '20180327094824175', '20180327094824175', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '20', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016265248c960038', 'zdppLG', 'LG', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '021', '20180327094836886', '20180327094836886', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '21', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626524ea8c0039', 'zdppkupai', '酷派', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '022', '20180327094900939', '20180327094900939', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '22', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f023016265253a3f003a', 'zdppbubugao', '步步高', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '024', '20180327094921343', '20180327094921343', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '24', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626525802e003b', 'zdpphuawei', '华为', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '025', '20180327094939246', '20180327094939246', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '25', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626525bf40003c', 'zdppzhongxing', '中兴', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '026', '20180327094955391', '20180327094955391', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '26', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f706264f02301626526025e003d', 'zdppaiguozhe', '爱国者', '0', '2c908f706264f023016264f85a030005', 'zhongduanpinpai', '027', '20180327095012574', '20180327095012574', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '27', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c59295e7701592a78fdf60007', 'fjzhuguanjingyuanbiangeng', '辅警主管警员变更', '0', '2c908f3c57ac2ecd0157ac3a6dd80007', 'user', 'fjzhuguanjingyuanbiangeng', '201612231458090525', '20170324210602307', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5afe146b015afe2622f00006', 'fjrank', '辅警职级', '1', '2c908fca59aa1a1d0159aa32544b0001', 'baseAttr', '1', '20170324102956592', '20170324103415911', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '1', '8', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5afe146b015afe2788280007', 'fjpoliceClass', '辅警警种', '1', '2c908fca59aa1a1d0159aa32544b0001', 'baseAttr', '1', '20170324103128040', '20170324103419743', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '1', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5afe146b015afe2909180008', 'fjposition', '辅警任职', '1', '2c908fca59aa1a1d0159aa32544b0001', 'baseAttr', '1', '20170324103306584', '20170324103423777', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '1', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5afe146b015afe2c88ce000a', 'fjposition0001', '无', '0', '2c908f7c5afe146b015afe2909180008', 'fjposition', '0001', '20170324103655886', '20170325135857967', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5afe146b015afe2da315000b', 'fjpoliceClass01', '无', '0', '2c908f7c5afe146b015afe2788280007', 'fjpoliceClass', '01', '20170324103808149', '20170325135905595', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5afe146b015afe2ec79d000c', 'fjpositionLevel0001', '无', '0', '2c908f7c5afe146b015afe2622f00006', 'fjrank', '0001', '20170324103923037', '20170325135912771', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b040f25900003', 'fjpost0003', '网络运行维护', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0003', '20170325140233232', '20170325140233232', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b040fbdb90004', 'fjpost0004', '警航设备维护', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0004', '20170325140312185', '20170325140312185', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b041017ba0005', 'fjpost0005', '计算机设备维护', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0005', '20170325140335226', '20170325140335226', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0412060d0006', 'fjpost0006', '通讯设备维护', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0006', '20170325140541773', '20170325140541773', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0412654c0007', 'fjpost0007', '警犬养护', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0007', '20170325140606156', '20170325140606156', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '7', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0412aac40008', 'fjpost0008', '警犬训导', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0008', '20170325140623940', '20170325140623940', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '8', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0412e5d10009', 'fjpost0009', '会计', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0009', '20170325140639057', '20170325140639057', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '9', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b04132e26000a', 'fjpost0010', '影视制作', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0010', '20170325140657574', '20170325140657574', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '10', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b04138d26000b', 'fjpost0011', '审计', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0011', '20170325140721894', '20170325140721894', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '11', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0413ff2a000c', 'fjpost0012', '指纹比对', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0012', '20170325140751082', '20170325140751082', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '12', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b04144e14000d', 'fjpost0013', '船艇驾驶', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0013', '20170325140811284', '20170325140811284', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '13', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b04149947000e', 'fjpost0014', '船艇轮机', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0014', '20170325140830535', '20170325140830535', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '14', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0414eafe000f', 'fjpost0015', '文书管理', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0015', '20170325140851454', '20170325140851454', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '15', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b041538240010', 'fjpost0016', '后勤管理', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0016', '20170325140911204', '20170325140911204', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '16', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0415a3930011', 'fjpost0017', '户籍管理', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0017', '20170325140938707', '20170325140938707', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '17', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0415ec170012', 'fjpost0018', '网络巡查', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0018', '20170325140957271', '20170325140957271', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '18', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b04164d390013', 'fjpost0019', '后勤事务', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0019', '20170325141022137', '20170325141022137', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '19', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0416ca730014', 'fjpost0020', '资料整理', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0020', '20170325141054195', '20170325141054195', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '20', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b04172fca0015', 'fjpost0021', '咨询服务', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0021', '20170325141120138', '20170325141120138', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '21', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b041784eb0016', 'fjpost0022', '档案整理', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0022', '20170325141141931', '20170325141141931', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '22', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0417d7eb0017', 'fjpost0023', '话务', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0023', '20170325141203179', '20170325141203179', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '23', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0418285b0018', 'fjpost0024', '110接线', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0024', '20170325141223771', '20170325141223771', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '24', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0418699e0019', 'fjpost0025', '信息查询', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0025', '20170325141240478', '20170325141240478', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '25', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b0418d599001a', 'fjpost0026', '出纳', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0026', '20170325141308121', '20170325141308121', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '26', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f7c5b03eabc015b041c98c0001b', 'fjpost0027', '车辆驾驶', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0027', '20170325141714688', '20170325141714688', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '27', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908f8f57f67b370157f68aa3c20002', 'zspz', '证书配置', '1', '0', 'root', '', '201610241954230553', '201701181720470767', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fad5778914f0157792a7d510002', 'liuchengpeizhi', '流程配置', '1', '0', 'root', '', '201609301136500224', '201701181721010849', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fad5778914f0157792a7d510003', 'power', '权限流程', '1', '2c908fe557791da70157792243b00001', 'liuchengfenlei', 'power', '20140723', '20170309135545481', '0', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fad5778914f0157792a7d510004', 'cert', '证书流程', '1', '2c908fe557791da70157792243b00001', 'liuchengfenlei', 'cert', '20140723', '20170309135547662', '0', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fad58b2d2ae0158b36909280008', 'PositionLevel0132', '正省职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0132', '201611301205550111', '201612150956210900', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fad58ccd04c0158cd8c50f60001', 'fjyonghushuxingbiangeng', '辅警用户信息变更', '0', '2c908f3c57ac2ecd0157ac3a6dd80007', 'user', 'fjyonghushuxingbiangeng', '201612051354340814', '20170324210559515', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fad58ccd04c0158cd92ae780004', 'fjquanxianshenqing', '辅警权限申请', '0', '2c908fad5778914f0157792a7d510003', 'power', 'fjquanxianshenqing', '201612051401320024', '20170324210616378', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fad58ccd04c0158cd9453160006', 'fjzhengshujiedong', '辅警证书解冻', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'fjzhengshujiedong', '201612051403190702', '20170324210644319', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '8', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fad58ccd04c0158cd94db880007', 'fjzhengshuxinxijiaozhun', '辅警证书信息校准', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'fjzhengshuxinxijiaozhun', '201612051403540631', '20170324210647345', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '9', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fad58ccd04c0158cd9538ca0008', 'fjzhengshuyanqi', '辅警证书延期', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'fjzhengshuyanqi', '201612051404180505', '20170324210650231', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '10', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908faf65d596bd0165d6c952c20013', 'terminalguanli', '终端管理', '0', '2c908f355d347716015d349124510006', 'wirelessCert', 'terminalguanli', '20180914143402818', '20181015182516250', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fca59aa1a1d0159aa32544b0001', 'baseAttr', '用户属性', '1', '0', 'root', '', '201701171012220194', '201701181720410665', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fca5ad4e839015ad4ede3790001', 'fjpost', '辅警岗位', '1', '2c908fca59aa1a1d0159aa32544b0001', 'baseAttr', '', '20170316102404471', '20170324103411759', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '7', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fca5ad4e839015ad4efa5260002', 'fjpost0001', '物证检验', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0001', '20170316102559590', '20170325135948870', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fca5ad4e839015ad4f028cf0003', 'fjpost0002', '刑事勘验', '0', '2c908fca5ad4e839015ad4ede3790001', 'fjpost', '0002', '20170316102633295', '20170325140153483', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fca5ae9ba85015ae9f072640002', 'fjpost0100', '辅警', '0', '2c908fca5ae9ba85015ae9ee68090001', 'fjpost', '0100', '20170320121853668', '20170320121853668', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fca5afe12bb015aff09f4340026', 'zhengshuzhuxiao', '警员证书注销', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'zhengshuzhuxiao', '20170324143846836', '20170324210255180', '1', '2b9f76bffee49db40e79cc8e0c615f0d', '诸葛亮', '初始化配置，此配置不可删除，英文名不可修改。', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fca5b00c7fa015b00ce5f790001', 'fjzhengshuzhuxiao', '辅警证书注销', '0', '2c908fad5778914f0157792a7d510004', 'cert', 'fjzhengshuzhuxiao', '20170324225256544', '20170324225256544', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe457db85540157db87a6480001', 'position', '警员任职', '1', '2c908fca59aa1a1d0159aa32544b0001', 'baseAttr', '', '201610191401220752', '201701171028270024', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe457db85540157db8884550002', 'policeClass', '警员警种', '1', '2c908fca59aa1a1d0159aa32544b0001', 'baseAttr', '', '201610191402190605', '201701171028290593', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe457db85540157db89263c0003', 'post', '警员岗位', '1', '2c908fca59aa1a1d0159aa32544b0001', 'baseAttr', '', '201610191403010052', '20170320121710365', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe457db85540157db89f1230004', 'rank', '警员职级', '1', '2c908fca59aa1a1d0159aa32544b0001', 'baseAttr', '', '201610191403520995', '201701171028340008', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe457db85540157db8aa6a60005', 'position0001', '正职', '0', '2c908fe457db85540157db87a6480001', 'position', '0001', '201610191404390462', '201611151328440407', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe457db85540157db8b02770006', 'position0002', '副职', '0', '2c908fe457db85540157db87a6480001', 'position', '0002', '201610191405020967', '201611151328490489', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe457db85540157db8d5468000b', 'PositionLevel0130', '正部、省职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0130', '201610191407350016', '201612150949310839', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe457db85540157db8da5a4000c', 'PositionLevel0131', '正部职', '0', '2c908fe457db85540157db89f1230004', 'rank', '0131', '201610191407550812', '201612150949580993', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '', '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe457db85540157db9c075a000d', 'position0003', '其他', '0', '2c908fe457db85540157db87a6480001', 'position', '0003', '201610191423380330', '201611151328550374', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe557791da70157792243b00001', 'liuchengfenlei', '流程分类', '1', '2c908fad5778914f0157792a7d510002', 'liuchengpeizhi', 'liuchengfenlei', '201609301127510144', '201611071454550226', '1', '7c6862b4ad05604fcae7b5766f9db7c0', '诸葛亮', '流程分类', '13', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c908fe55866cfc5015866d51c020003', 'jigouguanli', '机构管理', '0', '2c908f3c57ac2ecd0157ac3a6dd80007', 'user', 'jigouguanli', '201611151513120194', '20170324210609078', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '初始化配置，此配置不可删除，英文名不可修改。', '7', '0');
INSERT INTO `jpt_dictionary` VALUES ('2c90902f665cc81e01665cca3bfc0001', 'zdlxzhifayi', '执法仪', '0', '2c908f706264f023016264f7ec6d0004', 'zhongduanleixing', '4', '20181010150409465', '20181010150409465', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', '', '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('3da8889bc27311e69aca4055eb993e69', 'post0100', '单位领导', '0', '2c908fe457db85540157db89263c0003', 'post', '0100', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '1', '0');
INSERT INTO `jpt_dictionary` VALUES ('3daa396ec27311e69aca4055eb993e69', 'post0201', '人事', '0', '2c908fe457db85540157db89263c0003', 'post', '0201', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '3', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dab89c2c27311e69aca4055eb993e69', 'post0202', '组织', '0', '2c908fe457db85540157db89263c0003', 'post', '0202', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '4', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dace4bdc27311e69aca4055eb993e69', 'post0203', '宣传', '0', '2c908fe457db85540157db89263c0003', 'post', '0203', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '5', '0');
INSERT INTO `jpt_dictionary` VALUES ('3daf1972c27311e69aca4055eb993e69', 'post0204', '培训', '0', '2c908fe457db85540157db89263c0003', 'post', '0204', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '6', '0');
INSERT INTO `jpt_dictionary` VALUES ('3db077ffc27311e69aca4055eb993e69', 'post0205', '文体', '0', '2c908fe457db85540157db89263c0003', 'post', '0205', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '7', '0');
INSERT INTO `jpt_dictionary` VALUES ('3db1d211c27311e69aca4055eb993e69', 'post0206', '报刊', '0', '2c908fe457db85540157db89263c0003', 'post', '0206', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '8', '0');
INSERT INTO `jpt_dictionary` VALUES ('3db355c3c27311e69aca4055eb993e69', 'post0207', '离退管理', '0', '2c908fe457db85540157db89263c0003', 'post', '0207', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '9', '0');
INSERT INTO `jpt_dictionary` VALUES ('3db4b848c27311e69aca4055eb993e69', 'post0208', '工会', '0', '2c908fe457db85540157db89263c0003', 'post', '0208', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '10', '0');
INSERT INTO `jpt_dictionary` VALUES ('3db6ff7cc27311e69aca4055eb993e69', 'post0300', '综合类', '0', '2c908fe457db85540157db89263c0003', 'post', '0300', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '11', '0');
INSERT INTO `jpt_dictionary` VALUES ('3db89d30c27311e69aca4055eb993e69', 'post0301', '信息指挥', '0', '2c908fe457db85540157db89263c0003', 'post', '0301', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '12', '0');
INSERT INTO `jpt_dictionary` VALUES ('3db9ce94c27311e69aca4055eb993e69', 'post0302', '调研', '0', '2c908fe457db85540157db89263c0003', 'post', '0302', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '13', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dbaedc9c27311e69aca4055eb993e69', 'post0303', '统计', '0', '2c908fe457db85540157db89263c0003', 'post', '0303', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '14', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dbbf5cbc27311e69aca4055eb993e69', 'post0304', '档案', '0', '2c908fe457db85540157db89263c0003', 'post', '0304', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '15', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dbdd150c27311e69aca4055eb993e69', 'post0305', '信访', '0', '2c908fe457db85540157db89263c0003', 'post', '0305', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '16', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dbef40cc27311e69aca4055eb993e69', 'post0306', '文秘', '0', '2c908fe457db85540157db89263c0003', 'post', '0306', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '17', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dbffb99c27311e69aca4055eb993e69', 'post0307', '史志', '0', '2c908fe457db85540157db89263c0003', 'post', '0307', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '18', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dc13581c27311e69aca4055eb993e69', 'post0308', '保密', '0', '2c908fe457db85540157db89263c0003', 'post', '0308', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '19', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dc2454dc27311e69aca4055eb993e69', 'post0309', '保卫', '0', '2c908fe457db85540157db89263c0003', 'post', '0309', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '20', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dc34901c27311e69aca4055eb993e69', 'post0400', '后勤类', '0', '2c908fe457db85540157db89263c0003', 'post', '0400', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '21', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dc46c64c27311e69aca4055eb993e69', 'post0401', '财会', '0', '2c908fe457db85540157db89263c0003', 'post', '0401', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '22', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dc573fcc27311e69aca4055eb993e69', 'post0402', '基建', '0', '2c908fe457db85540157db89263c0003', 'post', '0402', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '23', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dc688eac27311e69aca4055eb993e69', 'post0403', '装备', '0', '2c908fe457db85540157db89263c0003', 'post', '0403', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '24', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dc7ca28c27311e69aca4055eb993e69', 'post0404', '被装', '0', '2c908fe457db85540157db89263c0003', 'post', '0404', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '25', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dc98a23c27311e69aca4055eb993e69', 'post0405', '膳食', '0', '2c908fe457db85540157db89263c0003', 'post', '0405', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '26', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dcabf67c27311e69aca4055eb993e69', 'post0408', '专职驾驶员', '0', '2c908fe457db85540157db89263c0003', 'post', '0408', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '29', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dcbea13c27311e69aca4055eb993e69', 'post0500', '纪检类', '0', '2c908fe457db85540157db89263c0003', 'post', '0500', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '30', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dcd04cec27311e69aca4055eb993e69', 'post0600', '法制类', '0', '2c908fe457db85540157db89263c0003', 'post', '0600', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '33', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dce14bfc27311e69aca4055eb993e69', 'post0700', '审计类', '0', '2c908fe457db85540157db89263c0003', 'post', '0700', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '35', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dcf5dcbc27311e69aca4055eb993e69', 'post0800', '经文保类', '0', '2c908fe457db85540157db89263c0003', 'post', '0800', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '37', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dd0692bc27311e69aca4055eb993e69', 'post0801', '政保', '0', '2c908fe457db85540157db89263c0003', 'post', '0801', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '38', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dd185fbc27311e69aca4055eb993e69', 'post0903', '专职翻译', '0', '2c908fe457db85540157db89263c0003', 'post', '0903', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '44', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dd2b826c27311e69aca4055eb993e69', 'post1002', '治安2', '0', '2c908fe457db85540157db89263c0003', 'post', '1002', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '47', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dd3c9c0c27311e69aca4055eb993e69', 'post1005', '治安拘留', '0', '2c908fe457db85540157db89263c0003', 'post', '1005', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '50', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dd5a471c27311e69aca4055eb993e69', 'post1006', '收容教育', '0', '2c908fe457db85540157db89263c0003', 'post', '1006', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '51', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dd6b746c27311e69aca4055eb993e69', 'post1007', '强制戒毒', '0', '2c908fe457db85540157db89263c0003', 'post', '1007', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '52', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dd7cdbac27311e69aca4055eb993e69', 'post1102', '户籍', '0', '2c908fe457db85540157db89263c0003', 'post', '1102', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '55', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dd92497c27311e69aca4055eb993e69', 'post1103', '身份证制作', '0', '2c908fe457db85540157db89263c0003', 'post', '1103', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '56', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dda5da0c27311e69aca4055eb993e69', 'post0406', '医务', '0', '2c908fe457db85540157db89263c0003', 'post', '0406', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '27', '0');
INSERT INTO `jpt_dictionary` VALUES ('3ddb9ae6c27311e69aca4055eb993e69', 'post1004', '巡警', '0', '2c908fe457db85540157db89263c0003', 'post', '1004', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '49', '0');
INSERT INTO `jpt_dictionary` VALUES ('3ddcbe68c27311e69aca4055eb993e69', 'post1001', '治安管理', '0', '2c908fe457db85540157db89263c0003', 'post', '1001', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '46', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dde2526c27311e69aca4055eb993e69', 'post1201', '交通管理', '0', '2c908fe457db85540157db89263c0003', 'post', '1201', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '58', '0');
INSERT INTO `jpt_dictionary` VALUES ('3ddf4878c27311e69aca4055eb993e69', 'post1801', '科技', '0', '2c908fe457db85540157db89263c0003', 'post', '1801', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '86', '0');
INSERT INTO `jpt_dictionary` VALUES ('3de06642c27311e69aca4055eb993e69', 'post1900', '警卫', '0', '2c908fe457db85540157db89263c0003', 'post', '1900', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '87', '0');
INSERT INTO `jpt_dictionary` VALUES ('3de26c7ac27311e69aca4055eb993e69', 'post0501', '纪检', '0', '2c908fe457db85540157db89263c0003', 'post', '0501', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '31', '0');
INSERT INTO `jpt_dictionary` VALUES ('3de38fb4c27311e69aca4055eb993e69', 'post0502', '监察', '0', '2c908fe457db85540157db89263c0003', 'post', '0502', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '32', '0');
INSERT INTO `jpt_dictionary` VALUES ('3de4ca84c27311e69aca4055eb993e69', 'post0601', '法规', '0', '2c908fe457db85540157db89263c0003', 'post', '0601', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '34', '0');
INSERT INTO `jpt_dictionary` VALUES ('3de5ea9bc27311e69aca4055eb993e69', 'post0701', '审计', '0', '2c908fe457db85540157db89263c0003', 'post', '0701', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '36', '0');
INSERT INTO `jpt_dictionary` VALUES ('3de70c9ec27311e69aca4055eb993e69', 'post0802', '经保', '0', '2c908fe457db85540157db89263c0003', 'post', '0802', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '39', '0');
INSERT INTO `jpt_dictionary` VALUES ('3de841afc27311e69aca4055eb993e69', 'post0803', '文保', '0', '2c908fe457db85540157db89263c0003', 'post', '0803', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '40', '0');
INSERT INTO `jpt_dictionary` VALUES ('3de96717c27311e69aca4055eb993e69', 'post0902', '出入境、外国人管理', '0', '2c908fe457db85540157db89263c0003', 'post', '0902', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '43', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dea814fc27311e69aca4055eb993e69', 'post1003', '防暴', '0', '2c908fe457db85540157db89263c0003', 'post', '1003', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '48', '0');
INSERT INTO `jpt_dictionary` VALUES ('3debcedfc27311e69aca4055eb993e69', 'post1100', '户政类', '0', '2c908fe457db85540157db89263c0003', 'post', '1100', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '53', '0');
INSERT INTO `jpt_dictionary` VALUES ('3decefa1c27311e69aca4055eb993e69', 'post1101', '户政管理', '0', '2c908fe457db85540157db89263c0003', 'post', '1101', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '54', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dee2afac27311e69aca4055eb993e69', 'post1200', '交通类', '0', '2c908fe457db85540157db89263c0003', 'post', '1200', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '57', '0');
INSERT INTO `jpt_dictionary` VALUES ('3def7574c27311e69aca4055eb993e69', 'post1306', '训犬', '0', '2c908fe457db85540157db89263c0003', 'post', '1306', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '66', '0');
INSERT INTO `jpt_dictionary` VALUES ('3df0a217c27311e69aca4055eb993e69', 'post1307', '法医', '0', '2c908fe457db85540157db89263c0003', 'post', '1307', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '67', '0');
INSERT INTO `jpt_dictionary` VALUES ('3df1be8ac27311e69aca4055eb993e69', 'post1309', '物证', '0', '2c908fe457db85540157db89263c0003', 'post', '1309', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '69', '0');
INSERT INTO `jpt_dictionary` VALUES ('3df2f6d4c27311e69aca4055eb993e69', 'post1311', '技术防范', '0', '2c908fe457db85540157db89263c0003', 'post', '1311', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '71', '0');
INSERT INTO `jpt_dictionary` VALUES ('3df41833c27311e69aca4055eb993e69', 'post1501', '计算机安全监察', '0', '2c908fe457db85540157db89263c0003', 'post', '1501', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '76', '0');
INSERT INTO `jpt_dictionary` VALUES ('3df536ecc27311e69aca4055eb993e69', 'post1602', '无线通信', '0', '2c908fe457db85540157db89263c0003', 'post', '1602', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '79', '0');
INSERT INTO `jpt_dictionary` VALUES ('3df67be1c27311e69aca4055eb993e69', 'post1604', '计算机', '0', '2c908fe457db85540157db89263c0003', 'post', '1604', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '81', '0');
INSERT INTO `jpt_dictionary` VALUES ('3df791e8c27311e69aca4055eb993e69', 'post1701', '教学管理', '0', '2c908fe457db85540157db89263c0003', 'post', '1701', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '83', '0');
INSERT INTO `jpt_dictionary` VALUES ('3df8a5c0c27311e69aca4055eb993e69', 'post1702', '教学', '0', '2c908fe457db85540157db89263c0003', 'post', '1702', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '84', '0');
INSERT INTO `jpt_dictionary` VALUES ('3df9f384c27311e69aca4055eb993e69', 'post1800', '科研类', '0', '2c908fe457db85540157db89263c0003', 'post', '1800', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '85', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dfb1214c27311e69aca4055eb993e69', 'post1202', '车辆管理', '0', '2c908fe457db85540157db89263c0003', 'post', '1202', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '59', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dfc3626c27311e69aca4055eb993e69', 'post1300', '侦查类', '0', '2c908fe457db85540157db89263c0003', 'post', '1300', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '60', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dfd6f7ec27311e69aca4055eb993e69', 'post1301', '技侦', '0', '2c908fe457db85540157db89263c0003', 'post', '1301', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '61', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dfe8ddbc27311e69aca4055eb993e69', 'post1302', '刑侦', '0', '2c908fe457db85540157db89263c0003', 'post', '1302', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '62', '0');
INSERT INTO `jpt_dictionary` VALUES ('3dffad8bc27311e69aca4055eb993e69', 'post1303', '经侦', '0', '2c908fe457db85540157db89263c0003', 'post', '1303', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '63', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e00e6d2c27311e69aca4055eb993e69', 'post0200', '政工类', '0', '2c908fe457db85540157db89263c0003', 'post', '0200', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '2', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e020457c27311e69aca4055eb993e69', 'post1304', '缉毒', '0', '2c908fe457db85540157db89263c0003', 'post', '1304', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '64', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e0322b1c27311e69aca4055eb993e69', 'post1305', '预审', '0', '2c908fe457db85540157db89263c0003', 'post', '1305', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '65', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e045fd1c27311e69aca4055eb993e69', 'post1308', '痕检', '0', '2c908fe457db85540157db89263c0003', 'post', '1308', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '68', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e056ba2c27311e69aca4055eb993e69', 'post1310', '犯罪信息', '0', '2c908fe457db85540157db89263c0003', 'post', '1310', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '70', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e069479c27311e69aca4055eb993e69', 'post1400', '监管类', '0', '2c908fe457db85540157db89263c0003', 'post', '1400', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '72', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e07d538c27311e69aca4055eb993e69', 'post1402', '看守', '0', '2c908fe457db85540157db89263c0003', 'post', '1402', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '74', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e08ff35c27311e69aca4055eb993e69', 'post1500', '计算机安全监察类', '0', '2c908fe457db85540157db89263c0003', 'post', '1500', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '75', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e0a17b8c27311e69aca4055eb993e69', 'post1600', '通信', '0', '2c908fe457db85540157db89263c0003', 'post', '1600', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '77', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e0b4cc6c27311e69aca4055eb993e69', 'post1601', '有线通信', '0', '2c908fe457db85540157db89263c0003', 'post', '1601', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '78', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e0c63f9c27311e69aca4055eb993e69', 'post1603', '机要通信', '0', '2c908fe457db85540157db89263c0003', 'post', '1603', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '80', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e0d7827c27311e69aca4055eb993e69', 'post1700', '公安院校类', '0', '2c908fe457db85540157db89263c0003', 'post', '1700', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '82', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e0ebd5ac27311e69aca4055eb993e69', 'post2100', '边防', '0', '2c908fe457db85540157db89263c0003', 'post', '2100', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '89', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e0fcff1c27311e69aca4055eb993e69', 'post9000', '附属类', '0', '2c908fe457db85540157db89263c0003', 'post', '9000', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '90', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e10f455c27311e69aca4055eb993e69', 'post9001', '幼教', '0', '2c908fe457db85540157db89263c0003', 'post', '9001', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '91', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e125580c27311e69aca4055eb993e69', 'post9002', '其他', '0', '2c908fe457db85540157db89263c0003', 'post', '9002', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '92', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e137536c27311e69aca4055eb993e69', 'post0901', '外事', '0', '2c908fe457db85540157db89263c0003', 'post', '0901', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '42', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e148e49c27311e69aca4055eb993e69', 'post0407', '工勤人员', '0', '2c908fe457db85540157db89263c0003', 'post', '0407', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '28', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e15cdb2c27311e69aca4055eb993e69', 'post1401', '监所管理', '0', '2c908fe457db85540157db89263c0003', 'post', '1401', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '73', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e17228ac27311e69aca4055eb993e69', 'post1000', '治安', '0', '2c908fe457db85540157db89263c0003', 'post', '1000', '201610191406300000', '201610191406300000', null, 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '45', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e184915c27311e69aca4055eb993e69', 'post0900', '外事类', '0', '2c908fe457db85540157db89263c0003', 'post', '0900', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '41', '0');
INSERT INTO `jpt_dictionary` VALUES ('3e19adedc27311e69aca4055eb993e69', 'post2000', '消防', '0', '2c908fe457db85540157db89263c0003', 'post', '2000', '201610191406300000', '201610191406300000', '1', 'ffffffffffffffffffffffffffffffff', '超级管理员', null, '88', '0');

-- ----------------------------
-- Table structure for jpt_fjgl
-- ----------------------------
DROP TABLE IF EXISTS `jpt_fjgl`;
CREATE TABLE `jpt_fjgl` (
  `ID` char(32) NOT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(32) DEFAULT NULL,
  `ORGID` char(32) DEFAULT NULL,
  `ORGCODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `ORGNAME` varchar(160) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_fjgl
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_ip_log
-- ----------------------------
DROP TABLE IF EXISTS `jpt_ip_log`;
CREATE TABLE `jpt_ip_log` (
  `userId` char(32) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `lastIp` char(15) DEFAULT NULL,
  `nowIp` char(15) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_ip_log
-- ----------------------------
INSERT INTO `jpt_ip_log` VALUES ('ffffffffffffffffffffffffffffffff', '超级管理员', '127.0.0.1', '127.0.0.1');

-- ----------------------------
-- Table structure for jpt_sys_log_2017
-- ----------------------------
DROP TABLE IF EXISTS `jpt_sys_log_2017`;
CREATE TABLE `jpt_sys_log_2017` (
  `ID` char(32) NOT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(63) DEFAULT NULL COMMENT '用户姓名',
  `IP` varchar(20) DEFAULT NULL COMMENT '用户IP',
  `SOURCE` varchar(63) DEFAULT NULL COMMENT '来源（业务模块）',
  `ACTION` int(11) DEFAULT NULL COMMENT '操作行为',
  `MESSAGE` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `CLOUDNODE` int(11) DEFAULT NULL COMMENT '云节点',
  `CREATETIME` char(19) DEFAULT NULL,
  `OPTDEPTID` char(32) DEFAULT NULL,
  `OPTDEPTNAME` varchar(100) DEFAULT NULL COMMENT '操作用户部门名称',
  `OPTUSERDN` varchar(600) DEFAULT NULL COMMENT '操作用户DN值',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用CODE',
  `OPTUSERMODELCODE` varchar(32) DEFAULT NULL COMMENT '用户类型id',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `STATUS` int(11) DEFAULT NULL COMMENT '日志状态：信任、危险、处置完毕',
  `EFFECTED` varchar(32) DEFAULT NULL COMMENT '受影响的',
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `ZERENID` char(32) DEFAULT NULL,
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_sys_log_2017_c_6` (`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_SYS_LOG_2017_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_sys_log_2017
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_sys_log_2018
-- ----------------------------
DROP TABLE IF EXISTS `jpt_sys_log_2018`;
CREATE TABLE `jpt_sys_log_2018` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(63) DEFAULT NULL COMMENT '用户姓名',
  `IP` varchar(20) DEFAULT NULL COMMENT '用户IP',
  `SOURCE` varchar(63) DEFAULT NULL COMMENT '来源（业务模块）',
  `ACTION` int(11) DEFAULT NULL COMMENT '操作行为',
  `MESSAGE` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `CLOUDNODE` int(11) DEFAULT NULL COMMENT '云节点',
  `CREATETIME` char(19) DEFAULT NULL COMMENT '创建时间',
  `OPTDEPTID` char(32) DEFAULT NULL COMMENT '操作用户部门ID',
  `OPTDEPTNAME` varchar(100) DEFAULT NULL COMMENT '操作用户部门名称',
  `OPTUSERDN` varchar(600) DEFAULT NULL COMMENT '操作用户DN值',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用CODE',
  `OPTUSERMODELCODE` varchar(32) DEFAULT NULL COMMENT '用户类型id',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `STATUS` int(11) DEFAULT NULL COMMENT '日志状态：信任、危险、处置完毕',
  `EFFECTED` varchar(32) DEFAULT NULL COMMENT '受影响的',
  `CODE` char(12) DEFAULT NULL COMMENT '机构CODE',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_sys_log_2018_c_6` (`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_SYS_LOG_2018_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_sys_log_2018
-- ----------------------------
INSERT INTO `jpt_sys_log_2018` VALUES ('2d3d919c55aeb6e3a209d0e33a17a329', 'ffffffffffffffffffffffffffffffff', '超级管理员', '127.0.0.1', '配置中心', '3', '删除配置项，警员移动警务RA配置', '0', '2018-03-20 10:56:31', null, null, null, null, null, '1', '0', null, null, null, null, null, null, null, null, null, '2018');

-- ----------------------------
-- Table structure for jpt_sys_log_2019
-- ----------------------------
DROP TABLE IF EXISTS `jpt_sys_log_2019`;
CREATE TABLE `jpt_sys_log_2019` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(63) DEFAULT NULL COMMENT '用户姓名',
  `IP` varchar(20) DEFAULT NULL COMMENT '用户IP',
  `SOURCE` varchar(63) DEFAULT NULL COMMENT '来源（业务模块）',
  `ACTION` int(11) DEFAULT NULL COMMENT '操作行为',
  `MESSAGE` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `CLOUDNODE` int(11) DEFAULT NULL COMMENT '云节点',
  `CREATETIME` char(19) DEFAULT NULL COMMENT '创建时间',
  `OPTDEPTID` char(32) DEFAULT NULL COMMENT '操作用户部门ID',
  `OPTDEPTNAME` varchar(100) DEFAULT NULL COMMENT '操作用户部门名称',
  `OPTUSERDN` varchar(600) DEFAULT NULL COMMENT '操作用户DN值',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用CODE',
  `OPTUSERMODELCODE` varchar(32) DEFAULT NULL COMMENT '用户类型id',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `STATUS` int(11) DEFAULT NULL COMMENT '日志状态：信任、危险、处置完毕',
  `EFFECTED` varchar(32) DEFAULT NULL COMMENT '受影响的',
  `CODE` char(12) DEFAULT NULL COMMENT '机构CODE',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_sys_log_2019_c_6` (`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_SYS_LOG_2019_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_sys_log_2019
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_sys_log_2020
-- ----------------------------
DROP TABLE IF EXISTS `jpt_sys_log_2020`;
CREATE TABLE `jpt_sys_log_2020` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(63) DEFAULT NULL COMMENT '用户姓名',
  `IP` varchar(20) DEFAULT NULL COMMENT '用户IP',
  `SOURCE` varchar(63) DEFAULT NULL COMMENT '来源（业务模块）',
  `ACTION` int(11) DEFAULT NULL COMMENT '操作行为',
  `MESSAGE` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `CLOUDNODE` int(11) DEFAULT NULL COMMENT '云节点',
  `CREATETIME` char(19) DEFAULT NULL COMMENT '创建时间',
  `OPTDEPTID` char(32) DEFAULT NULL COMMENT '操作用户部门ID',
  `OPTDEPTNAME` varchar(100) DEFAULT NULL COMMENT '操作用户部门名称',
  `OPTUSERDN` varchar(600) DEFAULT NULL COMMENT '操作用户DN值',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用CODE',
  `OPTUSERMODELCODE` varchar(32) DEFAULT NULL COMMENT '用户类型id',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `STATUS` int(11) DEFAULT NULL COMMENT '日志状态：信任、危险、处置完毕',
  `EFFECTED` varchar(32) DEFAULT NULL COMMENT '受影响的',
  `CODE` char(12) DEFAULT NULL COMMENT '机构CODE',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_sys_log_2020_c_6` (`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_SYS_LOG_2020_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_sys_log_2020
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_sys_log_2021
-- ----------------------------
DROP TABLE IF EXISTS `jpt_sys_log_2021`;
CREATE TABLE `jpt_sys_log_2021` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(63) DEFAULT NULL COMMENT '用户姓名',
  `IP` varchar(20) DEFAULT NULL COMMENT '用户IP',
  `SOURCE` varchar(63) DEFAULT NULL COMMENT '来源（业务模块）',
  `ACTION` int(11) DEFAULT NULL COMMENT '操作行为',
  `MESSAGE` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `CLOUDNODE` int(11) DEFAULT NULL COMMENT '云节点',
  `CREATETIME` char(19) DEFAULT NULL COMMENT '创建时间',
  `OPTDEPTID` char(32) DEFAULT NULL COMMENT '操作用户部门ID',
  `OPTDEPTNAME` varchar(100) DEFAULT NULL COMMENT '操作用户部门名称',
  `OPTUSERDN` varchar(600) DEFAULT NULL COMMENT '操作用户DN值',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用CODE',
  `OPTUSERMODELCODE` varchar(32) DEFAULT NULL COMMENT '用户类型id',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `STATUS` int(11) DEFAULT NULL COMMENT '日志状态：信任、危险、处置完毕',
  `EFFECTED` varchar(32) DEFAULT NULL COMMENT '受影响的',
  `CODE` char(12) DEFAULT NULL COMMENT '机构CODE',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_sys_log_2021_c_6` (`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_SYS_LOG_2021_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_sys_log_2021
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_sys_log_2022
-- ----------------------------
DROP TABLE IF EXISTS `jpt_sys_log_2022`;
CREATE TABLE `jpt_sys_log_2022` (
  `ID` char(32) NOT NULL COMMENT 'ID',
  `USERID` char(32) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(63) DEFAULT NULL COMMENT '用户姓名',
  `IP` varchar(20) DEFAULT NULL COMMENT '用户IP',
  `SOURCE` varchar(63) DEFAULT NULL COMMENT '来源（业务模块）',
  `ACTION` int(11) DEFAULT NULL COMMENT '操作行为',
  `MESSAGE` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `CLOUDNODE` int(11) DEFAULT NULL COMMENT '云节点',
  `CREATETIME` char(19) DEFAULT NULL COMMENT '创建时间',
  `OPTDEPTID` char(32) DEFAULT NULL COMMENT '操作用户部门ID',
  `OPTDEPTNAME` varchar(100) DEFAULT NULL COMMENT '操作用户部门名称',
  `OPTUSERDN` varchar(600) DEFAULT NULL COMMENT '操作用户DN值',
  `APPCODE` varchar(32) DEFAULT NULL COMMENT '应用CODE',
  `OPTUSERMODELCODE` varchar(32) DEFAULT NULL COMMENT '用户类型id',
  `MARK` int(11) DEFAULT NULL COMMENT '标识日志信息是否经过分析',
  `STATUS` int(11) DEFAULT NULL COMMENT '日志状态：信任、危险、处置完毕',
  `EFFECTED` varchar(32) DEFAULT NULL COMMENT '受影响的',
  `CODE` char(12) DEFAULT NULL COMMENT '机构CODE',
  `PROVINCE` char(2) DEFAULT NULL COMMENT '省份',
  `CITY` char(2) DEFAULT NULL COMMENT '市',
  `COUNTRY` char(2) DEFAULT NULL COMMENT '区县',
  `SUBORDINATE` char(2) DEFAULT NULL COMMENT '下级1',
  `SUBORDINATE2` char(2) DEFAULT NULL COMMENT '下级2',
  `SUBORDINATE3` char(2) DEFAULT NULL COMMENT '下级3',
  `ZERENID` char(32) DEFAULT NULL COMMENT '主管警员ID',
  `YEAR` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_sys_log_2022_c_6` (`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_JPT_SYS_LOG_2022_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_sys_log_2022
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_userlife_log_2017
-- ----------------------------
DROP TABLE IF EXISTS `jpt_userlife_log_2017`;
CREATE TABLE `jpt_userlife_log_2017` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id，主键',
  `USERID` char(128) DEFAULT NULL,
  `OPTTIME` char(50) DEFAULT NULL,
  `OPERATOR` varchar(128) DEFAULT NULL COMMENT '操作者姓名',
  `OPTTYPE` int(11) DEFAULT NULL COMMENT '操作类型',
  `OPTCONTENT` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `SRCID` char(63) DEFAULT NULL,
  `SRCTABLE` varchar(50) DEFAULT NULL COMMENT '原始日志表名称',
  `DEALWITHFLAG` int(11) DEFAULT NULL COMMENT '主动操作(1)还是被动操作(0)',
  `LOGYEAR` char(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_userlife_log_2017_o_ud` (`OPTTIME`,`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_userlife_log_2017
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_userlife_log_2018
-- ----------------------------
DROP TABLE IF EXISTS `jpt_userlife_log_2018`;
CREATE TABLE `jpt_userlife_log_2018` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id，主键',
  `USERID` char(128) DEFAULT NULL COMMENT '用户id',
  `OPTTIME` char(50) DEFAULT NULL COMMENT '访问应用时间或操作时间',
  `OPERATOR` varchar(128) DEFAULT NULL COMMENT '操作者姓名',
  `OPTTYPE` int(11) DEFAULT NULL COMMENT '操作类型',
  `OPTCONTENT` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `SRCID` char(63) DEFAULT NULL COMMENT '原始日志表中的id',
  `SRCTABLE` varchar(50) DEFAULT NULL COMMENT '原始日志表名称',
  `DEALWITHFLAG` int(11) DEFAULT NULL COMMENT '主动操作(1)还是被动操作(0)',
  `LOGYEAR` char(4) DEFAULT NULL COMMENT '年',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_userlife_log_2018_o_ud` (`OPTTIME`,`USERID`) USING BTREE
) ENGINE=GsDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_userlife_log_2018
-- ----------------------------
INSERT INTO `jpt_userlife_log_2018` VALUES ('1', 'ffffffffffffffffffffffffffffffff', '2018-03-20 10:55:13', '超级管理员', '99', '通过超级管理员登录警证通', 'aa85c8020ba116100944166ca29e66bb', 'JPT_APPLOGIN_LOG_2018', '1', '2018');
INSERT INTO `jpt_userlife_log_2018` VALUES ('2', 'ffffffffffffffffffffffffffffffff', '2018-03-20 10:55:57', '超级管理员', '99', '通过超级管理员登录警证通', 'd4f7719a2f3ad6a9c4bea14d184d55b5', 'JPT_APPLOGIN_LOG_2018', '1', '2018');
INSERT INTO `jpt_userlife_log_2018` VALUES ('3', 'ffffffffffffffffffffffffffffffff', '2018-03-20 10:56:31', '超级管理员', '3', '删除配置项，警员移动警务RA配置', '2d3d919c55aeb6e3a209d0e33a17a329', 'JPT_SYS_LOG_2018', '1', '2018');

-- ----------------------------
-- Table structure for jpt_userlife_log_2019
-- ----------------------------
DROP TABLE IF EXISTS `jpt_userlife_log_2019`;
CREATE TABLE `jpt_userlife_log_2019` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id，主键',
  `USERID` char(128) DEFAULT NULL COMMENT '用户id',
  `OPTTIME` char(50) DEFAULT NULL COMMENT '访问应用时间或操作时间',
  `OPERATOR` varchar(128) DEFAULT NULL COMMENT '操作者姓名',
  `OPTTYPE` int(11) DEFAULT NULL COMMENT '操作类型',
  `OPTCONTENT` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `SRCID` char(63) DEFAULT NULL COMMENT '原始日志表中的id',
  `SRCTABLE` varchar(50) DEFAULT NULL COMMENT '原始日志表名称',
  `DEALWITHFLAG` int(11) DEFAULT NULL COMMENT '主动操作(1)还是被动操作(0)',
  `LOGYEAR` char(4) DEFAULT NULL COMMENT '年',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_userlife_log_2019_o_ud` (`OPTTIME`,`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_userlife_log_2019
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_userlife_log_2020
-- ----------------------------
DROP TABLE IF EXISTS `jpt_userlife_log_2020`;
CREATE TABLE `jpt_userlife_log_2020` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id，主键',
  `USERID` char(128) DEFAULT NULL COMMENT '用户id',
  `OPTTIME` char(50) DEFAULT NULL COMMENT '访问应用时间或操作时间',
  `OPERATOR` varchar(128) DEFAULT NULL COMMENT '操作者姓名',
  `OPTTYPE` int(11) DEFAULT NULL COMMENT '操作类型',
  `OPTCONTENT` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `SRCID` char(63) DEFAULT NULL COMMENT '原始日志表中的id',
  `SRCTABLE` varchar(50) DEFAULT NULL COMMENT '原始日志表名称',
  `DEALWITHFLAG` int(11) DEFAULT NULL COMMENT '主动操作(1)还是被动操作(0)',
  `LOGYEAR` char(4) DEFAULT NULL COMMENT '年',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_userlife_log_2020_o_ud` (`OPTTIME`,`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_userlife_log_2020
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_userlife_log_2021
-- ----------------------------
DROP TABLE IF EXISTS `jpt_userlife_log_2021`;
CREATE TABLE `jpt_userlife_log_2021` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id，主键',
  `USERID` char(128) DEFAULT NULL COMMENT '用户id',
  `OPTTIME` char(50) DEFAULT NULL COMMENT '访问应用时间或操作时间',
  `OPERATOR` varchar(128) DEFAULT NULL COMMENT '操作者姓名',
  `OPTTYPE` int(11) DEFAULT NULL COMMENT '操作类型',
  `OPTCONTENT` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `SRCID` char(63) DEFAULT NULL COMMENT '原始日志表中的id',
  `SRCTABLE` varchar(50) DEFAULT NULL COMMENT '原始日志表名称',
  `DEALWITHFLAG` int(11) DEFAULT NULL COMMENT '主动操作(1)还是被动操作(0)',
  `LOGYEAR` char(4) DEFAULT NULL COMMENT '年',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_userlife_log_2021_o_ud` (`OPTTIME`,`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_userlife_log_2021
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_userlife_log_2022
-- ----------------------------
DROP TABLE IF EXISTS `jpt_userlife_log_2022`;
CREATE TABLE `jpt_userlife_log_2022` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id，主键',
  `USERID` char(128) DEFAULT NULL COMMENT '用户id',
  `OPTTIME` char(50) DEFAULT NULL COMMENT '访问应用时间或操作时间',
  `OPERATOR` varchar(128) DEFAULT NULL COMMENT '操作者姓名',
  `OPTTYPE` int(11) DEFAULT NULL COMMENT '操作类型',
  `OPTCONTENT` varchar(1000) DEFAULT NULL COMMENT '操作内容',
  `SRCID` char(63) DEFAULT NULL COMMENT '原始日志表中的id',
  `SRCTABLE` varchar(50) DEFAULT NULL COMMENT '原始日志表名称',
  `DEALWITHFLAG` int(11) DEFAULT NULL COMMENT '主动操作(1)还是被动操作(0)',
  `LOGYEAR` char(4) DEFAULT NULL COMMENT '年',
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_userlife_log_2022_o_ud` (`OPTTIME`,`USERID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_userlife_log_2022
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_warning_data
-- ----------------------------
DROP TABLE IF EXISTS `jpt_warning_data`;
CREATE TABLE `jpt_warning_data` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(126) DEFAULT NULL,
  `IP` varchar(40) DEFAULT NULL,
  `CREATETIME` char(24) DEFAULT NULL,
  `DEPTID` char(32) DEFAULT NULL,
  `DEPTNAME` varchar(100) DEFAULT NULL,
  `APPCODE` varchar(32) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `WARNINGTYPE` int(11) DEFAULT NULL,
  `IDCARD` char(18) DEFAULT NULL,
  `USERSTATUS` int(11) DEFAULT NULL,
  `NO_MATCH_REASON` int(10) DEFAULT NULL,
  `EXCEPTIONREASON` int(11) DEFAULT NULL,
  `CERT_RETIRE_DATE` char(24) DEFAULT NULL,
  `LAST_LOGIN_DATE` char(24) DEFAULT NULL,
  `NO_LOGIN_DAY` int(11) DEFAULT NULL,
  `AUTHORIZE_ORG` varchar(100) DEFAULT NULL,
  `AUTHORIZE_USER` varchar(100) DEFAULT NULL,
  `AUTHORIZED_ORG` varchar(100) DEFAULT NULL,
  `AUTHORIZED_ROLE` varchar(100) DEFAULT NULL,
  `AUTHORIZED_OBJ` varchar(100) DEFAULT NULL,
  `AUTHORIZE_TYPE` varchar(100) DEFAULT NULL,
  `APPNAME` varchar(126) DEFAULT NULL,
  `AUTHORIZE_DATE` char(24) DEFAULT NULL,
  `permissions_retire_date` char(24) DEFAULT NULL,
  `MODELNAME` varchar(100) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ZERENID` char(32) DEFAULT NULL,
  `DEPNAME` varchar(126) DEFAULT NULL,
  `RETIRE_DATE` char(24) DEFAULT NULL,
  `CARDID` varchar(50) DEFAULT NULL,
  `RULEID` varchar(32) DEFAULT NULL,
  `certId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_warning_data_userid` (`USERID`) USING BTREE,
  KEY `IX_jpt_warning_data_zerenid` (`ZERENID`) USING BTREE,
  KEY `IX_jpt_warning_data_wtype_6` (`WARNINGTYPE`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jpt_warning_data_c_s_w_6` (`CODE`,`STATUS`,`WARNINGTYPE`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jpt_warning_data_s_w_6` (`STATUS`,`WARNINGTYPE`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_warning_data
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_warning_log
-- ----------------------------
DROP TABLE IF EXISTS `jpt_warning_log`;
CREATE TABLE `jpt_warning_log` (
  `ID` char(32) NOT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(126) DEFAULT NULL,
  `IP` varchar(40) DEFAULT NULL,
  `CREATETIME` char(19) DEFAULT NULL,
  `APPCODE` varchar(32) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `WARNINGTYPE` int(11) DEFAULT NULL,
  `OPERATINGTIME` char(19) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ZERENID` char(32) DEFAULT NULL,
  `DEPNAME` varchar(126) DEFAULT NULL,
  `YEAR` int(10) DEFAULT NULL,
  `appName` varchar(126) DEFAULT NULL,
  `loginId` char(32) DEFAULT NULL,
  `MESSAGE` varchar(1000) DEFAULT NULL,
  `MODELCODE` varchar(32) DEFAULT NULL,
  `MODELNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jpt_warning_log_userid` (`USERID`) USING BTREE,
  KEY `IX_jpt_warning_log_zerenid` (`ZERENID`) USING BTREE,
  KEY `IX_jpt_warning_log_loginid` (`loginId`) USING BTREE,
  KEY `IX_jpt_warning_log_wtype_6` (`WARNINGTYPE`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE,
  KEY `IX_jpt_warning_log_o_s_w_6` (`OPERATINGTIME`,`STATUS`,`WARNINGTYPE`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_warning_log
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_yd_applogin_log_2017
-- ----------------------------
DROP TABLE IF EXISTS `jpt_yd_applogin_log_2017`;
CREATE TABLE `jpt_yd_applogin_log_2017` (
  `ID` char(32) NOT NULL,
  `LOCALCODE` varchar(6) DEFAULT NULL,
  `APPCODE` varchar(32) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `USERROLECODE` varchar(80) DEFAULT NULL,
  `PRIVILEGECODE` varchar(512) DEFAULT NULL,
  `ISLOCALUSER` int(10) DEFAULT NULL,
  `ACCESSTIME` char(19) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `OPTUSERDN` varchar(2000) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(256) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `CHARGE` varchar(255) DEFAULT NULL,
  `MINISTRY` varchar(255) DEFAULT NULL,
  `CERTROLE` varchar(255) DEFAULT NULL,
  `APPNAME` varchar(255) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ZERENID` char(32) DEFAULT NULL,
  `MARK` int(10) DEFAULT NULL,
  `YEAR` int(10) DEFAULT NULL,
  `OPTIONSTATUS` int(10) DEFAULT NULL,
  `LOGINMODE` int(2) DEFAULT NULL COMMENT '登录方式 0证书1手机2邮箱3密码4超级管理员5身份证号密码',
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2017_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2017_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2017_m` (`MARK`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_yd_applogin_log_2017
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_yd_applogin_log_2018
-- ----------------------------
DROP TABLE IF EXISTS `jpt_yd_applogin_log_2018`;
CREATE TABLE `jpt_yd_applogin_log_2018` (
  `ID` char(32) NOT NULL,
  `LOCALCODE` varchar(6) DEFAULT NULL,
  `APPCODE` varchar(32) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `USERROLECODE` varchar(80) DEFAULT NULL,
  `PRIVILEGECODE` varchar(512) DEFAULT NULL,
  `ISLOCALUSER` int(10) DEFAULT NULL,
  `ACCESSTIME` char(19) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `OPTUSERDN` varchar(2000) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(256) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `CHARGE` varchar(255) DEFAULT NULL,
  `MINISTRY` varchar(255) DEFAULT NULL,
  `CERTROLE` varchar(255) DEFAULT NULL,
  `APPNAME` varchar(255) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ZERENID` char(32) DEFAULT NULL,
  `MARK` int(10) DEFAULT NULL,
  `YEAR` int(10) DEFAULT NULL,
  `OPTIONSTATUS` int(10) DEFAULT NULL,
  `LOGINMODE` int(2) DEFAULT NULL COMMENT '登录方式 0证书1手机2邮箱3密码4超级管理员5身份证号密码',
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2018_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2018_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2018_m` (`MARK`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_yd_applogin_log_2018
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_yd_applogin_log_2019
-- ----------------------------
DROP TABLE IF EXISTS `jpt_yd_applogin_log_2019`;
CREATE TABLE `jpt_yd_applogin_log_2019` (
  `ID` char(32) NOT NULL,
  `LOCALCODE` varchar(6) DEFAULT NULL,
  `APPCODE` varchar(32) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `USERROLECODE` varchar(80) DEFAULT NULL,
  `PRIVILEGECODE` varchar(512) DEFAULT NULL,
  `ISLOCALUSER` int(10) DEFAULT NULL,
  `ACCESSTIME` char(19) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `OPTUSERDN` varchar(2000) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(256) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `CHARGE` varchar(255) DEFAULT NULL,
  `MINISTRY` varchar(255) DEFAULT NULL,
  `CERTROLE` varchar(255) DEFAULT NULL,
  `APPNAME` varchar(255) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ZERENID` char(32) DEFAULT NULL,
  `MARK` int(10) DEFAULT NULL,
  `YEAR` int(10) DEFAULT NULL,
  `OPTIONSTATUS` int(10) DEFAULT NULL,
  `LOGINMODE` int(2) DEFAULT NULL COMMENT '登录方式 0证书1手机2邮箱3密码4超级管理员5身份证号密码',
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2019_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2019_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2019_m` (`MARK`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_yd_applogin_log_2019
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_yd_applogin_log_2020
-- ----------------------------
DROP TABLE IF EXISTS `jpt_yd_applogin_log_2020`;
CREATE TABLE `jpt_yd_applogin_log_2020` (
  `ID` char(32) NOT NULL,
  `LOCALCODE` varchar(6) DEFAULT NULL,
  `APPCODE` varchar(32) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `USERROLECODE` varchar(80) DEFAULT NULL,
  `PRIVILEGECODE` varchar(512) DEFAULT NULL,
  `ISLOCALUSER` int(10) DEFAULT NULL,
  `ACCESSTIME` char(19) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `OPTUSERDN` varchar(2000) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(256) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `CHARGE` varchar(255) DEFAULT NULL,
  `MINISTRY` varchar(255) DEFAULT NULL,
  `CERTROLE` varchar(255) DEFAULT NULL,
  `APPNAME` varchar(255) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ZERENID` char(32) DEFAULT NULL,
  `MARK` int(10) DEFAULT NULL,
  `YEAR` int(10) DEFAULT NULL,
  `OPTIONSTATUS` int(10) DEFAULT NULL,
  `LOGINMODE` int(2) DEFAULT NULL COMMENT '登录方式 0证书1手机2邮箱3密码4超级管理员5身份证号密码',
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2020_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2020_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2020_m` (`MARK`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_yd_applogin_log_2020
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_yd_applogin_log_2021
-- ----------------------------
DROP TABLE IF EXISTS `jpt_yd_applogin_log_2021`;
CREATE TABLE `jpt_yd_applogin_log_2021` (
  `ID` char(32) NOT NULL,
  `LOCALCODE` varchar(6) DEFAULT NULL,
  `APPCODE` varchar(32) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `USERROLECODE` varchar(80) DEFAULT NULL,
  `PRIVILEGECODE` varchar(512) DEFAULT NULL,
  `ISLOCALUSER` int(10) DEFAULT NULL,
  `ACCESSTIME` char(19) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `OPTUSERDN` varchar(2000) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(256) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `CHARGE` varchar(255) DEFAULT NULL,
  `MINISTRY` varchar(255) DEFAULT NULL,
  `CERTROLE` varchar(255) DEFAULT NULL,
  `APPNAME` varchar(255) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ZERENID` char(32) DEFAULT NULL,
  `MARK` int(10) DEFAULT NULL,
  `YEAR` int(10) DEFAULT NULL,
  `OPTIONSTATUS` int(10) DEFAULT NULL,
  `LOGINMODE` int(2) DEFAULT NULL COMMENT '登录方式 0证书1手机2邮箱3密码4超级管理员5身份证号密码',
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2021_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2021_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2021_m` (`MARK`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_yd_applogin_log_2021
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_yd_applogin_log_2022
-- ----------------------------
DROP TABLE IF EXISTS `jpt_yd_applogin_log_2022`;
CREATE TABLE `jpt_yd_applogin_log_2022` (
  `ID` char(32) NOT NULL,
  `LOCALCODE` varchar(6) DEFAULT NULL,
  `APPCODE` varchar(32) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `USERROLECODE` varchar(80) DEFAULT NULL,
  `PRIVILEGECODE` varchar(512) DEFAULT NULL,
  `ISLOCALUSER` int(1) DEFAULT NULL,
  `ACCESSTIME` char(19) DEFAULT NULL,
  `USERID` char(32) DEFAULT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `OPTUSERDN` varchar(2000) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `DEPNAME` varchar(256) DEFAULT NULL,
  `POLICECLASS` varchar(255) DEFAULT NULL,
  `RANK` varchar(255) DEFAULT NULL,
  `POSTNAME` varchar(255) DEFAULT NULL,
  `CHARGE` varchar(255) DEFAULT NULL,
  `MINISTRY` varchar(255) DEFAULT NULL,
  `CERTROLE` varchar(255) DEFAULT NULL,
  `APPNAME` varchar(255) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `ZERENID` char(32) DEFAULT NULL,
  `MARK` int(10) DEFAULT NULL,
  `YEAR` int(10) DEFAULT NULL,
  `OPTIONSTATUS` int(10) DEFAULT NULL,
  `LOGINMODE` int(2) DEFAULT NULL,
  `CHINESELOGINMODE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2022_a_6` (`ACCESSTIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2022_6` (`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_2022_m` (`MARK`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_yd_applogin_log_2022
-- ----------------------------

-- ----------------------------
-- Table structure for jpt_yd_applogin_log_statistics
-- ----------------------------
DROP TABLE IF EXISTS `jpt_yd_applogin_log_statistics`;
CREATE TABLE `jpt_yd_applogin_log_statistics` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `COUNTS` int(10) DEFAULT NULL,
  `CREATETIME` char(40) DEFAULT NULL,
  `CODE` char(12) DEFAULT NULL,
  `PROVINCE` char(2) DEFAULT NULL,
  `CITY` char(2) DEFAULT NULL,
  `COUNTRY` char(2) DEFAULT NULL,
  `SUBORDINATE` char(2) DEFAULT NULL,
  `SUBORDINATE2` char(2) DEFAULT NULL,
  `SUBORDINATE3` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_JPT_YD_APPLOGIN_LOG_S_C_6` (`CREATETIME`,`PROVINCE`,`CITY`,`COUNTRY`,`SUBORDINATE`,`SUBORDINATE2`,`SUBORDINATE3`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jpt_yd_applogin_log_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for jwfi_commdecision
-- ----------------------------
DROP TABLE IF EXISTS `jwfi_commdecision`;
CREATE TABLE `jwfi_commdecision` (
  `CLOUDNODE` int(11) DEFAULT '0',
  `ID` varchar(61) NOT NULL,
  `WORKFLOWID` varchar(61) DEFAULT NULL,
  `WFDM_ID` varchar(63) DEFAULT NULL,
  `NODE_ID` varchar(63) DEFAULT NULL,
  `TIAOJIAN` varchar(32) DEFAULT NULL,
  `BIAODANID` varchar(63) DEFAULT NULL,
  `WIDGETID` varchar(63) DEFAULT NULL,
  `BIJIAO` varchar(32) DEFAULT NULL,
  `ZHI` varchar(200) DEFAULT NULL,
  `TO_NODE_ID` varchar(200) DEFAULT NULL,
  `BIAONAME` varchar(63) DEFAULT NULL,
  `ZIDUANNAME` varchar(63) DEFAULT NULL,
  `ZIDUANTYPE` varchar(63) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  `TO_NODE_PATH` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwfi_commdecision
-- ----------------------------

-- ----------------------------
-- Table structure for jwfi_node_privelge
-- ----------------------------
DROP TABLE IF EXISTS `jwfi_node_privelge`;
CREATE TABLE `jwfi_node_privelge` (
  `CLOUDNODE` int(11) DEFAULT '0',
  `ID` varchar(63) NOT NULL,
  `NODE_ID` varchar(63) DEFAULT NULL,
  `PRIVATE_DATA_ELEMENT_ID` varchar(63) DEFAULT NULL,
  `FORM_ID` varchar(63) DEFAULT NULL,
  `PRIVELGE` varchar(63) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  `PROCESS_ID` varchar(63) DEFAULT NULL,
  `WFDM_ID` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwfi_node_privelge
-- ----------------------------

-- ----------------------------
-- Table structure for jwfi_process_node_form
-- ----------------------------
DROP TABLE IF EXISTS `jwfi_process_node_form`;
CREATE TABLE `jwfi_process_node_form` (
  `CLOUDNODE` int(11) DEFAULT '0',
  `ID` varchar(63) NOT NULL,
  `PROCESS_ID` varchar(63) DEFAULT NULL,
  `NODE_ID` varchar(63) DEFAULT NULL,
  `FORM_ID` varchar(63) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  `WFDM_ID` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwfi_process_node_form
-- ----------------------------

-- ----------------------------
-- Table structure for jwfi_version
-- ----------------------------
DROP TABLE IF EXISTS `jwfi_version`;
CREATE TABLE `jwfi_version` (
  `CLOUDNODE` int(11) DEFAULT '0',
  `ID` varchar(63) NOT NULL,
  `PROCESSID` varchar(63) DEFAULT NULL,
  `PIID` varchar(63) DEFAULT NULL,
  `JITFROM_ID` varchar(63) DEFAULT NULL,
  `JITFROMINSTINCEID` varchar(63) DEFAULT NULL,
  `TIID` varchar(63) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  `BINDID` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwfi_version
-- ----------------------------

-- ----------------------------
-- Table structure for jwfi_workflow_datamodel
-- ----------------------------
DROP TABLE IF EXISTS `jwfi_workflow_datamodel`;
CREATE TABLE `jwfi_workflow_datamodel` (
  `CLOUDNODE` int(11) DEFAULT '0',
  `ID` varchar(63) NOT NULL,
  `WORKFLOW_ID` varchar(63) DEFAULT NULL,
  `BUSINESS_ID` varchar(63) DEFAULT NULL,
  `ISPUBLISH` varchar(1) DEFAULT NULL,
  `VERSION` int(10) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwfi_workflow_datamodel
-- ----------------------------

-- ----------------------------
-- Table structure for jwf_daiban
-- ----------------------------
DROP TABLE IF EXISTS `jwf_daiban`;
CREATE TABLE `jwf_daiban` (
  `publicid` varchar(63) NOT NULL,
  `id` varchar(32) NOT NULL,
  `cloudnode` int(11) DEFAULT NULL,
  `createtime` bigint(20) DEFAULT NULL,
  `updatetime` bigint(20) DEFAULT NULL,
  `piid` int(11) DEFAULT NULL,
  `tiid` int(11) DEFAULT NULL,
  `nodeid` varchar(32) DEFAULT NULL,
  `nodename` varchar(50) DEFAULT NULL,
  `actorid` varchar(40) DEFAULT NULL,
  `actorname` varchar(40) DEFAULT NULL,
  `createactorid` varchar(40) DEFAULT NULL,
  `createactorname` varchar(40) DEFAULT NULL,
  `type` char(1) DEFAULT 'b',
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `isopen` int(11) DEFAULT NULL,
  `issuspended` int(11) DEFAULT NULL,
  `jwfproid` varchar(32) DEFAULT NULL,
  `feileiid` varchar(32) DEFAULT NULL,
  `fenleiname` varchar(50) DEFAULT NULL,
  `zifenleiid` varchar(32) DEFAULT NULL,
  `zifenleiname` varchar(50) DEFAULT NULL,
  `nodetype` varchar(50) DEFAULT NULL,
  `isdraft` char(1) DEFAULT NULL,
  `subflowactorid` varchar(50) DEFAULT NULL,
  `jwfproname` varchar(100) DEFAULT NULL,
  `LZRID` varchar(40) DEFAULT NULL,
  `releaseUserId` varchar(63) DEFAULT NULL,
  `releaseUserName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_daiban_piidtiid` (`piid`,`tiid`,`subflowactorid`,`isopen`) USING BTREE,
  KEY `IX_jwf_daiban_isdraft_isopen_issu` (`isdraft`,`isopen`,`issuspended`) USING BTREE,
  KEY `IX_jwf_daiban_publicid_isdraft_fenleiid_actorid` (`publicid`,`isdraft`,`feileiid`,`actorid`) USING BTREE,
  KEY `IX_jwf_daiban_publicid` (`publicid`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwf_daiban
-- ----------------------------

-- ----------------------------
-- Table structure for jwf_form
-- ----------------------------
DROP TABLE IF EXISTS `jwf_form`;
CREATE TABLE `jwf_form` (
  `id` varchar(32) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `jwfid` varchar(32) DEFAULT NULL,
  `form_id` varchar(20) DEFAULT NULL,
  `isshow` char(255) DEFAULT NULL,
  `form_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwf_form
-- ----------------------------

-- ----------------------------
-- Table structure for jwf_log
-- ----------------------------
DROP TABLE IF EXISTS `jwf_log`;
CREATE TABLE `jwf_log` (
  `ID` varchar(63) NOT NULL,
  `PROCESSID` varchar(63) DEFAULT NULL,
  `PIID` bigint(20) DEFAULT '0',
  `TIID` varchar(63) DEFAULT NULL,
  `ACTORID` varchar(63) DEFAULT NULL,
  `ACTORNAME` varchar(63) DEFAULT NULL,
  `TINAME` varchar(63) DEFAULT NULL,
  `NTIID` varchar(63) DEFAULT NULL,
  `NACTORID` varchar(500) DEFAULT NULL,
  `NACTORNAME` varchar(500) DEFAULT NULL,
  `NTINAME` varchar(63) DEFAULT NULL,
  `CONTENT` varchar(500) DEFAULT NULL,
  `TYPE` varchar(63) DEFAULT NULL,
  `ACTORDATE` float DEFAULT NULL,
  `TIME_STAMP` bigint(20) DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT '0',
  `deptname` varchar(120) DEFAULT NULL,
  `deptid` varchar(63) DEFAULT NULL,
  `ISDEL` float DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwf_log
-- ----------------------------

-- ----------------------------
-- Table structure for jwf_new_daiban
-- ----------------------------
DROP TABLE IF EXISTS `jwf_new_daiban`;
CREATE TABLE `jwf_new_daiban` (
  `ID` varchar(32) NOT NULL,
  `PIID` int(10) DEFAULT NULL,
  `TIID` int(10) DEFAULT NULL,
  `CREATETIME` bigint(19) DEFAULT NULL,
  `UPDATETIME` bigint(19) DEFAULT NULL,
  `NODEID` varchar(126) DEFAULT NULL,
  `NODENAME` varchar(126) DEFAULT NULL,
  `ACTORNAME` varchar(126) DEFAULT NULL,
  `ACTORID` varchar(126) DEFAULT NULL,
  `CREATEACTORID` varchar(126) DEFAULT NULL,
  `CREATEACTORNAME` varchar(126) DEFAULT NULL,
  `TYPE` char(1) DEFAULT NULL,
  `ENDDATE` datetime DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `ISOPEN` int(11) DEFAULT NULL,
  `ISSUSPENDED` int(11) DEFAULT NULL,
  `FEILEIID` varchar(126) DEFAULT NULL,
  `FENLEINAME` varchar(126) DEFAULT NULL,
  `ZIFENLEIID` varchar(126) DEFAULT NULL,
  `ZIFENLEINAME` varchar(126) DEFAULT NULL,
  `JWFPROID` varchar(126) DEFAULT NULL,
  `ISDRAFT` char(1) DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT NULL,
  `PUBLICID` varchar(63) DEFAULT NULL,
  `NODETYPE` varchar(100) DEFAULT NULL,
  `SUBFLOWACTORID` varchar(100) DEFAULT NULL,
  `JWFPRONAME` varchar(200) DEFAULT NULL,
  `LZRID` varchar(126) DEFAULT NULL,
  `RELEASEUSERID` varchar(126) DEFAULT NULL,
  `RELEASEUSERNAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jwf_new_daiban_piidtiid` (`PIID`,`TIID`) USING BTREE,
  KEY `IX_jwf_new_daiban_p_more` (`PUBLICID`,`CREATEACTORID`,`ISDRAFT`,`ISOPEN`,`ISSUSPENDED`,`FEILEIID`,`ZIFENLEIID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwf_new_daiban
-- ----------------------------

-- ----------------------------
-- Table structure for jwf_node
-- ----------------------------
DROP TABLE IF EXISTS `jwf_node`;
CREATE TABLE `jwf_node` (
  `CLOUDNODE` int(11) DEFAULT '0',
  `ID` varchar(63) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `PROCESS_ID` varchar(255) DEFAULT NULL,
  `TIMER` varchar(255) DEFAULT NULL,
  `INFO` longtext,
  `TIME_STAMP` float DEFAULT NULL,
  `NODE_ID` varchar(100) DEFAULT NULL,
  `DECISIONCLASS` varchar(255) DEFAULT NULL,
  `HUIQIAN` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_jwf_node_processId_nodeId` (`PROCESS_ID`,`NODE_ID`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwf_node
-- ----------------------------
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed0baf560006', '开始', 'start', '2c908f355fecbea0015fecce3de20001', null, null, '2.01711e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed0baf590007', '起草', 'task', '2c908f355fecbea0015fecce3de20001', '', '', '2.01711e16', 'node_2', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed0baf5e0009', '政工部门审核', 'task', '2c908f355fecbea0015fecce3de20001', '', '', '2.01711e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed0baf63000b', '办结', 'end', '2c908f355fecbea0015fecce3de20001', null, null, '2.01711e16', 'node_4', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed25ef340012', '开始', 'start', '2c908f355fecf8e8015fed2522810011', null, null, '2.01711e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed25ef360013', '起草', 'task', '2c908f355fecf8e8015fed2522810011', '', '', '2.01711e16', 'node_2', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed25ef3b0015', '办结', 'end', '2c908f355fecf8e8015fed2522810011', null, null, '2.01711e16', 'node_3', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed27705e0017', '开始', 'start', '2c908f355fecf8e8015fed26b00a0016', null, null, '2.01711e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed2770600018', '起草', 'task', '2c908f355fecf8e8015fed26b00a0016', '', '', '2.01711e16', 'node_2', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed277063001a', '办结', 'end', '2c908f355fecf8e8015fed26b00a0016', null, null, '2.01711e16', 'node_3', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed29ca02001c', '开始', 'start', '2c908f355fecf8e8015fed28197d001b', null, null, '2.01711e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed29ca04001d', '起草', 'task', '2c908f355fecf8e8015fed28197d001b', '', '', '2.01711e16', 'node_2', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed29ca08001f', '所在部门审核', 'task', '2c908f355fecf8e8015fed28197d001b', '', '', '2.01711e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed29ca0d0021', '政工部门审核', 'task', '2c908f355fecf8e8015fed28197d001b', '', '', '2.01711e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed29ca110023', '办结', 'end', '2c908f355fecf8e8015fed28197d001b', null, null, '2.01711e16', 'node_5', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed2db8ab0025', '开始', 'start', '2c908f355fecf8e8015fed2bf4580024', null, null, '2.01711e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed2db8ad0026', '起草', 'task', '2c908f355fecf8e8015fed2bf4580024', '', '', '2.01711e16', 'node_2', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed2db8b10028', '政工部门审核', 'task', '2c908f355fecf8e8015fed2bf4580024', '', '', '2.01711e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed2db8b6002a', '办结', 'end', '2c908f355fecf8e8015fed2bf4580024', null, null, '2.01711e16', 'node_4', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed301237002c', '开始', 'start', '2c908f355fecf8e8015fed2f087f002b', null, null, '2.01711e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed301239002d', '起草', 'task', '2c908f355fecf8e8015fed2f087f002b', '', '', '2.01711e16', 'node_2', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed30123d002f', '政工部门审核', 'task', '2c908f355fecf8e8015fed2f087f002b', '', '', '2.01711e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed3012420031', '办结', 'end', '2c908f355fecf8e8015fed2f087f002b', null, null, '2.01711e16', 'node_4', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed3187c50033', '开始', 'start', '2c908f355fecf8e8015fed30abe10032', null, null, '2.01711e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed3187c70034', '起草', 'task', '2c908f355fecf8e8015fed30abe10032', '', '', '2.01711e16', 'node_2', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed3187cc0036', '政工部门审核', 'task', '2c908f355fecf8e8015fed30abe10032', '', '', '2.01711e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f355fecf8e8015fed3187d00038', '办结', 'end', '2c908f355fecf8e8015fed30abe10032', null, null, '2.01711e16', 'node_4', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f7c593ed7cf01593edea97d0018', '开始', 'start', '2c908f7c593ed7cf01593ede39240017', null, null, '2.01612e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f7c593ed7cf01593edea9810019', '起草', 'task', '2c908f7c593ed7cf01593ede39240017', '', '', '2.01612e16', 'node_2', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f7c593ed7cf01593edea988001b', '办结', 'end', '2c908f7c593ed7cf01593ede39240017', null, null, '2.01612e16', 'node_6', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908f7c593ed7cf01593edea98b001c', '单位管理员审核', 'task', '2c908f7c593ed7cf01593ede39240017', '', '', '2.01612e16', 'node_8', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908f7c593ed7cf01593edea993001e', 'pki管理员审核', 'task', '2c908f7c593ed7cf01593ede39240017', '', '', '2.01612e16', 'node_11', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d1e2c80002', '开始', 'start', '2c908fac5962c454015962caa1240001', null, null, '2.01701e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d1e2ca0003', '办结', 'end', '2c908fac5962c454015962caa1240001', null, null, '2.01701e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d1e2cc0004', '起草', 'task', '2c908fac5962c454015962caa1240001', '', '', '2.01701e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d1e2ce0006', '用户身份判定', 'decision', '2c908fac5962c454015962caa1240001', null, '', '2.01701e16', 'node_4', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d1e2d20007', '主管警员审核', 'task', '2c908fac5962c454015962caa1240001', '', '', '2.01701e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d1e2d60009', '所在部门审核', 'task', '2c908fac5962c454015962caa1240001', '', '', '2.01701e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d1e2d9000b', '政工部门审核', 'task', '2c908fac5962c454015962caa1240001', '', '', '2.01701e16', 'node_7', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d1e2de000d', '单位领导审核', 'task', '2c908fac5962c454015962caa1240001', '', '', '2.01701e16', 'node_8', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d664000010', '开始', 'start', '2c908fac5962c454015962d3233e000f', null, null, '2.01701e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d664020011', '办结', 'end', '2c908fac5962c454015962d3233e000f', null, null, '2.01701e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d664030012', '起草', 'task', '2c908fac5962c454015962d3233e000f', '', '', '2.01701e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d664070014', '用户身份判定', 'decision', '2c908fac5962c454015962d3233e000f', null, '', '2.01701e16', 'node_4', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962d664080015', '主管警员审核', 'task', '2c908fac5962c454015962d3233e000f', '', '', '2.01701e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962da9d8a0018', '开始', 'start', '2c908fac5962c454015962d770300017', null, null, '2.01701e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962da9d8b0019', '办结', 'end', '2c908fac5962c454015962d770300017', null, null, '2.01701e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962da9d8d001a', '起草', 'task', '2c908fac5962c454015962d770300017', '', '', '2.01701e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962da9d91001c', '用户身份判定', 'decision', '2c908fac5962c454015962d770300017', null, '', '2.01701e16', 'node_4', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962da9d93001d', '主管警员审核', 'task', '2c908fac5962c454015962d770300017', '', '', '2.01701e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962da9d97001f', '所在部门审核', 'task', '2c908fac5962c454015962d770300017', '', '', '2.01701e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962da9d9b0021', '政工部门审核', 'task', '2c908fac5962c454015962d770300017', '', '', '2.01701e16', 'node_7', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962da9d9f0023', '单位领导审核', 'task', '2c908fac5962c454015962d770300017', '', '', '2.01701e16', 'node_8', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962e15e680026', '开始', 'start', '2c908fac5962c454015962dd67930025', null, null, '2.01701e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962e15e6a0027', '办结', 'end', '2c908fac5962c454015962dd67930025', null, null, '2.01701e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962e15e6b0028', '起草', 'task', '2c908fac5962c454015962dd67930025', '', '', '2.01701e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962e15e6e002a', '用户身份判定', 'decision', '2c908fac5962c454015962dd67930025', null, '', '2.01701e16', 'node_4', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962e15e70002b', '主管警员审核', 'task', '2c908fac5962c454015962dd67930025', '', '', '2.01701e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962e984740039', '开始', 'start', '2c908fac5962c454015962e7e1c20038', null, null, '2.01701e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962e98476003a', '办结', 'end', '2c908fac5962c454015962e7e1c20038', null, null, '2.01701e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962e98477003b', '起草', 'task', '2c908fac5962c454015962e7e1c20038', '', '', '2.01701e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962e9847a003d', '政工部门审核', 'task', '2c908fac5962c454015962e7e1c20038', '', '', '2.01701e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962e9847e003f', '单位领导审核', 'task', '2c908fac5962c454015962e7e1c20038', '', '', '2.01701e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962ec045d0042', '开始', 'start', '2c908fac5962c454015962ea532d0041', null, null, '2.01701e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962ec045e0043', '办结', 'end', '2c908fac5962c454015962ea532d0041', null, null, '2.01701e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962ec04600044', '起草', 'task', '2c908fac5962c454015962ea532d0041', '', '', '2.01701e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962ec04630046', '政工部门审核', 'task', '2c908fac5962c454015962ea532d0041', '', '', '2.01701e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962ec04660048', '单位领导审核', 'task', '2c908fac5962c454015962ea532d0041', '', '', '2.01701e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f04136004b', '开始', 'start', '2c908fac5962c454015962edcea5004a', null, null, '2.01701e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f04138004c', '办结', 'end', '2c908fac5962c454015962edcea5004a', null, null, '2.01701e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f0413a004d', '起草', 'task', '2c908fac5962c454015962edcea5004a', '', '', '2.01701e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f0413f004f', '政工部门审核', 'task', '2c908fac5962c454015962edcea5004a', '', '', '2.01701e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f041420051', '部门领导审核', 'task', '2c908fac5962c454015962edcea5004a', '', '', '2.01701e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f83efa0053', '开始', 'start', '2c908fac5b220084015b222fd5130001', null, null, '2.01701e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f83efc0054', '办结', 'end', '2c908fac5b220084015b222fd5130001', null, null, '2.01701e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f83efe0055', '起草', 'task', '2c908fac5b220084015b222fd5130001', '', '', '2.01701e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f83f020057', '用户身份判定', 'decision', '2c908fac5b220084015b222fd5130001', null, '', '2.01701e16', 'node_4', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f83f030058', '主管警员审核', 'task', '2c908fac5b220084015b222fd5130001', '', '', '2.01701e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f83f07005a', '所在部门审核', 'task', '2c908fac5b220084015b222fd5130001', '', '', '2.01701e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f83f14005c', '政工部门审核', 'task', '2c908fac5b220084015b222fd5130001', '', '', '2.01701e16', 'node_7', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5962c454015962f83f18005e', '单位领导审核', 'task', '2c908fac5b220084015b222fd5130001', '', '', '2.01701e16', 'node_8', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b0e3793015b0e4defa7000a', '开始', 'start', '2c908fac5b0e3793015b0e4c69aa0009', null, null, '2.01703e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b0e3793015b0e4defa9000b', '办结', 'end', '2c908fac5b0e3793015b0e4c69aa0009', null, null, '2.01703e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b0e3793015b0e4defa9000c', '起草', 'task', '2c908fac5b0e3793015b0e4c69aa0009', '', '', '2.01703e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e7b842f0002', '开始', 'start', '2c908fac5b1e3083015b1e64d8f60001', null, null, '2.01703e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e7b84300003', '办结', 'end', '2c908fac5b1e3083015b1e64d8f60001', null, null, '2.01703e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e7b84320004', '起草', 'task', '2c908fac5b1e3083015b1e64d8f60001', '', '', '2.01703e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e7b84360006', '所在部门审核', 'task', '2c908fac5b1e3083015b1e64d8f60001', '', '', '2.01703e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e7b843b0008', '政工部门审核', 'task', '2c908fac5b1e3083015b1e64d8f60001', '', '', '2.01703e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e7b843e000a', '单位领导审核', 'task', '2c908fac5b1e3083015b1e64d8f60001', '', '', '2.01703e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e80f218000d', '开始', 'start', '2c908fac5b1e3083015b1e7f0987000c', null, null, '2.01703e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e80f21a000e', '办结', 'end', '2c908fac5b1e3083015b1e7f0987000c', null, null, '2.01703e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e80f21c000f', '起草', 'task', '2c908fac5b1e3083015b1e7f0987000c', '', '', '2.01703e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e80f21f0011', '所在部门审核', 'task', '2c908fac5b1e3083015b1e7f0987000c', '', '', '2.01703e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e80f2220013', '政工部门审核', 'task', '2c908fac5b1e3083015b1e7f0987000c', '', '', '2.01703e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e80f2250015', '单位领导审核', 'task', '2c908fac5b1e3083015b1e7f0987000c', '', '', '2.01703e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e88674d0018', '开始', 'start', '2c908fac5b1e3083015b1e85bde20017', null, null, '2.01703e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e88674e0019', '办结', 'end', '2c908fac5b1e3083015b1e85bde20017', null, null, '2.01703e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e886750001a', '起草', 'task', '2c908fac5b1e3083015b1e85bde20017', '', '', '2.01703e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e886753001c', '主管警员审核', 'task', '2c908fac5b1e3083015b1e85bde20017', '', '', '2.01703e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e886757001e', '用户身份判定', 'decision', '2c908fac5b1e3083015b1e85bde20017', null, '', '2.01703e16', 'node_6', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e8b7e580020', '开始', 'start', '2c908fac5b1e3083015b1e898b7b001f', null, null, '2.01703e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e8b7e5a0021', '办结', 'end', '2c908fac5b1e3083015b1e898b7b001f', null, null, '2.01703e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e8b7e5c0022', '起草', 'task', '2c908fac5b1e3083015b1e898b7b001f', '', '', '2.01703e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e8b7e5f0024', '所在部门审核', 'task', '2c908fac5b1e3083015b1e898b7b001f', '', '', '2.01703e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e8b7e620026', '政工部门审核', 'task', '2c908fac5b1e3083015b1e898b7b001f', '', '', '2.01703e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e8b7e660028', '单位领导审核', 'task', '2c908fac5b1e3083015b1e898b7b001f', '', '', '2.01703e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e96a447002b', '开始', 'start', '2c908fac5b1e3083015b1e95056c002a', null, null, '2.01703e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e96a448002c', '办结', 'end', '2c908fac5b1e3083015b1e95056c002a', null, null, '2.01703e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e96a44a002d', '起草', 'task', '2c908fac5b1e3083015b1e95056c002a', '', '', '2.01703e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e96a44d002f', '所在部门审核', 'task', '2c908fac5b1e3083015b1e95056c002a', '', '', '2.01703e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e96a4510031', '政工部门审核', 'task', '2c908fac5b1e3083015b1e95056c002a', '', '', '2.01703e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e96a4540033', '单位领导审核', 'task', '2c908fac5b1e3083015b1e95056c002a', '', '', '2.01703e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e98fb7d0036', '开始', 'start', '2c908fac5b1e3083015b1e9862b30035', null, null, '2.01703e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e98fb7e0037', '办结', 'end', '2c908fac5b1e3083015b1e9862b30035', null, null, '2.01703e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e98fb800038', '起草', 'task', '2c908fac5b1e3083015b1e9862b30035', '', '', '2.01703e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e9cca60003b', '开始', 'start', '2c908fac5b1e3083015b1e9b0997003a', null, null, '2.01703e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e9cca62003c', '办结', 'end', '2c908fac5b1e3083015b1e9b0997003a', null, null, '2.01703e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e9cca64003d', '起草', 'task', '2c908fac5b1e3083015b1e9b0997003a', '', '', '2.01703e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e9cca67003f', '所在部门审核', 'task', '2c908fac5b1e3083015b1e9b0997003a', '', '', '2.01703e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e9cca6a0041', '政工部门审核', 'task', '2c908fac5b1e3083015b1e9b0997003a', '', '', '2.01703e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e9cca6d0043', '单位领导审核', 'task', '2c908fac5b1e3083015b1e9b0997003a', '', '', '2.01703e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e9e4a4c0046', '开始', 'start', '2c908fac5b1e3083015b1e9da2a50045', null, null, '2.01703e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e9e4a4d0047', '办结', 'end', '2c908fac5b1e3083015b1e9da2a50045', null, null, '2.01703e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1e9e4a4f0048', '起草', 'task', '2c908fac5b1e3083015b1e9da2a50045', '', '', '2.01703e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1ea25bc3004b', '开始', 'start', '2c908fac5b1e3083015b1e9fa5e7004a', null, null, '2.01703e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1ea25bc5004c', '办结', 'end', '2c908fac5b1e3083015b1e9fa5e7004a', null, null, '2.01703e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1ea25bc7004d', '起草', 'task', '2c908fac5b1e3083015b1e9fa5e7004a', '', '', '2.01703e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1ea25bca004f', '用户身份判定', 'decision', '2c908fac5b1e3083015b1e9fa5e7004a', null, '', '2.01703e16', 'node_4', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1ea25bcb0050', '主管警员审核', 'task', '2c908fac5b1e3083015b1e9fa5e7004a', '', '', '2.01703e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1ea25bce0052', '所在部门审核', 'task', '2c908fac5b1e3083015b1e9fa5e7004a', '', '', '2.01703e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1ea25bd20054', '政工部门审核', 'task', '2c908fac5b1e3083015b1e9fa5e7004a', '', '', '2.01703e16', 'node_7', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5b1e3083015b1ea25bd50056', '单位领导审核', 'task', '2c908fac5b1e3083015b1e9fa5e7004a', '', '', '2.01703e16', 'node_8', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52020b40002', '开始', 'start', '2c908fac5bf51917015bf51e1ee20001', null, null, '2.01705e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52020b60003', '办结', 'end', '2c908fac5bf51917015bf51e1ee20001', null, null, '2.01705e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52020b70004', '起草', 'task', '2c908fac5bf51917015bf51e1ee20001', '', '', '2.01705e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52020bc0006', '所在部门审核', 'task', '2c908fac5bf51917015bf51e1ee20001', '', '', '2.01705e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52020c20008', '政工部门审核', 'task', '2c908fac5bf51917015bf51e1ee20001', '', '', '2.01705e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52020c6000a', '单位领导审核', 'task', '2c908fac5bf51917015bf51e1ee20001', '', '', '2.01705e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52513d8000d', '开始', 'start', '2c908fac5bf51917015bf523098b000c', null, null, '2.01705e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52513d9000e', '办结', 'end', '2c908fac5bf51917015bf523098b000c', null, null, '2.01705e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52513dc000f', '起草', 'task', '2c908fac5bf51917015bf523098b000c', '', '', '2.01705e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52513de0011', '所在部门审核', 'task', '2c908fac5bf51917015bf523098b000c', '', '', '2.01705e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52513e10013', '政工部门审核', 'task', '2c908fac5bf51917015bf523098b000c', '', '', '2.01705e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bf51917015bf52513e40015', '单位领导审核', 'task', '2c908fac5bf51917015bf523098b000c', '', '', '2.01705e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa8ef28d0002', '开始', 'start', '2c908fac5bfa8793015bfa8c0a7b0001', null, null, '2.01705e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa8ef28e0003', '办结', 'end', '2c908fac5bfa8793015bfa8c0a7b0001', null, null, '2.01705e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa8ef2900004', '起草', 'task', '2c908fac5bfa8793015bfa8c0a7b0001', '', '', '2.01705e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa8ef2930006', '所在部门审核', 'task', '2c908fac5bfa8793015bfa8c0a7b0001', '', '', '2.01705e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa8ef2980008', '政工部门审核', 'task', '2c908fac5bfa8793015bfa8c0a7b0001', '', '', '2.01705e16', 'node_5', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa8ef29b000a', '单位领导审核', 'task', '2c908fac5bfa8793015bfa8c0a7b0001', '', '', '2.01705e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa9c6449000d', '开始', 'start', '2c908fac5bfa8793015bfa960521000c', null, null, '2.01705e16', 'node_1', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa9c644a000e', '办结', 'end', '2c908fac5bfa8793015bfa960521000c', null, null, '2.01705e16', 'node_2', null, null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa9c644c000f', '起草', 'task', '2c908fac5bfa8793015bfa960521000c', '', '', '2.01705e16', 'node_3', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa9c644e0011', '主管警员审核', 'task', '2c908fac5bfa8793015bfa960521000c', '', '', '2.01705e16', 'node_4', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa9c64500013', '用户身份判定', 'decision', '2c908fac5bfa8793015bfa960521000c', null, '', '2.01705e16', 'node_5', 'com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService', null);
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa9c64520014', '所在部门审核', 'task', '2c908fac5bfa8793015bfa960521000c', '', '', '2.01705e16', 'node_6', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa9c64530016', '政工部门审核', 'task', '2c908fac5bfa8793015bfa960521000c', '', '', '2.01705e16', 'node_7', null, '0');
INSERT INTO `jwf_node` VALUES ('0', '2c908fac5bfa8793015bfa9c64550018', '单位领导审核', 'task', '2c908fac5bfa8793015bfa960521000c', '', '', '2.01705e16', 'node_8', null, '0');

-- ----------------------------
-- Table structure for jwf_node_people
-- ----------------------------
DROP TABLE IF EXISTS `jwf_node_people`;
CREATE TABLE `jwf_node_people` (
  `CLOUDNODE` int(11) DEFAULT '0',
  `ID` varchar(63) NOT NULL,
  `NODE_ID` varchar(63) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ISSELECT` int(10) DEFAULT NULL,
  `ITEM_ID` varchar(255) DEFAULT NULL,
  `TIME_STAMP` double DEFAULT NULL,
  `SELECTCL` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwf_node_people
-- ----------------------------
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed0baf5b0008', '2c908f355fecf8e8015fed0baf590007', 'specialrole', '1', '2c908f3c594db0d301594dbaf7a30006', '2.0171124160126876e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed0baf60000a', '2c908f355fecf8e8015fed0baf5e0009', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.017112416012688e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed25ef380014', '2c908f355fecf8e8015fed25ef360013', 'specialrole', '1', '2c908f355fecf8e8015fecfb26650001', '2.017112416300716e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed2770610019', '2c908f355fecf8e8015fed2770600018', 'specialrole', '1', '2c908f355fecf8e8015fecfb26650001', '2.017112416314576e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed29ca06001e', '2c908f355fecf8e8015fed29ca04001d', 'specialrole', '1', '2c908f355fecf8e8015fecfb26650001', '2.0171124163419784e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed29ca0b0020', '2c908f355fecf8e8015fed29ca08001f', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.0171124163419788e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed29ca0f0022', '2c908f355fecf8e8015fed29ca0d0021', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.017112416341979e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed2db8af0027', '2c908f355fecf8e8015fed2db8ad0026', 'specialrole', '1', '2c908f355fecf8e8015fecfb26650001', '2.017112416383749e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed2db8b40029', '2c908f355fecf8e8015fed2db8b10028', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.0171124163837492e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed30123b002e', '2c908f355fecf8e8015fed301239002d', 'specialrole', '1', '2c908f355fecf8e8015fecfb26650001', '2.0171124164111484e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed30123f0030', '2c908f355fecf8e8015fed30123d002f', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.017112416411149e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed3187c90035', '2c908f355fecf8e8015fed3187c70034', 'specialrole', '1', '2c908f355fecf8e8015fecfb26650001', '2.017112416424711e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f355fecf8e8015fed3187ce0037', '2c908f355fecf8e8015fed3187cc0036', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.017112416424712e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f7c593ed7cf01593edea984001a', '2c908f7c593ed7cf01593edea9810019', 'specialrole', '1', '2c908f3c57adef120157adf38acc0002', '2.01612271401369e16', null);
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f7c593ed7cf01593edea98f001d', '2c908f7c593ed7cf01593edea98b001c', 'specialrole', '1', '2c908f3c57adef120157adf38acc0002', '2.01612271401369e16', null);
INSERT INTO `jwf_node_people` VALUES ('0', '2c908f7c593ed7cf01593edea998001f', '2c908f7c593ed7cf01593edea993001e', 'specialrole', '1', '2c908f3c57adef120157adf38acc0002', '2.01612271401369e16', null);
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962d1e2cd0005', '2c908fac5962c454015962d1e2cc0004', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.01701031333594e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962d1e2d40008', '2c908fac5962c454015962d1e2d20007', 'specialrole', '0', '2c908f355985f95c0159860172070002', '2.01701031333594e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962d1e2d7000a', '2c908fac5962c454015962d1e2d60009', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.01701031333594e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962d1e2dd000c', '2c908fac5962c454015962d1e2d9000b', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01701031333594e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962d1e2e0000e', '2c908fac5962c454015962d1e2de000d', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01701031333594e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962d664050013', '2c908fac5962c454015962d664030012', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.01701031338546e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962d6640a0016', '2c908fac5962c454015962d664080015', 'specialrole', '0', '2c908f355985f95c0159860172070002', '2.01701031338546e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962da9d90001b', '2c908fac5962c454015962da9d8d001a', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.01701031343315e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962da9d95001e', '2c908fac5962c454015962da9d93001d', 'specialrole', '0', '2c908f355985f95c0159860172070002', '2.01701031343315e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962da9d990020', '2c908fac5962c454015962da9d97001f', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.01701031343315e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962da9d9d0022', '2c908fac5962c454015962da9d9b0021', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01701031343315e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962da9da00024', '2c908fac5962c454015962da9d9f0023', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01701031343315e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962e15e6d0029', '2c908fac5962c454015962e15e6b0028', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.01701031350541e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962e15e72002c', '2c908fac5962c454015962e15e70002b', 'specialrole', '0', '2c908f355985f95c0159860172070002', '2.01701031350541e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962e98479003c', '2c908fac5962c454015962e98477003b', 'specialrole', '0', '2c908f3c594db0d301594dba222f0001', '2.01701031359481e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962e9847c003e', '2c908fac5962c454015962e9847a003d', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01701031359481e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962e984800040', '2c908fac5962c454015962e9847e003f', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01701031359481e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962ec04610045', '2c908fac5962c454015962ec04600044', 'specialrole', '0', '2c908f3c594db0d301594dba222f0001', '2.01701031402319e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962ec04650047', '2c908fac5962c454015962ec04630046', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01701031402319e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962ec04680049', '2c908fac5962c454015962ec04660048', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01701031402319e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962f0413d004e', '2c908fac5962c454015962f0413a004d', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.01701031407096e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962f041400050', '2c908fac5962c454015962f0413f004f', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01701031407096e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962f041440052', '2c908fac5962c454015962f041420051', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01701031407096e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962f83f000056', '2c908fac5962c454015962f83efe0055', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.01701031415533e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962f83f050059', '2c908fac5962c454015962f83f030058', 'specialrole', '0', '2c908f355985f95c0159860172070002', '2.01701031415533e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962f83f08005b', '2c908fac5962c454015962f83f07005a', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.01701031415534e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962f83f15005d', '2c908fac5962c454015962f83f14005c', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01701031415534e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5962c454015962f83f1a005f', '2c908fac5962c454015962f83f18005e', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01701031415534e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b0e3793015b0e4defac000d', '2c908fac5b0e3793015b0e4defa9000c', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.01703271347204e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e7b84340005', '2c908fac5b1e3083015b1e7b84320004', 'specialrole', '0', '2c908f3c594db0d301594dba222f0001', '2.0170330171103e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e7b84390007', '2c908fac5b1e3083015b1e7b84360006', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.0170330171103e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e7b843d0009', '2c908fac5b1e3083015b1e7b843b0008', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.0170330171103e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e7b8440000b', '2c908fac5b1e3083015b1e7b843e000a', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.0170330171103e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e80f21d0010', '2c908fac5b1e3083015b1e80f21c000f', 'specialrole', '0', '2c908f3c594db0d301594dba222f0001', '2.01703301716588e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e80f2200012', '2c908fac5b1e3083015b1e80f21f0011', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.01703301716588e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e80f2230014', '2c908fac5b1e3083015b1e80f2220013', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01703301716588e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e80f2260016', '2c908fac5b1e3083015b1e80f2250015', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01703301716588e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e886752001b', '2c908fac5b1e3083015b1e886750001a', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.01703301725075e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e886755001d', '2c908fac5b1e3083015b1e886753001c', 'specialrole', '0', '2c908f355985f95c0159860172070002', '2.01703301725075e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e8b7e5d0023', '2c908fac5b1e3083015b1e8b7e5c0022', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.017033017283e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e8b7e610025', '2c908fac5b1e3083015b1e8b7e5f0024', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.017033017283e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e8b7e640027', '2c908fac5b1e3083015b1e8b7e620026', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01703301728301e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e8b7e670029', '2c908fac5b1e3083015b1e8b7e660028', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01703301728301e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e96a44b002e', '2c908fac5b1e3083015b1e96a44a002d', 'specialrole', '1', '2c908f3c594db0d301594dbaf7a30006', '2.01703301740407e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e96a44f0030', '2c908fac5b1e3083015b1e96a44d002f', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.01703301740407e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e96a4520032', '2c908fac5b1e3083015b1e96a4510031', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01703301740407e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e96a4550034', '2c908fac5b1e3083015b1e96a4540033', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01703301740407e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e98fb820039', '2c908fac5b1e3083015b1e98fb800038', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.0170330174314e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e9cca65003e', '2c908fac5b1e3083015b1e9cca64003d', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.01703301747236e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e9cca680040', '2c908fac5b1e3083015b1e9cca67003f', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.01703301747236e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e9cca6b0042', '2c908fac5b1e3083015b1e9cca6a0041', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01703301747236e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e9cca6e0044', '2c908fac5b1e3083015b1e9cca6d0043', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01703301747236e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1e9e4a510049', '2c908fac5b1e3083015b1e9e4a4f0048', 'specialrole', '0', '2c908f3c594db0d301594dbaf7a30006', '2.01703301749019e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1ea25bc8004e', '2c908fac5b1e3083015b1ea25bc7004d', 'specialrole', '0', '2c908f3c594db0d301594dba222f0001', '2.01703301753285e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1ea25bcd0051', '2c908fac5b1e3083015b1ea25bcb0050', 'specialrole', '0', '2c908f355985f95c0159860172070002', '2.01703301753285e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1ea25bd00053', '2c908fac5b1e3083015b1ea25bce0052', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.01703301753285e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1ea25bd30055', '2c908fac5b1e3083015b1ea25bd20054', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01703301753285e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5b1e3083015b1ea25bd70057', '2c908fac5b1e3083015b1ea25bd50056', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01703301753285e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bf51917015bf52020b90005', '2c908fac5bf51917015bf52020b70004', 'specialrole', '0', '2c908f3c594db0d301594dba222f0001', '2.01705110929352e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bf51917015bf52020c00007', '2c908fac5bf51917015bf52020bc0006', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.01705110929352e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bf51917015bf52020c40009', '2c908fac5bf51917015bf52020c20008', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01705110929352e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bf51917015bf52020c8000b', '2c908fac5bf51917015bf52020c6000a', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01705110929352e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bf51917015bf52513dd0010', '2c908fac5bf51917015bf52513dc000f', 'specialrole', '0', '2c908f3c594db0d301594dba222f0001', '2.01705110934595e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bf51917015bf52513e00012', '2c908fac5bf51917015bf52513de0011', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.01705110934596e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bf51917015bf52513e20014', '2c908fac5bf51917015bf52513e10013', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01705110934596e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bf51917015bf52513e50016', '2c908fac5bf51917015bf52513e40015', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01705110934596e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bfa8793015bfa8ef2910005', '2c908fac5bfa8793015bfa8ef2900004', 'specialrole', '0', '2c908f3c594db0d301594dba222f0001', '2.01705121048439e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bfa8793015bfa8ef2960007', '2c908fac5bfa8793015bfa8ef2930006', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.01705121048439e16', '2');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bfa8793015bfa8ef2990009', '2c908fac5bfa8793015bfa8ef2980008', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.01705121048439e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bfa8793015bfa8ef29d000b', '2c908fac5bfa8793015bfa8ef29b000a', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.01705121048439e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bfa8793015bfa9c644c0010', '2c908fac5bfa8793015bfa9c644c000f', 'specialrole', '0', '2c908f3c594db0d301594dba222f0001', '2.0170512110325e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bfa8793015bfa9c644f0012', '2c908fac5bfa8793015bfa9c644e0011', 'specialrole', '0', '2c908f355985f95c0159860172070002', '2.0170512110325e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bfa8793015bfa9c64520015', '2c908fac5bfa8793015bfa9c64520014', 'role', '1', '2c908f3c591b044601591b116d59004d', '2.0170512110325e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bfa8793015bfa9c64540017', '2c908fac5bfa8793015bfa9c64530016', 'role', '1', '2c908f3c591b044601591b11b73d004f', '2.0170512110325e16', '0');
INSERT INTO `jwf_node_people` VALUES ('0', '2c908fac5bfa8793015bfa9c64560019', '2c908fac5bfa8793015bfa9c64550018', 'role', '1', '2c908f3c591b044601591b11e3a50051', '2.0170512110325e16', '0');

-- ----------------------------
-- Table structure for jwf_processdefinition
-- ----------------------------
DROP TABLE IF EXISTS `jwf_processdefinition`;
CREATE TABLE `jwf_processdefinition` (
  `ID` varchar(63) NOT NULL,
  `CODE` varchar(63) DEFAULT NULL,
  `KEY_` varchar(63) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `XML` longtext,
  `XML_EDITION` int(10) DEFAULT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `JBPMID` varchar(63) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  `fenlei_name` varchar(150) DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT '0',
  `fenlei_id` varchar(63) DEFAULT NULL,
  `STATE` int(10) DEFAULT NULL,
  `zifenlei_id` varchar(63) DEFAULT NULL,
  `zifenlei_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_processdef` (`fenlei_id`,`STATE`,`CLOUDNODE`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwf_processdefinition
-- ----------------------------
INSERT INTO `jwf_processdefinition` VALUES ('2c908f355fecbea0015fecce3de20001', 'wirelessZhengshuguanli', '20171124145420127', '移动证书管理', '{\"id\":\"2c908f355fecbea0015fecce3de20001\",\"name\":null,\"count\":7,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":136,\"top\":240,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":2,\"left\":261,\"top\":230,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_2\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_3\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":430,\"top\":223,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":4,\"left\":641,\"top\":237,\"width\":20,\"height\":20,\"property\":null}],\"lines\":[{\"id\":\"line_5\",\"name\":\"line_5\",\"type\":\"line\",\"shape\":\"line\",\"number\":5,\"from\":\"node_1\",\"to\":\"node_2\",\"fromx\":156,\"fromy\":250,\"tox\":281,\"toy\":247.5,\"polydot\":[],\"property\":null},{\"id\":\"line_6\",\"name\":\"line_6\",\"type\":\"line\",\"shape\":\"line\",\"number\":6,\"from\":\"node_2\",\"to\":\"node_3\",\"fromx\":316,\"fromy\":247.5,\"tox\":450,\"toy\":240.5,\"polydot\":[],\"property\":null},{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":485,\"fromy\":240.5,\"tox\":641,\"toy\":247,\"polydot\":[],\"property\":null}]}', '1', '移动证书管理员专用流程。', null, '2.01711e16', '移动证书流程', '0', 'wirelessCert', '1', 'wirelessZhengshuguanli', '移动证书管理');
INSERT INTO `jwf_processdefinition` VALUES ('2c908f355fecf8e8015fed2522810011', 'wirelessZhengshujiedong', '20171124162914753', '警员移动证书解冻', '{\"id\":\"2c908f355fecf8e8015fed2522810011\",\"name\":null,\"count\":5,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":163,\"top\":230,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":2,\"left\":340,\"top\":219,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_2\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级移动证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355fecf8e8015fecfb26650001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_3\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":3,\"left\":584,\"top\":225,\"width\":20,\"height\":20,\"property\":null}],\"lines\":[{\"id\":\"line_4\",\"name\":\"line_4\",\"type\":\"line\",\"shape\":\"line\",\"number\":4,\"from\":\"node_1\",\"to\":\"node_2\",\"fromx\":183,\"fromy\":240,\"tox\":360,\"toy\":236.5,\"polydot\":[],\"property\":null},{\"id\":\"line_5\",\"name\":\"line_5\",\"type\":\"line\",\"shape\":\"line\",\"number\":5,\"from\":\"node_2\",\"to\":\"node_3\",\"fromx\":395,\"fromy\":236.5,\"tox\":584,\"toy\":235,\"polydot\":[],\"property\":null}]}', '1', '警员专用流程。', null, '2.01711e16', '移动证书流程', '0', 'wirelessCert', '1', 'wirelessZhengshujiedong', '警员移动证书解冻');
INSERT INTO `jwf_processdefinition` VALUES ('2c908f355fecf8e8015fed26b00a0016', 'wirelessZhengshuzhuxiao', '20171124163056522', '警员移动证书注销', '{\"id\":\"2c908f355fecf8e8015fed26b00a0016\",\"name\":null,\"count\":5,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":155,\"top\":257,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":2,\"left\":322,\"top\":248,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_2\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级移动证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355fecf8e8015fecfb26650001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_3\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":3,\"left\":558,\"top\":260,\"width\":20,\"height\":20,\"property\":null}],\"lines\":[{\"id\":\"line_4\",\"name\":\"line_4\",\"type\":\"line\",\"shape\":\"line\",\"number\":4,\"from\":\"node_1\",\"to\":\"node_2\",\"fromx\":175,\"fromy\":267,\"tox\":342,\"toy\":265.5,\"polydot\":[],\"property\":null},{\"id\":\"line_5\",\"name\":\"line_5\",\"type\":\"line\",\"shape\":\"line\",\"number\":5,\"from\":\"node_2\",\"to\":\"node_3\",\"fromx\":377,\"fromy\":265.5,\"tox\":558,\"toy\":270,\"polydot\":[],\"property\":null}]}', '1', '警员专用流程。', null, '2.01711e16', '移动证书流程', '0', 'wirelessCert', '1', 'wirelessZhengshuzhuxiao', '警员移动证书注销');
INSERT INTO `jwf_processdefinition` VALUES ('2c908f355fecf8e8015fed28197d001b', 'wirelessZhengshubufa', '20171124163229053', '警员移动证书补发', '{\"id\":\"2c908f355fecf8e8015fed28197d001b\",\"name\":null,\"count\":9,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":110,\"top\":280,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":2,\"left\":242,\"top\":271,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_2\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级移动证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355fecf8e8015fecfb26650001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_3\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":423,\"top\":271,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":607,\"top\":271,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":5,\"left\":786,\"top\":279,\"width\":20,\"height\":20,\"property\":null}],\"lines\":[{\"id\":\"line_6\",\"name\":\"line_6\",\"type\":\"line\",\"shape\":\"line\",\"number\":6,\"from\":\"node_1\",\"to\":\"node_2\",\"fromx\":130,\"fromy\":290,\"tox\":262,\"toy\":288.5,\"polydot\":[],\"property\":null},{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_2\",\"to\":\"node_3\",\"fromx\":297,\"fromy\":288.5,\"tox\":443,\"toy\":288.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":478,\"fromy\":288.5,\"tox\":627,\"toy\":288.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":662,\"fromy\":288.5,\"tox\":786,\"toy\":289,\"polydot\":[],\"property\":null}]}', '1', '警员专用流程。', null, '2.01711e16', '移动证书流程', '0', 'wirelessCert', '1', 'wirelessZhengshubufa', '警员移动证书补发');
INSERT INTO `jwf_processdefinition` VALUES ('2c908f355fecf8e8015fed2bf4580024', 'wirelessZhengshushenqi', '20171124163641688', '警员移动证书申请', '{\"id\":\"2c908f355fecf8e8015fed2bf4580024\",\"name\":null,\"count\":7,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":118,\"top\":247,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":2,\"left\":258,\"top\":234,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_2\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级移动证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355fecf8e8015fecfb26650001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_3\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":427,\"top\":236,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":4,\"left\":616,\"top\":240,\"width\":20,\"height\":20,\"property\":null}],\"lines\":[{\"id\":\"line_5\",\"name\":\"line_5\",\"type\":\"line\",\"shape\":\"line\",\"number\":5,\"from\":\"node_1\",\"to\":\"node_2\",\"fromx\":138,\"fromy\":257,\"tox\":278,\"toy\":251.5,\"polydot\":[],\"property\":null},{\"id\":\"line_6\",\"name\":\"line_6\",\"type\":\"line\",\"shape\":\"line\",\"number\":6,\"from\":\"node_2\",\"to\":\"node_3\",\"fromx\":313,\"fromy\":251.5,\"tox\":447,\"toy\":253.5,\"polydot\":[],\"property\":null},{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":482,\"fromy\":253.5,\"tox\":616,\"toy\":250,\"polydot\":[],\"property\":null}]}', '1', '警员专用流程。', null, '2.01711e16', '移动证书流程', '0', 'wirelessCert', '1', 'wirelessZhengshushenqing', '警员移动证书申请');
INSERT INTO `jwf_processdefinition` VALUES ('2c908f355fecf8e8015fed2f087f002b', 'wirelessZhengshuxinxijiaozhun', '20171124164003455', '警员移动证书信息校准', '{\"id\":\"2c908f355fecf8e8015fed2f087f002b\",\"name\":null,\"count\":7,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":144,\"top\":280,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":2,\"left\":282,\"top\":270,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_2\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级移动证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355fecf8e8015fecfb26650001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_3\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":462,\"top\":264,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":4,\"left\":635,\"top\":268,\"width\":20,\"height\":20,\"property\":null}],\"lines\":[{\"id\":\"line_5\",\"name\":\"line_5\",\"type\":\"line\",\"shape\":\"line\",\"number\":5,\"from\":\"node_1\",\"to\":\"node_2\",\"fromx\":164,\"fromy\":290,\"tox\":302,\"toy\":287.5,\"polydot\":[],\"property\":null},{\"id\":\"line_6\",\"name\":\"line_6\",\"type\":\"line\",\"shape\":\"line\",\"number\":6,\"from\":\"node_2\",\"to\":\"node_3\",\"fromx\":337,\"fromy\":287.5,\"tox\":482,\"toy\":281.5,\"polydot\":[],\"property\":null},{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":517,\"fromy\":281.5,\"tox\":635,\"toy\":278,\"polydot\":[],\"property\":null}]}', '1', '警员专用流程。', null, '2.01711e16', '移动证书流程', '0', 'wirelessCert', '1', 'wirelessZhengshuxinxijiaozhun', '警员移动证书信息校准');
INSERT INTO `jwf_processdefinition` VALUES ('2c908f355fecf8e8015fed30abe10032', 'wirelessZhengshuyanqi', '20171124164150817', '警员移动证书延期 ', '{\"id\":\"2c908f355fecf8e8015fed30abe10032\",\"name\":null,\"count\":7,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":145,\"top\":283,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":2,\"left\":281,\"top\":274,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_2\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级移动证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355fecf8e8015fecfb26650001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_3\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":456,\"top\":273,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":4,\"left\":663,\"top\":281,\"width\":20,\"height\":20,\"property\":null}],\"lines\":[{\"id\":\"line_5\",\"name\":\"line_5\",\"type\":\"line\",\"shape\":\"line\",\"number\":5,\"from\":\"node_1\",\"to\":\"node_2\",\"fromx\":165,\"fromy\":293,\"tox\":301,\"toy\":291.5,\"polydot\":[],\"property\":null},{\"id\":\"line_6\",\"name\":\"line_6\",\"type\":\"line\",\"shape\":\"line\",\"number\":6,\"from\":\"node_2\",\"to\":\"node_3\",\"fromx\":336,\"fromy\":291.5,\"tox\":476,\"toy\":290.5,\"polydot\":[],\"property\":null},{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":511,\"fromy\":290.5,\"tox\":663,\"toy\":291,\"polydot\":[],\"property\":null}]}', '1', '警员专用流程。', null, '2.01711e16', '移动证书流程', '0', 'wirelessCert', '1', 'wirelessZhengshuyanqi', '警员移动证书延期');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5962c454015962caa1240001', 'fjzhengshubufa', '20170103132603811', '辅警证书补发', '{\"id\":\"2c908fac5962c454015962caa1240001\",\"name\":null,\"count\":16,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":118,\"top\":101,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":859,\"top\":300,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":213,\"top\":92,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"用户身份判定\",\"type\":\"node\",\"nodetype\":\"decision\",\"shape\":\"img\",\"number\":4,\"left\":345,\"top\":148,\"width\":75,\"height\":70,\"property\":[{\"id\":\"d_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"d_p_name\",\"text\":\"input\",\"value\":\"用户身份判定\"},{\"id\":\"d_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"d_p_panding\",\"text\":\"select\",\"value\":\"com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService\"}]},{\"id\":\"node_5\",\"name\":\"主管警员审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":256,\"top\":249,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"主管警员审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"主管警员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355985f95c0159860172070002\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":418,\"top\":249,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_7\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":7,\"left\":560,\"top\":254,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_7\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_8\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":8,\"left\":713,\"top\":258,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_8\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":138,\"fromy\":111,\"tox\":233,\"toy\":109.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":268,\"fromy\":109.5,\"tox\":365,\"toy\":165.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":382.5,\"fromy\":218,\"tox\":311,\"toy\":266.5,\"polydot\":[],\"property\":null},{\"id\":\"line_12\",\"name\":\"line_12\",\"type\":\"line\",\"shape\":\"line\",\"number\":12,\"from\":\"node_4\",\"to\":\"node_6\",\"fromx\":382.5,\"fromy\":218,\"tox\":438,\"toy\":266.5,\"polydot\":[],\"property\":null},{\"id\":\"line_13\",\"name\":\"line_13\",\"type\":\"line\",\"shape\":\"line\",\"number\":13,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":311,\"fromy\":266.5,\"tox\":438,\"toy\":266.5,\"polydot\":[],\"property\":null},{\"id\":\"line_14\",\"name\":\"line_14\",\"type\":\"line\",\"shape\":\"line\",\"number\":14,\"from\":\"node_6\",\"to\":\"node_7\",\"fromx\":473,\"fromy\":266.5,\"tox\":580,\"toy\":271.5,\"polydot\":[],\"property\":null},{\"id\":\"line_15\",\"name\":\"line_15\",\"type\":\"line\",\"shape\":\"line\",\"number\":15,\"from\":\"node_7\",\"to\":\"node_8\",\"fromx\":615,\"fromy\":271.5,\"tox\":733,\"toy\":275.5,\"polydot\":[],\"property\":null},{\"id\":\"line_16\",\"name\":\"line_16\",\"type\":\"line\",\"shape\":\"line\",\"number\":16,\"from\":\"node_8\",\"to\":\"node_2\",\"fromx\":768,\"fromy\":275.5,\"tox\":859,\"toy\":310,\"polydot\":[],\"property\":null}]}', '1', '此流程用于辅警的证书补发操作', null, '2.01701e16', '证书流程', '0', 'cert', '1', 'fjzhengshubufa', '辅警证书补发');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5962c454015962d3233e000f', 'fjzhengshujiedong', '20170103133521406', '辅警证书解冻', '{\"id\":\"2c908fac5962c454015962d3233e000f\",\"name\":null,\"count\":10,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":97,\"top\":134,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":547,\"top\":306,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":206,\"top\":123,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"用户身份判定\",\"type\":\"node\",\"nodetype\":\"decision\",\"shape\":\"img\",\"number\":4,\"left\":373,\"top\":148,\"width\":75,\"height\":70,\"property\":[{\"id\":\"d_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"d_p_name\",\"text\":\"input\",\"value\":\"用户身份判定\"},{\"id\":\"d_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"d_p_panding\",\"text\":\"select\",\"value\":\"com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService\"}]},{\"id\":\"node_5\",\"name\":\"主管警员审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":305,\"top\":272,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"主管警员审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"主管警员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355985f95c0159860172070002\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_6\",\"name\":\"line_6\",\"type\":\"line\",\"shape\":\"line\",\"number\":6,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":117,\"fromy\":144,\"tox\":226,\"toy\":140.5,\"polydot\":[],\"property\":null},{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":261,\"fromy\":140.5,\"tox\":393,\"toy\":165.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":410.5,\"fromy\":218,\"tox\":342.5,\"toy\":272,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_2\",\"fromx\":410.5,\"fromy\":218,\"tox\":547,\"toy\":316,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_2\",\"fromx\":360,\"fromy\":289.5,\"tox\":547,\"toy\":316,\"polydot\":[],\"property\":null}]}', '1', '此流程为辅警专用证书解冻流程。', null, '2.01701e16', '证书流程', '0', 'cert', '1', 'fjzhengshujiedong', '辅警证书解冻');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5962c454015962d770300017', 'fjzhengshuxinxijiaozhun', '20170103134003248', '辅警证书信息校准', '{\"id\":\"2c908fac5962c454015962d770300017\",\"name\":null,\"count\":16,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":73,\"top\":148,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":881,\"top\":324,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":173,\"top\":143,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"用户身份判定\",\"type\":\"node\",\"nodetype\":\"decision\",\"shape\":\"img\",\"number\":4,\"left\":320,\"top\":187,\"width\":75,\"height\":70,\"property\":[{\"id\":\"d_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"d_p_name\",\"text\":\"input\",\"value\":\"用户身份判定\"},{\"id\":\"d_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"d_p_panding\",\"text\":\"select\",\"value\":\"com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService\"}]},{\"id\":\"node_5\",\"name\":\"主管警员审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":222,\"top\":294,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"主管警员审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"主管警员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355985f95c0159860172070002\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":404,\"top\":296,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_7\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":7,\"left\":549,\"top\":299,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_7\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_8\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":8,\"left\":705,\"top\":299,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_8\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":93,\"fromy\":158,\"tox\":193,\"toy\":160.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":228,\"fromy\":160.5,\"tox\":340,\"toy\":204.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":357.5,\"fromy\":257,\"tox\":277,\"toy\":311.5,\"polydot\":[],\"property\":null},{\"id\":\"line_12\",\"name\":\"line_12\",\"type\":\"line\",\"shape\":\"line\",\"number\":12,\"from\":\"node_4\",\"to\":\"node_6\",\"fromx\":357.5,\"fromy\":257,\"tox\":424,\"toy\":313.5,\"polydot\":[],\"property\":null},{\"id\":\"line_13\",\"name\":\"line_13\",\"type\":\"line\",\"shape\":\"line\",\"number\":13,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":277,\"fromy\":311.5,\"tox\":424,\"toy\":313.5,\"polydot\":[],\"property\":null},{\"id\":\"line_14\",\"name\":\"line_14\",\"type\":\"line\",\"shape\":\"line\",\"number\":14,\"from\":\"node_6\",\"to\":\"node_7\",\"fromx\":459,\"fromy\":313.5,\"tox\":569,\"toy\":316.5,\"polydot\":[],\"property\":null},{\"id\":\"line_15\",\"name\":\"line_15\",\"type\":\"line\",\"shape\":\"line\",\"number\":15,\"from\":\"node_7\",\"to\":\"node_8\",\"fromx\":604,\"fromy\":316.5,\"tox\":725,\"toy\":316.5,\"polydot\":[],\"property\":null},{\"id\":\"line_16\",\"name\":\"line_16\",\"type\":\"line\",\"shape\":\"line\",\"number\":16,\"from\":\"node_8\",\"to\":\"node_2\",\"fromx\":760,\"fromy\":316.5,\"tox\":881,\"toy\":334,\"polydot\":[],\"property\":null}]}', '1', '此流程为辅警专用流程。', null, '2.01701e16', '证书流程', '0', 'cert', '1', 'fjzhengshuxinxijiaozhun', '辅警证书信息校准');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5962c454015962dd67930025', 'fujingzhengshuyanqi', '20170103134634259', '辅警证书延期', '{\"id\":\"2c908fac5962c454015962dd67930025\",\"name\":null,\"count\":10,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":100,\"top\":80,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":505,\"top\":270,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":187,\"top\":84,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"用户身份判定\",\"type\":\"node\",\"nodetype\":\"decision\",\"shape\":\"img\",\"number\":4,\"left\":351,\"top\":126,\"width\":75,\"height\":70,\"property\":[{\"id\":\"d_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"d_p_name\",\"text\":\"input\",\"value\":\"用户身份判定\"},{\"id\":\"d_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"d_p_panding\",\"text\":\"select\",\"value\":\"com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService\"}]},{\"id\":\"node_5\",\"name\":\"主管警员审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":230,\"top\":229,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"主管警员审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"主管警员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355985f95c0159860172070002\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_6\",\"name\":\"line_6\",\"type\":\"line\",\"shape\":\"line\",\"number\":6,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":120,\"fromy\":90,\"tox\":207,\"toy\":101.5,\"polydot\":[],\"property\":null},{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":242,\"fromy\":101.5,\"tox\":371,\"toy\":143.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":388.5,\"fromy\":196,\"tox\":285,\"toy\":246.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_2\",\"fromx\":388.5,\"fromy\":196,\"tox\":505,\"toy\":280,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_2\",\"fromx\":285,\"fromy\":246.5,\"tox\":505,\"toy\":280,\"polydot\":[],\"property\":null}]}', '1', '证书流程—辅警证书延期 ', null, '2.01701e16', '证书流程', '0', 'cert', '1', 'fjzhengshuyanqi', '辅警证书延期');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5962c454015962e7e1c20038', 'yonghuguanli', '20170103135800898', '用户管理', '{\"id\":\"2c908fac5962c454015962e7e1c20038\",\"name\":null,\"count\":9,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":99,\"top\":145,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":637,\"top\":144,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":185,\"top\":120,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级用户管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dba222f0001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":340,\"top\":119,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":493,\"top\":121,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_6\",\"name\":\"line_6\",\"type\":\"line\",\"shape\":\"line\",\"number\":6,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":119,\"fromy\":155,\"tox\":205,\"toy\":137.5,\"polydot\":[],\"property\":null},{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":240,\"fromy\":137.5,\"tox\":360,\"toy\":136.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":395,\"fromy\":136.5,\"tox\":513,\"toy\":138.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_5\",\"to\":\"node_2\",\"fromx\":548,\"fromy\":138.5,\"tox\":637,\"toy\":154,\"polydot\":[],\"property\":null}]}', '1', '此流程为管理员流程，用户管理员专用。', null, '2.01701e16', '用户流程', '0', 'user', '1', 'yonghuguanli', '用户管理');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5962c454015962ea532d0041', 'jigouguanli', '20170103140041005', '机构管理', '{\"id\":\"2c908fac5962c454015962ea532d0041\",\"name\":null,\"count\":10,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":76,\"top\":156,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":629,\"top\":152,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":160,\"top\":130,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级用户管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dba222f0001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":308,\"top\":128,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":463,\"top\":128,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":96,\"fromy\":166,\"tox\":180,\"toy\":147.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":215,\"fromy\":147.5,\"tox\":328,\"toy\":145.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":363,\"fromy\":145.5,\"tox\":483,\"toy\":145.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_2\",\"fromx\":518,\"fromy\":145.5,\"tox\":629,\"toy\":162,\"polydot\":[],\"property\":null}]}', '1', '此流程为管理员流程。', null, '2.01701e16', '用户流程', '0', 'user', '1', 'jigouguanli', '机构管理');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5962c454015962edcea5004a', 'zhengshuguanli', '20170103140429221', '证书管理', '{\"id\":\"2c908fac5962c454015962edcea5004a\",\"name\":null,\"count\":9,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":94,\"top\":173,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":677,\"top\":170,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":187,\"top\":142,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":348,\"top\":143,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"部门领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":504,\"top\":145,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"部门领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_6\",\"name\":\"line_6\",\"type\":\"line\",\"shape\":\"line\",\"number\":6,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":114,\"fromy\":183,\"tox\":207,\"toy\":159.5,\"polydot\":[],\"property\":null},{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":242,\"fromy\":159.5,\"tox\":368,\"toy\":160.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":403,\"fromy\":160.5,\"tox\":524,\"toy\":162.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_5\",\"to\":\"node_2\",\"fromx\":559,\"fromy\":162.5,\"tox\":677,\"toy\":180,\"polydot\":[],\"property\":null}]}', '1', '此流程为管理员流程。', null, '2.01701e16', '证书流程', '0', 'cert', '1', 'zhengshuguanli', '证书管理');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b0e3793015b0e4c69aa0009', 'zhengshuzhuxiao', '20170327134540522', '警员证书注销', '{\"id\":\"2c908fac5b0e3793015b0e4c69aa0009\",\"name\":null,\"count\":5,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":123,\"top\":131,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":534,\"top\":172,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":296,\"top\":123,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_4\",\"name\":\"line_4\",\"type\":\"line\",\"shape\":\"line\",\"number\":4,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":143,\"fromy\":141,\"tox\":316,\"toy\":140.5,\"polydot\":[],\"property\":null},{\"id\":\"line_5\",\"name\":\"line_5\",\"type\":\"line\",\"shape\":\"line\",\"number\":5,\"from\":\"node_3\",\"to\":\"node_2\",\"fromx\":351,\"fromy\":140.5,\"tox\":534,\"toy\":182,\"polydot\":[],\"property\":null}]}', '1', '用于警员用户注销证书', null, '2.01703e16', '证书流程', '0', 'cert', '1', 'zhengshuzhuxiao', '警员证书注销');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b1e3083015b1e64d8f60001', 'yonghuzhuce', '20170330164617333', '警员用户注册', '{\"id\":\"2c908fac5b1e3083015b1e64d8f60001\",\"name\":null,\"count\":11,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":68,\"top\":178,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":767,\"top\":201,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":175,\"top\":158,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级用户管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dba222f0001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":329,\"top\":165,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":486,\"top\":171,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":631,\"top\":167,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":88,\"fromy\":188,\"tox\":195,\"toy\":175.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":230,\"fromy\":175.5,\"tox\":349,\"toy\":182.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":384,\"fromy\":182.5,\"tox\":506,\"toy\":188.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":541,\"fromy\":188.5,\"tox\":651,\"toy\":184.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_6\",\"to\":\"node_2\",\"fromx\":686,\"fromy\":184.5,\"tox\":767,\"toy\":211,\"polydot\":[],\"property\":null}]}', '1', '此流程为警员专用流程，辅警需另配置辅警用户申请。', null, '2.01703e16', '用户流程', '0', 'user', '1', 'yonghuzhuce', '警员用户注册');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b1e3083015b1e7f0987000c', 'yonghuxinxibiangeng', '20170330171453703', '警号用户信息变更', '{\"id\":\"2c908fac5b1e3083015b1e7f0987000c\",\"name\":null,\"count\":11,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":93,\"top\":203,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":772,\"top\":210,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":160,\"top\":176,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级用户管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dba222f0001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":309,\"top\":178,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":477,\"top\":182,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"单位领导\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":625,\"top\":180,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":113,\"fromy\":213,\"tox\":180,\"toy\":193.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":215,\"fromy\":193.5,\"tox\":329,\"toy\":195.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":364,\"fromy\":195.5,\"tox\":497,\"toy\":199.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":532,\"fromy\":199.5,\"tox\":645,\"toy\":197.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_6\",\"to\":\"node_2\",\"fromx\":680,\"fromy\":197.5,\"tox\":772,\"toy\":220,\"polydot\":[],\"property\":null}]}', '1', '用于警员的用户信息变更流程', null, '2.01703e16', '用户流程', '0', 'user', '1', 'yonghushuxingbiangeng', '警员用户信息变更');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b1e3083015b1e85bde20017', 'fjzhengshuzhuxiao', '20170330172213090', '辅警证书注销 ', '{\"id\":\"2c908fac5b1e3083015b1e85bde20017\",\"name\":null,\"count\":11,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":100,\"top\":80,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":541,\"top\":274,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":196,\"top\":110,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"主管警员审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":248,\"top\":234,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"主管警员审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"主管警员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355985f95c0159860172070002\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"用户身份判定\",\"type\":\"node\",\"nodetype\":\"decision\",\"shape\":\"img\",\"number\":6,\"left\":382,\"top\":117,\"width\":75,\"height\":70,\"property\":[{\"id\":\"d_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"d_p_name\",\"text\":\"input\",\"value\":\"用户身份判定\"},{\"id\":\"d_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"d_p_panding\",\"text\":\"select\",\"value\":\"com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService\"}]}],\"lines\":[{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":120,\"fromy\":90,\"tox\":216,\"toy\":127.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_6\",\"fromx\":251,\"fromy\":127.5,\"tox\":402,\"toy\":134.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_6\",\"to\":\"node_4\",\"fromx\":419.5,\"fromy\":187,\"tox\":303,\"toy\":251.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_6\",\"to\":\"node_2\",\"fromx\":419.5,\"fromy\":187,\"tox\":541,\"toy\":284,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_4\",\"to\":\"node_2\",\"fromx\":303,\"fromy\":251.5,\"tox\":541,\"toy\":284,\"polydot\":[],\"property\":null}]}', '1', '此流程用于进行辅警的证书注销业务  ', null, '2.01703e16', '证书流程', '0', 'cert', '1', 'fjzhengshuzhuxiao', '辅警证书注销');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b1e3083015b1e898b7b001f', 'zhengshushenqing', '20170330172622331', '警员证书申请', '{\"id\":\"2c908fac5b1e3083015b1e898b7b001f\",\"name\":null,\"count\":11,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":94,\"top\":231,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":766,\"top\":262,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":172,\"top\":207,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":309,\"top\":216,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":441,\"top\":214,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":606,\"top\":224,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":114,\"fromy\":241,\"tox\":192,\"toy\":224.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":227,\"fromy\":224.5,\"tox\":329,\"toy\":233.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":364,\"fromy\":233.5,\"tox\":461,\"toy\":231.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":496,\"fromy\":231.5,\"tox\":626,\"toy\":241.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_6\",\"to\":\"node_2\",\"fromx\":661,\"fromy\":241.5,\"tox\":766,\"toy\":272,\"polydot\":[],\"property\":null}]}', '1', '用于警员用户申请证书', null, '2.01703e16', '证书流程', '0', 'cert', '1', 'zhengshushenqing', '警员证书申请');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b1e3083015b1e95056c002a', 'jingyuanzhengshubufa', '20170330173854444', '警员证书补发', '{\"id\":\"2c908fac5b1e3083015b1e95056c002a\",\"name\":null,\"count\":11,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":92,\"top\":279,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":782,\"top\":306,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":183,\"top\":269,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":323,\"top\":263,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":478,\"top\":270,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":628,\"top\":274,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":112,\"fromy\":289,\"tox\":203,\"toy\":286.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":238,\"fromy\":286.5,\"tox\":343,\"toy\":280.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":378,\"fromy\":280.5,\"tox\":498,\"toy\":287.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":533,\"fromy\":287.5,\"tox\":648,\"toy\":291.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_6\",\"to\":\"node_2\",\"fromx\":683,\"fromy\":291.5,\"tox\":782,\"toy\":316,\"polydot\":[],\"property\":null}]}', '1', '此流程为警员专用证书补发流程，辅警不可自己进行证书补发业务，所以无对应的证书补发流程。', null, '2.01703e16', '证书流程', '0', 'cert', '1', 'zhengshubufa', '警员证书补发');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b1e3083015b1e9862b30035', 'zhengshujiedong', '20170330174234931', '警员证书解冻', '{\"id\":\"2c908fac5b1e3083015b1e9862b30035\",\"name\":null,\"count\":5,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":160,\"top\":136,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":441,\"top\":141,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":277,\"top\":120,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_4\",\"name\":\"line_4\",\"type\":\"line\",\"shape\":\"line\",\"number\":4,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":180,\"fromy\":146,\"tox\":297,\"toy\":137.5,\"polydot\":[],\"property\":null},{\"id\":\"line_5\",\"name\":\"line_5\",\"type\":\"line\",\"shape\":\"line\",\"number\":5,\"from\":\"node_3\",\"to\":\"node_2\",\"fromx\":332,\"fromy\":137.5,\"tox\":441,\"toy\":151,\"polydot\":[],\"property\":null}]}', '1', '此流程为辅警专用证书解冻流程。', null, '2.01703e16', '证书流程', '0', 'cert', '1', 'zhengshujiedong', '警员证书解冻');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b1e3083015b1e9b0997003a', 'zhengshuxinxijiaozhun ', '20170330174528727', '警员证书信息校准', '{\"id\":\"2c908fac5b1e3083015b1e9b0997003a\",\"name\":null,\"count\":11,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":95,\"top\":185,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":758,\"top\":184,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":175,\"top\":161,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":316,\"top\":164,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":474,\"top\":161,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":615,\"top\":164,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":115,\"fromy\":195,\"tox\":195,\"toy\":178.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":230,\"fromy\":178.5,\"tox\":336,\"toy\":181.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":371,\"fromy\":181.5,\"tox\":494,\"toy\":178.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":529,\"fromy\":178.5,\"tox\":635,\"toy\":181.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_6\",\"to\":\"node_2\",\"fromx\":670,\"fromy\":181.5,\"tox\":758,\"toy\":194,\"polydot\":[],\"property\":null}]}', '1', '用于警员用户证书信息校准，如人证不符', null, '2.01703e16', '证书流程', '0', 'cert', '1', 'zhengshuxinxijiaozhun', '警员证书信息校准');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b1e3083015b1e9da2a50045', 'jingyuanzhengshuyanqi', '20170330174818981', '警员证书延期', '{\"id\":\"2c908fac5b1e3083015b1e9da2a50045\",\"name\":null,\"count\":5,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":223,\"top\":172,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":475,\"top\":180,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":320,\"top\":167,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_4\",\"name\":\"line_4\",\"type\":\"line\",\"shape\":\"line\",\"number\":4,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":243,\"fromy\":182,\"tox\":340,\"toy\":184.5,\"polydot\":[],\"property\":null},{\"id\":\"line_5\",\"name\":\"line_5\",\"type\":\"line\",\"shape\":\"line\",\"number\":5,\"from\":\"node_3\",\"to\":\"node_2\",\"fromx\":375,\"fromy\":184.5,\"tox\":475,\"toy\":190,\"polydot\":[],\"property\":null}]}', '1', '此流程为警员专用流程，辅警需另配置辅警证书延期', null, '2.01703e16', '证书流程', '0', 'cert', '1', 'zhengshuyanqi', '警员证书延期');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b1e3083015b1e9fa5e7004a', 'fjyonghuzhuce', '20170330175030887', '辅警用户注册', '{\"id\":\"2c908fac5b1e3083015b1e9fa5e7004a\",\"name\":null,\"count\":16,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":97,\"top\":174,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":890,\"top\":312,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":194,\"top\":148,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级用户管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dba222f0001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"用户身份判定\",\"type\":\"node\",\"nodetype\":\"decision\",\"shape\":\"img\",\"number\":4,\"left\":353,\"top\":157,\"width\":75,\"height\":70,\"property\":[{\"id\":\"d_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"d_p_name\",\"text\":\"input\",\"value\":\"用户身份判定\"},{\"id\":\"d_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"d_p_panding\",\"text\":\"select\",\"value\":\"com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService\"}]},{\"id\":\"node_5\",\"name\":\"主管警员审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":251,\"top\":285,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"主管警员审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"主管警员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355985f95c0159860172070002\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":430,\"top\":282,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_7\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":7,\"left\":595,\"top\":283,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_7\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_8\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":8,\"left\":740,\"top\":280,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_8\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":117,\"fromy\":184,\"tox\":214,\"toy\":165.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":249,\"fromy\":165.5,\"tox\":373,\"toy\":174.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":390.5,\"fromy\":227,\"tox\":306,\"toy\":302.5,\"polydot\":[],\"property\":null},{\"id\":\"line_12\",\"name\":\"line_12\",\"type\":\"line\",\"shape\":\"line\",\"number\":12,\"from\":\"node_4\",\"to\":\"node_6\",\"fromx\":390.5,\"fromy\":227,\"tox\":450,\"toy\":299.5,\"polydot\":[],\"property\":null},{\"id\":\"line_13\",\"name\":\"line_13\",\"type\":\"line\",\"shape\":\"line\",\"number\":13,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":306,\"fromy\":302.5,\"tox\":450,\"toy\":299.5,\"polydot\":[],\"property\":null},{\"id\":\"line_14\",\"name\":\"line_14\",\"type\":\"line\",\"shape\":\"line\",\"number\":14,\"from\":\"node_6\",\"to\":\"node_7\",\"fromx\":485,\"fromy\":299.5,\"tox\":615,\"toy\":300.5,\"polydot\":[],\"property\":null},{\"id\":\"line_15\",\"name\":\"line_15\",\"type\":\"line\",\"shape\":\"line\",\"number\":15,\"from\":\"node_7\",\"to\":\"node_8\",\"fromx\":650,\"fromy\":300.5,\"tox\":760,\"toy\":297.5,\"polydot\":[],\"property\":null},{\"id\":\"line_16\",\"name\":\"line_16\",\"type\":\"line\",\"shape\":\"line\",\"number\":16,\"from\":\"node_8\",\"to\":\"node_2\",\"fromx\":795,\"fromy\":297.5,\"tox\":890,\"toy\":322,\"polydot\":[],\"property\":null}]}', '1', '自助流程-辅警用户注册', null, '2.01703e16', '用户流程', '0', 'user', '1', 'fjyonghuzhuce', '辅警用户注册');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5b220084015b222fd5130001', 'fjzhengshushenqing', '20170331102651791', '辅警证书申请', '{\"id\":\"2c908fac5b220084015b222fd5130001\",\"name\":null,\"count\":16,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":100,\"top\":80,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":832,\"top\":292,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":176,\"top\":68,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级证书管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dbaf7a30006\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"用户身份判定\",\"type\":\"node\",\"nodetype\":\"decision\",\"shape\":\"img\",\"number\":4,\"left\":306,\"top\":111,\"width\":75,\"height\":70,\"property\":[{\"id\":\"d_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"d_p_name\",\"text\":\"input\",\"value\":\"用户身份判定\"},{\"id\":\"d_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"d_p_panding\",\"text\":\"select\",\"value\":\"com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService\"}]},{\"id\":\"node_5\",\"name\":\"主管警员审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":210,\"top\":227,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"主管警员审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"主管警员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355985f95c0159860172070002\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":367,\"top\":232,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_7\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":7,\"left\":513,\"top\":242,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_7\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_8\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":8,\"left\":672,\"top\":242,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_8\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":120,\"fromy\":90,\"tox\":196,\"toy\":85.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":231,\"fromy\":85.5,\"tox\":326,\"toy\":128.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":343.5,\"fromy\":181,\"tox\":265,\"toy\":244.5,\"polydot\":[],\"property\":null},{\"id\":\"line_12\",\"name\":\"line_12\",\"type\":\"line\",\"shape\":\"line\",\"number\":12,\"from\":\"node_4\",\"to\":\"node_6\",\"fromx\":343.5,\"fromy\":181,\"tox\":404.5,\"toy\":232,\"polydot\":[],\"property\":null},{\"id\":\"line_13\",\"name\":\"line_13\",\"type\":\"line\",\"shape\":\"line\",\"number\":13,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":265,\"fromy\":244.5,\"tox\":387,\"toy\":249.5,\"polydot\":[],\"property\":null},{\"id\":\"line_14\",\"name\":\"line_14\",\"type\":\"line\",\"shape\":\"line\",\"number\":14,\"from\":\"node_6\",\"to\":\"node_7\",\"fromx\":422,\"fromy\":249.5,\"tox\":533,\"toy\":259.5,\"polydot\":[],\"property\":null},{\"id\":\"line_15\",\"name\":\"line_15\",\"type\":\"line\",\"shape\":\"line\",\"number\":15,\"from\":\"node_7\",\"to\":\"node_8\",\"fromx\":568,\"fromy\":259.5,\"tox\":692,\"toy\":259.5,\"polydot\":[],\"property\":null},{\"id\":\"line_16\",\"name\":\"line_16\",\"type\":\"line\",\"shape\":\"line\",\"number\":16,\"from\":\"node_8\",\"to\":\"node_2\",\"fromx\":727,\"fromy\":259.5,\"tox\":832,\"toy\":302,\"polydot\":[],\"property\":null}]}', '1', '此流程用于进行辅警的证书申请业务', null, '2.01701e16', '证书流程', '0', 'cert', '1', 'fjzhengshushenqing', '辅警证书申请');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5bf51917015bf51e1ee20001', 'bangdingfujingguanxi', '20170511092723616', '绑定辅警关系', '{\"id\":\"2c908fac5bf51917015bf51e1ee20001\",\"name\":null,\"count\":11,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":71,\"top\":198,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":710,\"top\":201,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":144,\"top\":175,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级用户管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dba222f0001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":274,\"top\":177,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":408,\"top\":174,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":550,\"top\":171,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":91,\"fromy\":208,\"tox\":164,\"toy\":192.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":199,\"fromy\":192.5,\"tox\":294,\"toy\":194.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":329,\"fromy\":194.5,\"tox\":428,\"toy\":191.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":463,\"fromy\":191.5,\"tox\":570,\"toy\":188.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_6\",\"to\":\"node_2\",\"fromx\":605,\"fromy\":188.5,\"tox\":710,\"toy\":211,\"polydot\":[],\"property\":null}]}', '1', '用于绑定辅警关系', null, '2.01705e16', '用户流程', '0', 'user', '1', 'bangdingfujingguanxi', '绑定辅警关系');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5bf51917015bf523098b000c', 'jiebangfujingguanxi', '20170511093245835', '解绑辅警关系', '{\"id\":\"2c908fac5bf51917015bf523098b000c\",\"name\":null,\"count\":11,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":100,\"top\":199,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":772,\"top\":201,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":183,\"top\":169,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级用户管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dba222f0001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":329,\"top\":170,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":469,\"top\":170,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":606,\"top\":170,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":120,\"fromy\":209,\"tox\":203,\"toy\":186.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":238,\"fromy\":186.5,\"tox\":349,\"toy\":187.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":384,\"fromy\":187.5,\"tox\":489,\"toy\":187.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":524,\"fromy\":187.5,\"tox\":626,\"toy\":187.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_6\",\"to\":\"node_2\",\"fromx\":661,\"fromy\":187.5,\"tox\":772,\"toy\":211,\"polydot\":[],\"property\":null}]}', '1', '用于解绑辅警关系', null, '2.01705e16', '用户流程', '0', 'user', '1', 'jiebangfujingguanxi', '解绑辅警关系');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5bfa8793015bfa8c0a7b0001', 'fjzhuguanjingyuanbiangeng', '20170512104533435', '辅警主管警员变更', '{\"id\":\"2c908fac5bfa8793015bfa8c0a7b0001\",\"name\":null,\"count\":11,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":77,\"top\":229,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":775,\"top\":221,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":184,\"top\":196,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级用户管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dba222f0001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":337,\"top\":194,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"2\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":5,\"left\":475,\"top\":193,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_6\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":629,\"top\":196,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_7\",\"name\":\"line_7\",\"type\":\"line\",\"shape\":\"line\",\"number\":7,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":97,\"fromy\":239,\"tox\":204,\"toy\":213.5,\"polydot\":[],\"property\":null},{\"id\":\"line_8\",\"name\":\"line_8\",\"type\":\"line\",\"shape\":\"line\",\"number\":8,\"from\":\"node_3\",\"to\":\"node_4\",\"fromx\":239,\"fromy\":213.5,\"tox\":357,\"toy\":211.5,\"polydot\":[],\"property\":null},{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_4\",\"to\":\"node_5\",\"fromx\":392,\"fromy\":211.5,\"tox\":495,\"toy\":210.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":530,\"fromy\":210.5,\"tox\":649,\"toy\":213.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_6\",\"to\":\"node_2\",\"fromx\":684,\"fromy\":213.5,\"tox\":775,\"toy\":231,\"polydot\":[],\"property\":null}]}', '1', '此流程为警员流程，将自己的辅警分配给其他警员。', null, '2.01705e16', '用户流程', '0', 'user', '1', 'fjzhuguanjingyuanbiangeng', '辅警主管警员变更');
INSERT INTO `jwf_processdefinition` VALUES ('2c908fac5bfa8793015bfa960521000c', 'fjyonghushuxingbiangeng', '20170512105627425', '辅警用户信息变更', '{\"id\":\"2c908fac5bfa8793015bfa960521000c\",\"name\":null,\"count\":16,\"nodes\":[{\"id\":\"node_1\",\"name\":\"开始\",\"type\":\"start\",\"shape\":\"oval\",\"number\":1,\"left\":87,\"top\":82,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_2\",\"name\":\"办结\",\"type\":\"end\",\"shape\":\"oval\",\"number\":2,\"left\":848,\"top\":251,\"width\":20,\"height\":20,\"property\":null},{\"id\":\"node_3\",\"name\":\"起草\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":3,\"left\":178,\"top\":62,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_3\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"起草\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"区县级用户管理员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f3c594db0d301594dba222f0001\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_4\",\"name\":\"主管警员审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":4,\"left\":224,\"top\":208,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_4\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"主管警员审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"主管警员\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"2c908f355985f95c0159860172070002\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_5\",\"name\":\"用户身份判定\",\"type\":\"node\",\"nodetype\":\"decision\",\"shape\":\"img\",\"number\":5,\"left\":322,\"top\":68,\"width\":75,\"height\":70,\"property\":[{\"id\":\"d_p_id\",\"text\":\"span\",\"value\":\"node_5\"},{\"id\":\"d_p_name\",\"text\":\"input\",\"value\":\"用户身份判定\"},{\"id\":\"d_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"d_p_panding\",\"text\":\"select\",\"value\":\"com.jit.flow.service.impl.FlowDecisionForUserTypeDefaultService\"}]},{\"id\":\"node_6\",\"name\":\"所在部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":6,\"left\":391,\"top\":208,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_6\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"所在部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"所在部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b116d59004d\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_7\",\"name\":\"政工部门审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":7,\"left\":536,\"top\":208,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_7\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"政工部门审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"政工部门\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11b73d004f\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]},{\"id\":\"node_8\",\"name\":\"单位领导审核\",\"type\":\"node\",\"nodetype\":\"task\",\"shape\":\"img\",\"number\":8,\"left\":696,\"top\":210,\"width\":75,\"height\":70,\"property\":[{\"id\":\"n_p_id\",\"text\":\"span\",\"value\":\"node_8\"},{\"id\":\"n_p_name\",\"text\":\"input\",\"value\":\"单位领导审核\"},{\"id\":\"n_p_info\",\"text\":\"textarea\",\"value\":\"\"},{\"id\":\"n_p_timer\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_ishuiqi\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_isselect\",\"text\":\"checkbox\",\"value\":\"1\"},{\"id\":\"n_p_selectcl\",\"text\":\"select\",\"value\":\"0\"},{\"id\":\"n_p_role\",\"text\":\"input\",\"value\":\"单位领导\"},{\"id\":\"n_p_groupinfo\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_department\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_specialrole\",\"text\":\"input\",\"value\":\"\"},{\"id\":\"n_p_selectclid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_roleid\",\"text\":\"hidden\",\"value\":\"2c908f3c591b044601591b11e3a50051\"},{\"id\":\"n_p_groupinfoid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_departmentid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"n_p_specialroleid\",\"text\":\"hidden\",\"value\":\"\"},{\"id\":\"11111\",\"text\":\"span\",\"value\":\"角色，群组，部门，特殊角色必选其一。\"}]}],\"lines\":[{\"id\":\"line_9\",\"name\":\"line_9\",\"type\":\"line\",\"shape\":\"line\",\"number\":9,\"from\":\"node_1\",\"to\":\"node_3\",\"fromx\":107,\"fromy\":92,\"tox\":198,\"toy\":79.5,\"polydot\":[],\"property\":null},{\"id\":\"line_10\",\"name\":\"line_10\",\"type\":\"line\",\"shape\":\"line\",\"number\":10,\"from\":\"node_3\",\"to\":\"node_5\",\"fromx\":233,\"fromy\":79.5,\"tox\":342,\"toy\":85.5,\"polydot\":[],\"property\":null},{\"id\":\"line_11\",\"name\":\"line_11\",\"type\":\"line\",\"shape\":\"line\",\"number\":11,\"from\":\"node_5\",\"to\":\"node_4\",\"fromx\":359.5,\"fromy\":138,\"tox\":279,\"toy\":225.5,\"polydot\":[],\"property\":null},{\"id\":\"line_12\",\"name\":\"line_12\",\"type\":\"line\",\"shape\":\"line\",\"number\":12,\"from\":\"node_5\",\"to\":\"node_6\",\"fromx\":359.5,\"fromy\":138,\"tox\":428.5,\"toy\":208,\"polydot\":[],\"property\":null},{\"id\":\"line_13\",\"name\":\"line_13\",\"type\":\"line\",\"shape\":\"line\",\"number\":13,\"from\":\"node_4\",\"to\":\"node_6\",\"fromx\":279,\"fromy\":225.5,\"tox\":411,\"toy\":225.5,\"polydot\":[],\"property\":null},{\"id\":\"line_14\",\"name\":\"line_14\",\"type\":\"line\",\"shape\":\"line\",\"number\":14,\"from\":\"node_6\",\"to\":\"node_7\",\"fromx\":446,\"fromy\":225.5,\"tox\":556,\"toy\":225.5,\"polydot\":[],\"property\":null},{\"id\":\"line_15\",\"name\":\"line_15\",\"type\":\"line\",\"shape\":\"line\",\"number\":15,\"from\":\"node_7\",\"to\":\"node_8\",\"fromx\":591,\"fromy\":225.5,\"tox\":716,\"toy\":227.5,\"polydot\":[],\"property\":null},{\"id\":\"line_16\",\"name\":\"line_16\",\"type\":\"line\",\"shape\":\"line\",\"number\":16,\"from\":\"node_8\",\"to\":\"node_2\",\"fromx\":751,\"fromy\":227.5,\"tox\":848,\"toy\":261,\"polydot\":[],\"property\":null}]}', '1', '用于辅警用户信息变更', null, '2.01705e16', '用户流程', '0', 'user', '1', 'fjyonghushuxingbiangeng', '辅警用户信息变更');

-- ----------------------------
-- Table structure for jwf_specialrole
-- ----------------------------
DROP TABLE IF EXISTS `jwf_specialrole`;
CREATE TABLE `jwf_specialrole` (
  `CLOUDNODE` int(11) DEFAULT '0',
  `ID` varchar(61) NOT NULL DEFAULT '',
  `NAME` varchar(100) DEFAULT NULL,
  `CONTENT` varchar(400) DEFAULT NULL,
  `BEAN_ID` varchar(100) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwf_specialrole
-- ----------------------------
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f355985f95c0159860172070002', '主管警员', '主管警员', 'ZhuGuanJingYuan', '2.01701e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f355fecf8e8015fecfb26650001', '区县级移动证书管理员', '区县级移动证书管理员', 'wirelessCountryCertAdmin', '2.01711e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f355fecf8e8015fecfb939f0002', '市级移动证书管理员', '市级移动证书管理员', 'wirelessCityCertAdmin', '2.01711e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f355fecf8e8015fecfbceee0003', '省级移动证书管理员', '省级移动证书管理员', 'wirelessProvinceCertAdmin', '2.01711e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f355fecf8e8015fecfc018a0004', '局级移动证书管理员', '局级移动证书管理员', 'wirelessSubordinateCertAdmin', '2.01711e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f355fecf8e8015fecfc42610005', '部级移动证书管理员', '部级移动证书管理员', 'wirelessMinistryCertAdmin', '2.01711e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c591b044601591b116d59004d', '所在部门', '所在部门', 'JwfCustomerRole', '2.01703e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c591b044601591b11b73d004f', '政工部门', '政工部门', 'JwfCustomerRole', '2.01703e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c591b044601591b11e3a50051', '单位领导', '单位领导', 'JwfCustomerRole', '2.01703e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c594db0d301594dba222f0001', '区县级用户管理员', '区县级用户管理员', 'countryUserAdmin', '2.01612e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c594db0d301594dba4c4b0002', '市级用户管理员', '市级用户管理员', 'cityUserAdmin', '2.01612e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c594db0d301594dba74920003', '省级用户管理员', '省级用户管理员', 'provinceUserAdmin', '2.01612e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c594db0d301594dbaf7a30006', '区县级证书管理员', '区县级证书管理员', 'countryCertAdmin', '2.01612e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c594db0d301594dbb18e50007', '市级证书管理员', '市级证书管理员', 'cityCertAdmin', '2.01612e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c594db0d301594dbb3bda0008', '省级证书管理员', '省级证书管理员', 'provinceCertAdmin', '2.01612e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c594db0d301594dbd373b000c', '区县级权限管理员', '区县级权限管理员', 'countryPowerAdmin', '2.01612e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c594db0d301594dbd5512000d', '市级权限管理员', '市级权限管理员', 'cityPowerAdmin', '2.01612e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c594db0d301594dbd7794000e', '省级权限管理员', '省级权限管理员', 'provincePowerAdmin', '2.01612e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c5962e745015962e9a4e90003', '局级用户管理员', '局级用户管理员', 'subordinateUserAdmin', '2.01703e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c5962e745015962e9ec370005', '局级证书管理员', '局级证书管理员', 'subordinateCertAdmin', '2.01703e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c5962e745015962ea0cdd0006', '部级证书管理员', '部级证书管理员', 'ministryCertAdmin', '2.01703e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c5962e745015962eb00440007', '部级用户管理员', '部级用户管理员', 'ministryUserAdmin', '2.01701e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c5962e745015962eb2ee40008', '局级权限管理员', '局级权限管理员', 'subordinatePowerAdmin', '2.01701e16');
INSERT INTO `jwf_specialrole` VALUES ('0', '2c908f3c5962e745015962ec1e7f000a', '部级权限管理员', '部级权限管理员', 'ministryPowerAdmin', '2.01701e16');

-- ----------------------------
-- Table structure for jwf_specialrole_users
-- ----------------------------
DROP TABLE IF EXISTS `jwf_specialrole_users`;
CREATE TABLE `jwf_specialrole_users` (
  `id` varchar(61) NOT NULL,
  `user_name` varchar(4000) DEFAULT NULL,
  `user_id` varchar(4000) DEFAULT NULL,
  `role_id` varchar(61) DEFAULT NULL,
  `time_stamp` float DEFAULT NULL,
  `cloudnode` int(10) DEFAULT NULL,
  `code` varchar(12) DEFAULT NULL,
  `province` varchar(2) DEFAULT NULL,
  `city` varchar(2) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `subordinate` varchar(2) DEFAULT NULL,
  `subordinate2` varchar(2) DEFAULT NULL,
  `subordinate3` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_jwf_specialrole_users_userid` (`user_id`(255)) USING BTREE,
  KEY `IX_jwf_specialrole_users_roleid` (`role_id`) USING BTREE,
  KEY `IX_jwf_specialrole_users_province-city` (`province`,`city`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwf_specialrole_users
-- ----------------------------

-- ----------------------------
-- Table structure for jwf_templet_json
-- ----------------------------
DROP TABLE IF EXISTS `jwf_templet_json`;
CREATE TABLE `jwf_templet_json` (
  `CLOUDNODE` int(11) DEFAULT '0',
  `ID` varchar(63) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `JSON` longtext,
  `ISUSE` varchar(63) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jwf_templet_json
-- ----------------------------

-- ----------------------------
-- Table structure for public_data_element
-- ----------------------------
DROP TABLE IF EXISTS `public_data_element`;
CREATE TABLE `public_data_element` (
  `isend` int(1) DEFAULT '0',
  `isdel` int(1) DEFAULT '0',
  `PIID` bigint(20) DEFAULT NULL,
  `DATA_MODEL_ID` varchar(63) DEFAULT NULL,
  `ID` varchar(63) NOT NULL,
  `COL1` longtext,
  `COL2` longtext,
  `COL3` longtext,
  `COL4` longtext,
  `COL5` longtext,
  `COL6` longtext,
  `COL7` longtext,
  `COL8` longtext,
  `COL9` longtext,
  `COL10` longtext,
  `COL11` longtext,
  `COL12` longtext,
  `COL13` longtext,
  `COL14` longtext,
  `COL15` longtext,
  `COL16` longtext,
  `COL17` longtext,
  `COL18` longtext,
  `COL19` longtext,
  `COL20` longtext,
  `COL21` longtext,
  `COL22` longtext,
  `COL23` longtext,
  `COL24` longtext,
  `COL25` longtext,
  `COL26` longtext,
  `COL27` longtext,
  `COL28` longtext,
  `COL29` longtext,
  `COL30` longtext,
  `COL31` longtext,
  `COL32` longtext,
  `COL33` longtext,
  `COL34` longtext,
  `COL35` longtext,
  `COL36` longtext,
  `COL37` longtext,
  `COL38` longtext,
  `COL39` longtext,
  `COL40` longtext,
  `COL41` longtext,
  `COL42` longtext,
  `COL43` longtext,
  `COL44` longtext,
  `COL45` longtext,
  `COL46` longtext,
  `COL47` longtext,
  `COL48` longtext,
  `COL49` longtext,
  `COL50` longtext,
  `COL51` varchar(50) DEFAULT NULL,
  `COL52` varchar(50) DEFAULT NULL,
  `COL53` varchar(50) DEFAULT NULL,
  `COL54` varchar(50) DEFAULT NULL,
  `COL55` varchar(50) DEFAULT NULL,
  `COL56` varchar(50) DEFAULT NULL,
  `COL57` varchar(50) DEFAULT NULL,
  `COL58` varchar(50) DEFAULT NULL,
  `COL59` varchar(50) DEFAULT NULL,
  `COL60` varchar(50) DEFAULT NULL,
  `COL61` varchar(50) DEFAULT NULL,
  `COL62` varchar(50) DEFAULT NULL,
  `COL63` varchar(50) DEFAULT NULL,
  `COL64` varchar(50) DEFAULT NULL,
  `COL65` varchar(50) DEFAULT NULL,
  `COL66` varchar(50) DEFAULT NULL,
  `COL67` varchar(50) DEFAULT NULL,
  `COL68` varchar(50) DEFAULT NULL,
  `COL69` varchar(50) DEFAULT NULL,
  `COL70` varchar(50) DEFAULT NULL,
  `TIME_STAMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_pde_business_db` (`PIID`,`isdel`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_data_element
-- ----------------------------

-- ----------------------------
-- Table structure for public_data_element_desc
-- ----------------------------
DROP TABLE IF EXISTS `public_data_element_desc`;
CREATE TABLE `public_data_element_desc` (
  `ID` varchar(63) NOT NULL,
  `COL_KEY` varchar(63) DEFAULT NULL,
  `DATA_ELEMENT_NAME` varchar(255) DEFAULT NULL,
  `DATA_ELEMENT_CODE` varchar(255) DEFAULT NULL,
  `DATA_ELEMENT_TYPE` varchar(400) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_data_element_desc
-- ----------------------------

-- ----------------------------
-- Table structure for public_data_model
-- ----------------------------
DROP TABLE IF EXISTS `public_data_model`;
CREATE TABLE `public_data_model` (
  `ID` varchar(63) NOT NULL,
  `CODE` varchar(63) DEFAULT NULL,
  `MODELNAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT NULL,
  `MODELTYPE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_data_model
-- ----------------------------

-- ----------------------------
-- Table structure for public_data_object
-- ----------------------------
DROP TABLE IF EXISTS `public_data_object`;
CREATE TABLE `public_data_object` (
  `ID` varchar(63) NOT NULL,
  `OBJECTNAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `METADATAOBJECT` varchar(255) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  `CODE` varchar(63) DEFAULT NULL,
  `ISGENERATE` varchar(2) DEFAULT NULL,
  `CLOUDNODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_data_object
-- ----------------------------

-- ----------------------------
-- Table structure for public_data_object_detail
-- ----------------------------
DROP TABLE IF EXISTS `public_data_object_detail`;
CREATE TABLE `public_data_object_detail` (
  `ID` varchar(63) NOT NULL,
  `CODE` varchar(63) DEFAULT NULL,
  `DATANAME` varchar(255) DEFAULT NULL,
  `DATAITEM` varchar(255) DEFAULT NULL,
  `DATATYPE` varchar(255) DEFAULT NULL,
  `LENGTH` varchar(255) DEFAULT NULL,
  `DATA_ELEMENT_DESC` varchar(255) DEFAULT NULL,
  `REF_OBJECT_ID` varchar(63) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  `ISGENERATE` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_data_object_detail
-- ----------------------------

-- ----------------------------
-- Table structure for public_model_relation
-- ----------------------------
DROP TABLE IF EXISTS `public_model_relation`;
CREATE TABLE `public_model_relation` (
  `ID` varchar(63) NOT NULL,
  `REL_MODEL_ID` varchar(63) DEFAULT NULL,
  `REL_OBJECT_ID` varchar(63) DEFAULT NULL,
  `TIME_STAMP` float DEFAULT NULL,
  `ISCHILD` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_model_relation
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_NAME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`CALENDAR_NAME`,`SCHED_NAME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_NAME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` bigint(20) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`,`SCHED_NAME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`JOB_GROUP`,`JOB_NAME`,`SCHED_NAME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`LOCK_NAME`,`SCHED_NAME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('quartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`INSTANCE_NAME`,`SCHED_NAME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_NAME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` int(11) DEFAULT NULL,
  `LONG_PROP_2` int(11) DEFAULT NULL,
  `DEC_PROP_1` int(11) DEFAULT NULL,
  `DEC_PROP_2` int(11) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_NAME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` bigint(20) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_NAME`)
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for t_sendtask
-- ----------------------------
DROP TABLE IF EXISTS `t_sendtask`;
CREATE TABLE `t_sendtask` (
  `TASKID` bigint(19) NOT NULL AUTO_INCREMENT,
  `DESTNUMBER` varchar(510) DEFAULT NULL,
  `CONTENT` varchar(510) DEFAULT NULL,
  `SIGNNAME` varchar(510) DEFAULT NULL,
  `SENDPRIORITY` int(10) DEFAULT NULL,
  `SENDTIME` datetime DEFAULT NULL,
  `STATUSREPORT` int(11) DEFAULT NULL,
  `ENGLISHFLAG` int(11) DEFAULT NULL,
  `MSGTYPE` int(11) DEFAULT NULL,
  `PUSHURL` varchar(510) DEFAULT NULL,
  `RECACTION` int(11) DEFAULT NULL,
  `VALIDMINUTE` int(11) DEFAULT NULL,
  `SENDFLAG` int(11) DEFAULT NULL,
  `COMMPORT` int(11) DEFAULT NULL,
  `SPLITCOUNT` int(11) DEFAULT NULL,
  `BATCHID` varchar(510) DEFAULT NULL,
  PRIMARY KEY (`TASKID`),
  KEY `IX_t_sendtask_sendflag` (`SENDFLAG`) USING BTREE
) ENGINE=GsDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sendtask
-- ----------------------------
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_2017`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_2017` AFTER INSERT ON `jpt_applogin_log_2017` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2017(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.ACCESSTIME,NEW.USERNAME,99,CONCAT('通过',NEW.CHINESELOGINMODE,'登录',NEW.APPNAME),NEW.ID,'JPT_APPLOGIN_LOG_2017',1,'2017');
REPLACE INTO JPT_APPLOGIN (USERID,DN,UPDATETIME,YEAR) VALUES(NEW.USERID,NEW.OPTUSERDN,NEW.ACCESSTIME,'2017');
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_2018`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_2018` AFTER INSERT ON `jpt_applogin_log_2018` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2018(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.ACCESSTIME,NEW.USERNAME,99,CONCAT('通过',NEW.CHINESELOGINMODE,'登录',NEW.APPNAME),NEW.ID,'JPT_APPLOGIN_LOG_2018',1,'2018'); REPLACE INTO JPT_APPLOGIN (USERID,DN,UPDATETIME,YEAR) VALUES(NEW.USERID,NEW.OPTUSERDN,NEW.ACCESSTIME,'2018'); END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_2019`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_2019` AFTER INSERT ON `jpt_applogin_log_2019` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2019(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.ACCESSTIME,NEW.USERNAME,99,CONCAT('通过',NEW.CHINESELOGINMODE,'登录',NEW.APPNAME),NEW.ID,'JPT_APPLOGIN_LOG_2019',1,'2019'); REPLACE INTO JPT_APPLOGIN (USERID,DN,UPDATETIME,YEAR) VALUES(NEW.USERID,NEW.OPTUSERDN,NEW.ACCESSTIME,'2019'); END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_2020`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_2020` AFTER INSERT ON `jpt_applogin_log_2020` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2020(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.ACCESSTIME,NEW.USERNAME,99,CONCAT('通过',NEW.CHINESELOGINMODE,'登录',NEW.APPNAME),NEW.ID,'JPT_APPLOGIN_LOG_2020',1,'2020'); REPLACE INTO JPT_APPLOGIN (USERID,DN,UPDATETIME,YEAR) VALUES(NEW.USERID,NEW.OPTUSERDN,NEW.ACCESSTIME,'2020'); END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_2021`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_2021` AFTER INSERT ON `jpt_applogin_log_2021` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2021(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.ACCESSTIME,NEW.USERNAME,99,CONCAT('通过',NEW.CHINESELOGINMODE,'登录',NEW.APPNAME),NEW.ID,'JPT_APPLOGIN_LOG_2021',1,'2021'); REPLACE INTO JPT_APPLOGIN (USERID,DN,UPDATETIME,YEAR) VALUES(NEW.USERID,NEW.OPTUSERDN,NEW.ACCESSTIME,'2021'); END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_2022`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_2022` AFTER INSERT ON `jpt_applogin_log_2022` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2022(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.ACCESSTIME,NEW.USERNAME,99,CONCAT('通过',NEW.CHINESELOGINMODE,'登录',NEW.APPNAME),NEW.ID,'JPT_APPLOGIN_LOG_2022',1,'2022'); REPLACE INTO JPT_APPLOGIN (USERID,DN,UPDATETIME,YEAR) VALUES(NEW.USERID,NEW.OPTUSERDN,NEW.ACCESSTIME,'2022'); END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_SYS_2017`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_SYS_2017` AFTER INSERT ON `jpt_sys_log_2017` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2017(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2017',1,'2017'); IF NEW.EFFECTED IS NOT NULL AND NEW.USERID!=NEW.EFFECTED THEN INSERT INTO JPT_USERLIFE_LOG_2017(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.EFFECTED,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2017',0,'2017'); END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_SYS_2018`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_SYS_2018` AFTER INSERT ON `jpt_sys_log_2018` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2018(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2018',1,'2018'); IF NEW.EFFECTED IS NOT NULL AND NEW.USERID!=NEW.EFFECTED THEN INSERT INTO JPT_USERLIFE_LOG_2018(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.EFFECTED,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2018',0,'2018'); END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_SYS_2019`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_SYS_2019` AFTER INSERT ON `jpt_sys_log_2019` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2019(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2019',1,'2019'); IF NEW.EFFECTED IS NOT NULL AND NEW.USERID!=NEW.EFFECTED THEN INSERT INTO JPT_USERLIFE_LOG_2019(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.EFFECTED,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2019',0,'2019'); END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_SYS_2020`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_SYS_2020` AFTER INSERT ON `jpt_sys_log_2020` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2020(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2020',1,'2020'); IF NEW.EFFECTED IS NOT NULL AND NEW.USERID!=NEW.EFFECTED THEN INSERT INTO JPT_USERLIFE_LOG_2020(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.EFFECTED,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2020',0,'2020'); END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_SYS_2021`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_SYS_2021` AFTER INSERT ON `jpt_sys_log_2021` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2021(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2021',1,'2021'); IF NEW.EFFECTED IS NOT NULL AND NEW.USERID!=NEW.EFFECTED THEN INSERT INTO JPT_USERLIFE_LOG_2021(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.EFFECTED,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2021',0,'2021'); END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_SYS_2022`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_SYS_2022` AFTER INSERT ON `jpt_sys_log_2022` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2022(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2022',1,'2022'); IF NEW.EFFECTED IS NOT NULL AND NEW.USERID!=NEW.EFFECTED THEN INSERT INTO JPT_USERLIFE_LOG_2022(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.EFFECTED,NEW.CREATETIME,NEW.USERNAME,NEW.ACTION,NEW.MESSAGE,NEW.ID,'JPT_SYS_LOG_2022',0,'2022'); END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_YD_2017`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_YD_2017` AFTER INSERT ON `jpt_yd_applogin_log_2017` FOR EACH ROW BEGIN
	INSERT INTO JPT_USERLIFE_LOG_2017 (
		USERID,
		OPTTIME,
		OPERATOR,
		OPTTYPE,
		OPTCONTENT,
		SRCID,
		SRCTABLE,
		DEALWITHFLAG,
		LOGYEAR
	) 
VALUES
	(
		NEW.USERID,
		NEW.ACCESSTIME,
		NEW.USERNAME,
		99,
		CONCAT(
			'通过',
			NEW.CHINESELOGINMODE,
			'登录',
			NEW.APPNAME
		),
		NEW.ID,
		'JPT_YD_APPLOGIN_LOG_2017',
		1,
		'2017'
	);

REPLACE INTO JPT_APPLOGIN_YD (USERID, DN, UPDATETIME, YEAR)  
VALUES
	(
		NEW.USERID,
		NEW.OPTUSERDN,
		NEW.ACCESSTIME,
		'2017'
	);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_YD_2018`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_YD_2018` AFTER INSERT ON `jpt_yd_applogin_log_2018` FOR EACH ROW BEGIN
	INSERT INTO JPT_USERLIFE_LOG_2018 (
		USERID,
		OPTTIME,
		OPERATOR,
		OPTTYPE,
		OPTCONTENT,
		SRCID,
		SRCTABLE,
		DEALWITHFLAG,
		LOGYEAR
	) 
VALUES
	(
		NEW.USERID,
		NEW.ACCESSTIME,
		NEW.USERNAME,
		99,
		CONCAT(
			'通过',
			NEW.CHINESELOGINMODE,
			'登录',
			NEW.APPNAME
		),
		NEW.ID,
		'JPT_YD_APPLOGIN_LOG_2018',
		1,
		'2018'
	);

REPLACE INTO JPT_APPLOGIN_YD (USERID, DN, UPDATETIME, YEAR)  
VALUES
	(
		NEW.USERID,
		NEW.OPTUSERDN,
		NEW.ACCESSTIME,
		'2018'
	);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_YD_2019`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_YD_2019` AFTER INSERT ON `jpt_yd_applogin_log_2019` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2019(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.ACCESSTIME,NEW.USERNAME,99,CONCAT('通过',NEW.CHINESELOGINMODE,'登录',NEW.APPNAME),NEW.ID,'JPT_APPLOGIN_LOG_2019',1,'2019'); REPLACE INTO JPT_APPLOGIN_YD (USERID,DN,UPDATETIME,YEAR) VALUES(NEW.USERID,NEW.OPTUSERDN,NEW.ACCESSTIME,'2019'); END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_YD_2020`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_YD_2020` AFTER INSERT ON `jpt_yd_applogin_log_2020` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2020(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.ACCESSTIME,NEW.USERNAME,99,CONCAT('通过',NEW.CHINESELOGINMODE,'登录',NEW.APPNAME),NEW.ID,'JPT_APPLOGIN_LOG_2020',1,'2020'); REPLACE INTO JPT_APPLOGIN_YD (USERID,DN,UPDATETIME,YEAR) VALUES(NEW.USERID,NEW.OPTUSERDN,NEW.ACCESSTIME,'2020'); END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_YD_2021`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_YD_2021` AFTER INSERT ON `jpt_yd_applogin_log_2021` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2021(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.ACCESSTIME,NEW.USERNAME,99,CONCAT('通过',NEW.CHINESELOGINMODE,'登录',NEW.APPNAME),NEW.ID,'JPT_APPLOGIN_LOG_2021',1,'2021'); REPLACE INTO JPT_APPLOGIN_YD (USERID,DN,UPDATETIME,YEAR) VALUES(NEW.USERID,NEW.OPTUSERDN,NEW.ACCESSTIME,'2021'); END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `USERLIFE_LOGIN_YD_2022`;
DELIMITER ;;
CREATE TRIGGER `USERLIFE_LOGIN_YD_2022` AFTER INSERT ON `jpt_yd_applogin_log_2022` FOR EACH ROW BEGIN INSERT INTO JPT_USERLIFE_LOG_2022(USERID,OPTTIME,OPERATOR,OPTTYPE,OPTCONTENT,SRCID,SRCTABLE,DEALWITHFLAG,LOGYEAR) VALUES(NEW.USERID,NEW.ACCESSTIME,NEW.USERNAME,99,CONCAT('通过',NEW.CHINESELOGINMODE,'登录',NEW.APPNAME),NEW.ID,'JPT_APPLOGIN_LOG_2022',1,'2022'); REPLACE INTO JPT_APPLOGIN_YD (USERID,DN,UPDATETIME,YEAR) VALUES(NEW.USERID,NEW.OPTUSERDN,NEW.ACCESSTIME,'2022'); END
;;
DELIMITER ;
