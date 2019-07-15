INSERT INTO jpt_configmanager
VALUES
	(
		'2c9099126b876582016b884214760001',
		'jykSyncService',
		'是否开启手动同步警员库数据功能',
		'0',
		'2c90905e644957c301644972ac200003',
		'rkkyjyk',
		'0',
		'',
		'20190624145240437',
		'20190624145240437',
		'',
		'ffffffffffffffffffffffffffffffff',
		'超级管理员',
		'0为不开启、1为开启（开启后在用户新增和编辑界面显示【从警员库同步用户信息】按钮）；',
		'5',
		'0',
		'1'
	);

GO

INSERT INTO jpt_configmanager
VALUES
	(
		'2c9099126b96c724016b96cd40910001',
		'isDepUpdate',
		'是否允许修改机构',
		'0',
		'2c908f3c5b02f4d4015b02f898f90001',
		'userManageConfig',
		'1',
		'',
		'20190627103922166',
		'20190627103922166',
		'',
		'ffffffffffffffffffffffffffffffff',
		'超级管理员',
		'1为允许修改,0为不允许修改',
		'15',
		'0',
		'1'
	);

GO
INSERT INTO jpt_configmanager
VALUES
	(
		'2c9099126b96c724016b96cde6f10002',
		'isJzDepUpdate',
		'是否允许修改兼职机构',
		'0',
		'2c908f3c5b02f4d4015b02f898f90001',
		'userManageConfig',
		'1',
		'',
		'20190627104004849',
		'20190627104004849',
		'',
		'ffffffffffffffffffffffffffffffff',
		'超级管理员',
		'1为允许修改,0为不允许修改',
		'16',
		'0',
		'1'
	);
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jbase_hotspotMenu]') AND type IN ('U'))
	DROP TABLE [dbo].[jbase_hotspotMenu];
GO

CREATE TABLE [dbo].[jbase_hotspotMenu] (
  [id] varchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [module] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [menuCode] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [menuName] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int NULL,
  [userId] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
	PRIMARY KEY CLUSTERED ([id])
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
);
GO
ALTER TABLE [dbo].[jpt_admins] ADD [kuaisouweizhi] int NOT NULL DEFAULT 0
GO



INSERT INTO jpt_configmanager
VALUES
	(
		'2c9099106b97d5f0016b97eada130003',
		'CasConfig',
		'CAS与统一平台服务配置',
		'1',
		'2c9092115ccd7aa8015ccd8dd36c0002',
		'seniorSetting',
		'',
		'',
		'20190627155119315',
		'20190702130910153',
		'',
		'ffffffffffffffffffffffffffffffff',
		'超级管理员',
		'',
		'18',
		'0',
		'1'
	);

INSERT INTO jpt_configmanager
VALUES
	(
		'2c9099106b97d5f0016b97eb62da0004',
		'isOpenCAS',
		'是否开启与CAS对接',
		'0',
		'2c9099106b97d5f0016b97eada130003',
		'CasConfig',
		'0',
		'',
		'20190627155154329',
		'20190702132148213',
		'',
		'ffffffffffffffffffffffffffffffff',
		'超级管理员',
		'0为不开启 1为开启 默认为不开启',
		'1',
		'0',
		'1'
	);

	INSERT INTO jpt_configmanager
VALUES
	(
		'2c9099106baafdbf016bab1c9d680001',
		'UPMSAppCode',
		'警证通在UPMS中的权限字符串',
		'0',
		'2c9099106b97d5f0016b97eada130003',
		'CasConfig',
		'PCS',
		'',
		'20190701091827685',
		'20190702131119095',
		'1',
		'ffffffffffffffffffffffffffffffff',
		'超级管理员',
		'此配置为警证通在统一管理平台中的权限字符串，无特殊情况不需要修改此配置值',
		'2',
		'0',
		'1'
	);
INSERT INTO jpt_configmanager
VALUES
	(
		'2c9099106baafdbf016bab2aec470002',
		'UPMSApplicationPermissiontest',
		'UPMS获取权限接口地址',
		'0',
		'2c9099106b97d5f0016b97eada130003',
		'CasConfig',
		'',
		'',
		'20190701093405383',
		'20190702131645278',
		'',
		'ffffffffffffffffffffffffffffffff',
		'超级管理员',
		'获取权限接口地址，根据现场地址配置即可，格式如：http://[ip]:[port]/rest/permissions/applicationPermissiontest/',
		'3',
		'0',
		'1'
	);

INSERT INTO jpt_configmanager
VALUES
	(
		'2c9099106baafdbf016bab2dc82f0003',
		'UPMSInterfaceVersion',
		'UPMS接口版本号',
		'0',
		'2c9099106b97d5f0016b97eada130003',
		'CasConfig',
		'v1',
		'',
		'20190701093712750',
		'20190702131533433',
		'',
		'ffffffffffffffffffffffffffffffff',
		'超级管理员',
		'此配置为统一管理平台接口版本号，默认值为v1,如需需改，配置时根据现场接口版本配置即可',
		'4',
		'0',
		'1'
	);


-- ----------------------------
-- Table structure for jbase_wireless_devicesynchlog
-- ----------------------------

CREATE TABLE [dbo].[jbase_wireless_devicesynchlog] (
[id] varchar(32) NOT NULL ,
[name] varchar(50) NULL ,
[idCard] varchar(32) NULL ,
[jinghao] varchar(32) NULL ,
[phoneNum] varchar(50) NULL ,
[deviceNum] varchar(50) NULL ,
[errMsg] varchar(1200) NULL ,
[status] int NULL ,
[createTime] varchar(50) NULL ,
[optUserId] varchar(50) NULL ,
[optUserName] varchar(50) NULL ,
[updateTime] varchar(50) NULL
)


GO

ALTER TABLE [dbo].[jbase_wireless_devicesynchlog] ADD PRIMARY KEY ([id])
GO
