/*
Navicat MySQL Data Transfer

Source Server         : work
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : wallpaper

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2021-07-16 15:09:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bigimage`
-- ----------------------------
DROP TABLE IF EXISTS `bigimage`;
CREATE TABLE `bigimage` (
  `bigImageId` varchar(255) NOT NULL,
  `bigImageAuthor` varchar(255) DEFAULT NULL,
  `bigImageSrc` varchar(255) DEFAULT NULL,
  `bigImageName` varchar(255) DEFAULT NULL,
  `bigImageDeleteState` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`bigImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bigimage
-- ----------------------------
INSERT INTO `bigimage` VALUES ('162225288825147392', '大坏蛋', '/images/bigImages/162225288825147392.jpeg', 'RE046.jpg', '0');
INSERT INTO `bigimage` VALUES ('162225299386404864', '大坏蛋', '/images/bigImages/162225299386404864.jpeg', 'RE047.jpg', '1');
INSERT INTO `bigimage` VALUES ('162225306650939392', '大坏蛋', '/images/bigImages/162225306650939392.jpeg', 'RE049.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298111094558720', '叶凌云', '/images/bigImages/162298111094558720.jpeg', 'Rog001.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298146800668672', '叶凌云', '/images/bigImages/162298146800668672.jpeg', 'Rog002.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298178144702464', '叶凌云', '/images/bigImages/162298178144702464.jpeg', 'Rog003.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298207886512128', '叶凌云', '/images/bigImages/162298207886512128.jpeg', 'Rog004.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298237582184448', '叶凌云', '/images/bigImages/162298237582184448.jpeg', 'Rog005.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298269052047360', '叶凌云', '/images/bigImages/162298269052047360.jpeg', 'Rog006.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298301574680576', '叶凌云', '/images/bigImages/162298301574680576.jpeg', 'Rog007.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298332809662464', '叶凌云', '/images/bigImages/162298332809662464.jpeg', 'Rog008.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298361603559424', '叶凌云', '/images/bigImages/162298361603559424.jpeg', 'Rog009.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298393375412224', '叶凌云', '/images/bigImages/162298393375412224.jpeg', 'Rog010.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298425797382144', '叶凌云', '/images/bigImages/162298425797382144.jpeg', 'Rog011.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298458877857792', '叶凌云', '/images/bigImages/162298458877857792.jpeg', 'Rog012.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298495196336128', '叶凌云', '/images/bigImages/162298495196336128.jpeg', 'Rog013.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298513236037632', '叶凌云', '/images/bigImages/162298513236037632.jpeg', 'Rog014.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298530684342272', '叶凌云', '/images/bigImages/162298530684342272.jpeg', 'Rog015.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298563982921728', '叶凌云', '/images/bigImages/162298563982921728.jpeg', 'Rog016.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298598531403776', '叶凌云', '/images/bigImages/162298598531403776.jpeg', 'Rog017.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298636154310656', '叶凌云', '/images/bigImages/162298636154310656.jpeg', 'Rog018.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298670551797760', '叶凌云', '/images/bigImages/162298670551797760.jpeg', 'Rog019.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298703426752512', '叶凌云', '/images/bigImages/162298703426752512.jpeg', 'Rog020.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298735626424320', '叶凌云', '/images/bigImages/162298735626424320.jpeg', 'Rog021.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298768941780992', '叶凌云', '/images/bigImages/162298768941780992.jpeg', 'Rog022.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298800722022400', '叶凌云', '/images/bigImages/162298800722022400.jpeg', 'Rog023.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298830648381440', '叶凌云', '/images/bigImages/162298830648381440.jpeg', 'Rog024.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298864840347648', '叶凌云', '/images/bigImages/162298864840347648.jpeg', 'Rog025.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298892937990144', '叶凌云', '/images/bigImages/162298892937990144.jpeg', 'Rog026.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298925133467648', '叶凌云', '/images/bigImages/162298925133467648.jpeg', 'Rog027.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298928530853888', '叶凌云', '/images/bigImages/162298928530853888.jpeg', 'Rog028.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298960495644672', '叶凌云', '/images/bigImages/162298960495644672.jpeg', 'Rog029.jpg', '1');
INSERT INTO `bigimage` VALUES ('162298963855282176', '叶凌云', '/images/bigImages/162298963855282176.jpeg', 'Rog030.jpg', '1');
INSERT INTO `bigimage` VALUES ('162323101156249600', '岳大放', '/images/bigImages/162323101156249600.jpeg', 'KB001.jpg', '1');
INSERT INTO `bigimage` VALUES ('162323135163666432', '岳大放', '/images/bigImages/162323135163666432.jpeg', 'KB002.jpg', '1');
INSERT INTO `bigimage` VALUES ('162323153094316032', '岳大放', '/images/bigImages/162323153094316032.jpeg', 'KB003.jpg', '1');
INSERT INTO `bigimage` VALUES ('162323171029159936', '岳大放', '/images/bigImages/162323171029159936.jpeg', 'KB004.jpg', '1');
INSERT INTO `bigimage` VALUES ('162323189203079168', '岳大放', '/images/bigImages/162323189203079168.jpeg', 'KB005.jpg', '1');
INSERT INTO `bigimage` VALUES ('162323219993464832', '岳大放', '/images/bigImages/162323219993464832.jpeg', 'KB006.jpg', '1');
INSERT INTO `bigimage` VALUES ('162323237471129600', '岳大放', '/images/bigImages/162323237471129600.jpeg', 'KB007.jpg', '1');
INSERT INTO `bigimage` VALUES ('162323254793605120', '岳大放', '/images/bigImages/162323254793605120.jpeg', 'KB008.jpg', '1');
INSERT INTO `bigimage` VALUES ('162323272871055360', '岳大放', '/images/bigImages/162323272871055360.jpeg', 'KB009.jpg', '1');
INSERT INTO `bigimage` VALUES ('162323305544683520', '岳大放', '/images/bigImages/162323305544683520.jpeg', 'KB010.jpg', '1');
INSERT INTO `bigimage` VALUES ('162324770564739072', '刘继友', '/images/bigImages/162324770564739072.jpeg', 'aa (30).jpg', '1');
INSERT INTO `bigimage` VALUES ('162325505914310656', '大坏蛋', '/images/bigImages/162325505914310656.jpeg', 'SAO002.jpg', '1');
INSERT INTO `bigimage` VALUES ('162344211876810752', '大坏蛋', '/images/bigImages/162344211876810752.png', 'YLiA014.png', '1');
INSERT INTO `bigimage` VALUES ('162346200484417536', '大坏蛋', '/images/bigImages/162346200484417536.jpeg', 'DITF010.jpg', '1');
INSERT INTO `bigimage` VALUES ('162953863350063104', '大坏蛋', '/images/bigImages/162953863350063104.jpeg', '1624414844986.jpeg', '1');
INSERT INTO `bigimage` VALUES ('162958832350400512', '刘继友', '/images/bigImages/162958832350400512.jpeg', 'Arknights_H067.jpg', '1');
INSERT INTO `bigimage` VALUES ('162966463236411392', '大坏蛋', '/images/bigImages/162966463236411392.jpeg', 'Rog053.jpg', '0');
INSERT INTO `bigimage` VALUES ('165334727572721664', '大坏蛋', '/images/bigImages/165334727572721664.png', 'YM078.png', '1');

-- ----------------------------
-- Table structure for `imagebigtable`
-- ----------------------------
DROP TABLE IF EXISTS `imagebigtable`;
CREATE TABLE `imagebigtable` (
  `imageBigId` varchar(255) NOT NULL,
  `imageAuthor` varchar(50) NOT NULL DEFAULT '无名氏',
  `imageBigName` varchar(255) DEFAULT NULL,
  `imageBigSrc` varchar(255) DEFAULT NULL,
  `imageTags` varchar(255) DEFAULT NULL,
  `imageSize` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`imageBigId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagebigtable
-- ----------------------------
INSERT INTO `imagebigtable` VALUES ('147185229906448384', '叶凌云', 'Tu001', 'images/BigImage/147185229906448384.jpg', '青春猪头少年不会遇见兔女郎学姐#兔女郎#二次元动漫', '3.74MB');
INSERT INTO `imagebigtable` VALUES ('147212357083467776', '叶凌云', 'HI3rd007', 'images/BigImage/147212357083467776.jpg', '崩坏三#八重樱#动漫#二次元#', '1.64MB');
INSERT INTO `imagebigtable` VALUES ('147441916382941184', '叶凌云', '原神_H069', 'images/BigImage/147441916382941184.jpg', '原神#游戏#动漫#二次元#巴啦啦#', '1.93MB');
INSERT INTO `imagebigtable` VALUES ('147443632276901888', '叶凌云', 'YLiA014', 'images/BigImage/147443632276901888.png', '四月是你的谎言#动漫#二次元#宫园薰#', '1.69MB');
INSERT INTO `imagebigtable` VALUES ('147450634029895680', '叶凌云', 'Arknights_H098', 'images/BigImage/147450634029895680.jpg', '明日方舟#二次元#游戏#卡牌#', '1.76MB');
INSERT INTO `imagebigtable` VALUES ('147454282763997184', '叶凌云', 'SAO002', 'images/BigImage/147454282763997184.jpg', '刀剑神域#亚斯娜#动漫#二次元#', '0.78MB');
INSERT INTO `imagebigtable` VALUES ('147459023069908992', '叶凌云', 'DITF005', 'images/BigImage/147459023069908992.jpg', '零二#国家队#动漫#二次元#', '2.17MB');
INSERT INTO `imagebigtable` VALUES ('147510347966844928', '叶凌云', 'HI3rd003', 'images/BigImage/147510347966844928.jpg', '崩坏三#二次元#游戏#动作#', '1.79MB');
INSERT INTO `imagebigtable` VALUES ('147510369278103552', '叶凌云', 'HI3rd004', 'images/BigImage/147510369278103552.jpg', '崩坏三#二次元#游戏#动作#', '1.39MB');
INSERT INTO `imagebigtable` VALUES ('147510383693926400', '叶凌云', 'HI3rd005', 'images/BigImage/147510383693926400.jpg', '崩坏三#二次元#游戏#动作#', '1.52MB');
INSERT INTO `imagebigtable` VALUES ('147510396599799808', '叶凌云', 'HI3rd006', 'images/BigImage/147510396599799808.jpg', '崩坏三#二次元#游戏#动作#', '1.70MB');
INSERT INTO `imagebigtable` VALUES ('147510409434370048', '叶凌云', 'HI3rd007', 'images/BigImage/147510409434370048.jpg', '崩坏三#二次元#游戏#动作#', '1.65MB');
INSERT INTO `imagebigtable` VALUES ('147510421820149760', '叶凌云', 'HI3rd008', 'images/BigImage/147510421820149760.jpg', '崩坏三#二次元#游戏#动作#', '1.75MB');
INSERT INTO `imagebigtable` VALUES ('147510435099316224', '叶凌云', 'HI3rd009', 'images/BigImage/147510435099316224.jpg', '崩坏三#二次元#游戏#动作#', '1.44MB');
INSERT INTO `imagebigtable` VALUES ('147510457983438848', '叶凌云', 'HI3rd010', 'images/BigImage/147510457983438848.jpg', '崩坏三#二次元#游戏#动作#', '1.28MB');
INSERT INTO `imagebigtable` VALUES ('147510471178719232', '叶凌云', 'HI3rd011', 'images/BigImage/147510471178719232.jpg', '崩坏三#二次元#游戏#动作#', '2.07MB');
INSERT INTO `imagebigtable` VALUES ('147510485040893952', '叶凌云', 'HI3rd012', 'images/BigImage/147510485040893952.jpg', '崩坏三#二次元#游戏#动作#', '1.90MB');
INSERT INTO `imagebigtable` VALUES ('147510498567524352', '叶凌云', 'HI3rd013', 'images/BigImage/147510498567524352.jpg', '崩坏三#二次元#游戏#动作#', '1.08MB');
INSERT INTO `imagebigtable` VALUES ('147510511410483200', '叶凌云', 'HI3rd014', 'images/BigImage/147510511410483200.jpg', '崩坏三#二次元#游戏#动作#', '1.72MB');
INSERT INTO `imagebigtable` VALUES ('147510524945502208', '叶凌云', 'HI3rd015', 'images/BigImage/147510524945502208.jpg', '崩坏三#二次元#游戏#动作#', '1.85MB');
INSERT INTO `imagebigtable` VALUES ('147510538379857920', '叶凌云', 'HI3rd016', 'images/BigImage/147510538379857920.jpg', '崩坏三#二次元#游戏#动作#', '1.82MB');
INSERT INTO `imagebigtable` VALUES ('147510552124592128', '叶凌云', 'HI3rd017', 'images/BigImage/147510552124592128.jpg', '崩坏三#二次元#游戏#动作#', '1.58MB');
INSERT INTO `imagebigtable` VALUES ('147510565277929472', '叶凌云', 'HI3rd018', 'images/BigImage/147510565277929472.jpg', '崩坏三#二次元#游戏#动作#', '1.49MB');
INSERT INTO `imagebigtable` VALUES ('147510578515152896', '叶凌云', 'HI3rd019', 'images/BigImage/147510578515152896.jpg', '崩坏三#二次元#游戏#动作#', '1.64MB');
INSERT INTO `imagebigtable` VALUES ('147510591584604160', '叶凌云', 'HI3rd020', 'images/BigImage/147510591584604160.jpg', '崩坏三#二次元#游戏#动作#', '1.98MB');
INSERT INTO `imagebigtable` VALUES ('147510605081874432', '叶凌云', 'HI3rd021', 'images/BigImage/147510605081874432.jpg', '崩坏三#二次元#游戏#动作#', '1.70MB');
INSERT INTO `imagebigtable` VALUES ('147510618725945344', '叶凌云', 'HI3rd022', 'images/BigImage/147510618725945344.jpg', '崩坏三#二次元#游戏#动作#', '1.81MB');
INSERT INTO `imagebigtable` VALUES ('147510631988334592', '叶凌云', 'HI3rd023', 'images/BigImage/147510631988334592.jpg', '崩坏三#二次元#游戏#动作#', '1.56MB');
INSERT INTO `imagebigtable` VALUES ('147510645187809280', '叶凌云', 'HI3rd024', 'images/BigImage/147510645187809280.jpg', '崩坏三#二次元#游戏#动作#', '1.75MB');
INSERT INTO `imagebigtable` VALUES ('147510658588610560', '叶凌云', 'HI3rd025', 'images/BigImage/147510658588610560.jpg', '崩坏三#二次元#游戏#动作#', '1.63MB');
INSERT INTO `imagebigtable` VALUES ('147510672467562496', '叶凌云', 'HI3rd026', 'images/BigImage/147510672467562496.jpg', '崩坏三#二次元#游戏#动作#', '1.57MB');
INSERT INTO `imagebigtable` VALUES ('147510686396846080', '叶凌云', 'HI3rd027', 'images/BigImage/147510686396846080.jpg', '崩坏三#二次元#游戏#动作#', '1.47MB');
INSERT INTO `imagebigtable` VALUES ('147510699294330880', '叶凌云', 'HI3rd028', 'images/BigImage/147510699294330880.jpg', '崩坏三#二次元#游戏#动作#', '1.61MB');
INSERT INTO `imagebigtable` VALUES ('147510712628023296', '叶凌云', 'HI3rd029', 'images/BigImage/147510712628023296.jpg', '崩坏三#二次元#游戏#动作#', '1.91MB');
INSERT INTO `imagebigtable` VALUES ('147510725944938496', '叶凌云', 'HI3rd030', 'images/BigImage/147510725944938496.jpg', '崩坏三#二次元#游戏#动作#', '1.54MB');
INSERT INTO `imagebigtable` VALUES ('147510739597398016', '叶凌云', 'HI3rd031', 'images/BigImage/147510739597398016.jpg', '崩坏三#二次元#游戏#动作#', '1.41MB');
INSERT INTO `imagebigtable` VALUES ('147510752222253056', '叶凌云', 'HI3rd032', 'images/BigImage/147510752222253056.jpg', '崩坏三#二次元#游戏#动作#', '1.54MB');
INSERT INTO `imagebigtable` VALUES ('147526348401938432', '叶凌云', 'SAO009', 'images/BigImage/147526348401938432.jpg', '刀剑神域#亚斯娜#结城明日奈#动漫#二次元#', '1.04MB');
INSERT INTO `imagebigtable` VALUES ('160985265387737088', '叶凌云', 'RE012', 'images/BigImage/160985265387737088.jpg', '', '1.22MB');
INSERT INTO `imagebigtable` VALUES ('160985346681737216', '叶凌云', 'RE012', 'images/BigImage/160985346681737216.jpg', '艾米利亚#', '1.22MB');
INSERT INTO `imagebigtable` VALUES ('160985924405170176', '叶凌云', 'RE012', 'images/BigImage/160985924405170176.jpg', '', '1.22MB');

-- ----------------------------
-- Table structure for `imagedata`
-- ----------------------------
DROP TABLE IF EXISTS `imagedata`;
CREATE TABLE `imagedata` (
  `imageId` varchar(255) NOT NULL DEFAULT '',
  `imageResolution` varchar(255) DEFAULT NULL,
  `imageSize` varchar(255) DEFAULT NULL,
  `imageLike` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagedata
-- ----------------------------
INSERT INTO `imagedata` VALUES ('162225288825147392', '5870 * 4081', '2.78MB', '3');
INSERT INTO `imagedata` VALUES ('162225299386404864', '4133 * 5845', '2.03MB', '0');
INSERT INTO `imagedata` VALUES ('162225306650939392', '4600 * 4600', '1.71MB', '3');
INSERT INTO `imagedata` VALUES ('162298111094558720', '3840 * 2160', '1.82MB', '0');
INSERT INTO `imagedata` VALUES ('162298146800668672', '3840 * 2160', '1.92MB', '0');
INSERT INTO `imagedata` VALUES ('162298178144702464', '3840 * 2160', '1.01MB', '0');
INSERT INTO `imagedata` VALUES ('162298207886512128', '3840 * 2160', '1.87MB', '0');
INSERT INTO `imagedata` VALUES ('162298237582184448', '3840 * 2160', '2.00MB', '0');
INSERT INTO `imagedata` VALUES ('162298269052047360', '3840 * 2160', '2.07MB', '0');
INSERT INTO `imagedata` VALUES ('162298301574680576', '3840 * 2160', '1.66MB', '2');
INSERT INTO `imagedata` VALUES ('162298332809662464', '3840 * 2160', '0.65MB', '1');
INSERT INTO `imagedata` VALUES ('162298361603559424', '3840 * 2160', '1.80MB', '0');
INSERT INTO `imagedata` VALUES ('162298393375412224', '3840 * 2160', '1.81MB', '0');
INSERT INTO `imagedata` VALUES ('162298425797382144', '3840 * 2160', '1.91MB', '0');
INSERT INTO `imagedata` VALUES ('162298458877857792', '3840 * 2160', '1.94MB', '0');
INSERT INTO `imagedata` VALUES ('162298495196336128', '3840 * 2160', '1.58MB', '0');
INSERT INTO `imagedata` VALUES ('162298513236037632', '3840 * 2160', '1.26MB', '0');
INSERT INTO `imagedata` VALUES ('162298530684342272', '3840 * 2160', '1.88MB', '0');
INSERT INTO `imagedata` VALUES ('162298563982921728', '3840 * 2160', '1.80MB', '0');
INSERT INTO `imagedata` VALUES ('162298598531403776', '3840 * 2160', '3.34MB', '0');
INSERT INTO `imagedata` VALUES ('162298636154310656', '3840 * 2160', '2.67MB', '0');
INSERT INTO `imagedata` VALUES ('162298670551797760', '3840 * 2160', '1.82MB', '0');
INSERT INTO `imagedata` VALUES ('162298703426752512', '3840 * 2160', '2.22MB', '0');
INSERT INTO `imagedata` VALUES ('162298735626424320', '3840 * 2160', '2.66MB', '1');
INSERT INTO `imagedata` VALUES ('162298768941780992', '3840 * 2160', '1.98MB', '0');
INSERT INTO `imagedata` VALUES ('162298800722022400', '3840 * 2160', '0.87MB', '0');
INSERT INTO `imagedata` VALUES ('162298830648381440', '3840 * 2160', '3.90MB', '0');
INSERT INTO `imagedata` VALUES ('162298864840347648', '3840 * 2160', '0.45MB', '0');
INSERT INTO `imagedata` VALUES ('162298892937990144', '3840 * 2160', '1.96MB', '0');
INSERT INTO `imagedata` VALUES ('162298925133467648', '3840 * 2160', '2.44MB', '1');
INSERT INTO `imagedata` VALUES ('162298928530853888', '3840 * 2160', '1.93MB', '0');
INSERT INTO `imagedata` VALUES ('162298960495644672', '3840 * 2160', '2.04MB', '0');
INSERT INTO `imagedata` VALUES ('162298963855282176', '3840 * 2160', '2.79MB', '0');
INSERT INTO `imagedata` VALUES ('162323101156249600', '3840 * 2160', '1.95MB', '0');
INSERT INTO `imagedata` VALUES ('162323135163666432', '3840 * 2160', '1.81MB', '3');
INSERT INTO `imagedata` VALUES ('162323153094316032', '3840 * 2160', '1.86MB', '0');
INSERT INTO `imagedata` VALUES ('162323171029159936', '3840 * 2160', '2.68MB', '0');
INSERT INTO `imagedata` VALUES ('162323189203079168', '3840 * 2160', '1.80MB', '0');
INSERT INTO `imagedata` VALUES ('162323219993464832', '3840 * 2160', '2.13MB', '0');
INSERT INTO `imagedata` VALUES ('162323237471129600', '3840 * 2160', '1.71MB', '0');
INSERT INTO `imagedata` VALUES ('162323254793605120', '3840 * 2160', '1.70MB', '0');
INSERT INTO `imagedata` VALUES ('162323272871055360', '3840 * 2160', '2.01MB', '0');
INSERT INTO `imagedata` VALUES ('162323305544683520', '3840 * 2160', '2.09MB', '1');
INSERT INTO `imagedata` VALUES ('162324770564739072', '3840 * 2160', '1.10MB', '4');
INSERT INTO `imagedata` VALUES ('162325505914310656', '3840 * 2160', '0.78MB', '2');
INSERT INTO `imagedata` VALUES ('162344211876810752', '1798 * 1200', '1.69MB', '1');
INSERT INTO `imagedata` VALUES ('162346200484417536', '1090 * 1580', '0.48MB', '1');
INSERT INTO `imagedata` VALUES ('162953863350063104', '3840 * 2160', '1.58MB', '5');
INSERT INTO `imagedata` VALUES ('162958832350400512', '3840 * 2160', '1.91MB', '1');
INSERT INTO `imagedata` VALUES ('162966463236411392', '3840 * 2160', '1.03MB', '0');
INSERT INTO `imagedata` VALUES ('165334727572721664', '3840 * 2160', '3.56MB', '0');

-- ----------------------------
-- Table structure for `imagedate`
-- ----------------------------
DROP TABLE IF EXISTS `imagedate`;
CREATE TABLE `imagedate` (
  `imageId` varchar(255) NOT NULL DEFAULT '',
  `imageUpDate` datetime DEFAULT NULL,
  `imageDeleteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagedate
-- ----------------------------
INSERT INTO `imagedate` VALUES ('162225288825147392', '2021-06-22 08:29:53', '2021-06-24 09:34:10');
INSERT INTO `imagedate` VALUES ('162225299386404864', '2021-06-22 08:29:55', '2021-06-22 08:46:09');
INSERT INTO `imagedate` VALUES ('162225306650939392', '2021-06-22 08:29:57', null);
INSERT INTO `imagedate` VALUES ('162298111094558720', '2021-06-22 13:19:22', null);
INSERT INTO `imagedate` VALUES ('162298146800668672', '2021-06-22 13:19:29', '2021-06-22 15:11:51');
INSERT INTO `imagedate` VALUES ('162298178144702464', '2021-06-22 13:19:36', null);
INSERT INTO `imagedate` VALUES ('162298207886512128', '2021-06-22 13:19:44', null);
INSERT INTO `imagedate` VALUES ('162298237582184448', '2021-06-22 13:19:51', null);
INSERT INTO `imagedate` VALUES ('162298269052047360', '2021-06-22 13:19:59', null);
INSERT INTO `imagedate` VALUES ('162298301574680576', '2021-06-22 13:20:06', null);
INSERT INTO `imagedate` VALUES ('162298332809662464', '2021-06-22 13:20:13', null);
INSERT INTO `imagedate` VALUES ('162298361603559424', '2021-06-22 13:20:21', null);
INSERT INTO `imagedate` VALUES ('162298393375412224', '2021-06-22 13:20:28', null);
INSERT INTO `imagedate` VALUES ('162298425797382144', '2021-06-22 13:20:36', null);
INSERT INTO `imagedate` VALUES ('162298458877857792', '2021-06-22 13:20:45', null);
INSERT INTO `imagedate` VALUES ('162298495196336128', '2021-06-22 13:20:49', null);
INSERT INTO `imagedate` VALUES ('162298513236037632', '2021-06-22 13:20:53', null);
INSERT INTO `imagedate` VALUES ('162298530684342272', '2021-06-22 13:21:01', null);
INSERT INTO `imagedate` VALUES ('162298563982921728', '2021-06-22 13:21:10', null);
INSERT INTO `imagedate` VALUES ('162298598531403776', '2021-06-22 13:21:19', null);
INSERT INTO `imagedate` VALUES ('162298636154310656', '2021-06-22 13:21:27', null);
INSERT INTO `imagedate` VALUES ('162298670551797760', '2021-06-22 13:21:35', null);
INSERT INTO `imagedate` VALUES ('162298703426752512', '2021-06-22 13:21:42', null);
INSERT INTO `imagedate` VALUES ('162298735626424320', '2021-06-22 13:21:50', null);
INSERT INTO `imagedate` VALUES ('162298768941780992', '2021-06-22 13:21:58', null);
INSERT INTO `imagedate` VALUES ('162298800722022400', '2021-06-22 13:22:05', null);
INSERT INTO `imagedate` VALUES ('162298830648381440', '2021-06-22 13:22:13', null);
INSERT INTO `imagedate` VALUES ('162298864840347648', '2021-06-22 13:22:20', null);
INSERT INTO `imagedate` VALUES ('162298892937990144', '2021-06-22 13:22:28', null);
INSERT INTO `imagedate` VALUES ('162298925133467648', '2021-06-22 13:22:28', null);
INSERT INTO `imagedate` VALUES ('162298928530853888', '2021-06-22 13:22:36', null);
INSERT INTO `imagedate` VALUES ('162298960495644672', '2021-06-22 13:22:37', null);
INSERT INTO `imagedate` VALUES ('162298963855282176', '2021-06-22 13:22:38', null);
INSERT INTO `imagedate` VALUES ('162323101156249600', '2021-06-22 14:58:40', null);
INSERT INTO `imagedate` VALUES ('162323135163666432', '2021-06-22 14:58:44', null);
INSERT INTO `imagedate` VALUES ('162323153094316032', '2021-06-22 14:58:48', null);
INSERT INTO `imagedate` VALUES ('162323171029159936', '2021-06-22 14:58:53', null);
INSERT INTO `imagedate` VALUES ('162323189203079168', '2021-06-22 14:59:00', null);
INSERT INTO `imagedate` VALUES ('162323219993464832', '2021-06-22 14:59:04', null);
INSERT INTO `imagedate` VALUES ('162323237471129600', '2021-06-22 14:59:08', null);
INSERT INTO `imagedate` VALUES ('162323254793605120', '2021-06-22 14:59:12', null);
INSERT INTO `imagedate` VALUES ('162323272871055360', '2021-06-22 14:59:20', null);
INSERT INTO `imagedate` VALUES ('162323305544683520', '2021-06-22 14:59:25', null);
INSERT INTO `imagedate` VALUES ('162324770564739072', '2021-06-22 15:05:13', null);
INSERT INTO `imagedate` VALUES ('162325505914310656', '2021-06-22 15:08:06', null);
INSERT INTO `imagedate` VALUES ('162344211876810752', '2021-06-22 16:22:27', null);
INSERT INTO `imagedate` VALUES ('162346200484417536', '2021-06-22 16:30:20', null);
INSERT INTO `imagedate` VALUES ('162953863350063104', '2021-06-24 08:45:02', null);
INSERT INTO `imagedate` VALUES ('162958832350400512', '2021-06-24 09:04:46', null);
INSERT INTO `imagedate` VALUES ('162966463236411392', '2021-06-24 09:35:08', '2021-06-30 22:35:57');
INSERT INTO `imagedate` VALUES ('165334727572721664', '2021-06-30 22:25:41', null);

-- ----------------------------
-- Table structure for `imagemessage`
-- ----------------------------
DROP TABLE IF EXISTS `imagemessage`;
CREATE TABLE `imagemessage` (
  `imageId` varchar(255) NOT NULL DEFAULT '',
  `imageAnimeName` varchar(255) DEFAULT NULL,
  `imageRole` varchar(255) DEFAULT NULL,
  `imageTags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagemessage
-- ----------------------------
INSERT INTO `imagemessage` VALUES ('162225288825147392', '从零开始的异世界', '艾米利亚', '艾米利亚#动漫#女神');
INSERT INTO `imagemessage` VALUES ('162225299386404864', '从零开始的异世界', '艾米利亚', '艾米利亚#动漫#女神');
INSERT INTO `imagemessage` VALUES ('162225306650939392', '从零开始的异世界', '艾米利亚', '艾米利亚#动漫#女神');
INSERT INTO `imagemessage` VALUES ('162298111094558720', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298146800668672', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298178144702464', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298207886512128', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298237582184448', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298269052047360', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298301574680576', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298332809662464', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298361603559424', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298393375412224', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298425797382144', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298458877857792', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298495196336128', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298513236037632', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298530684342272', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298563982921728', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298598531403776', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298636154310656', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298670551797760', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298703426752512', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298735626424320', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298768941780992', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298800722022400', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298830648381440', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298864840347648', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298892937990144', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298925133467648', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298928530853888', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298960495644672', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162298963855282176', '败家之眼', '', '败家之眼#logo#');
INSERT INTO `imagemessage` VALUES ('162323101156249600', '风景壁纸', '', '风景#二次元#动漫#唯美#治愈#');
INSERT INTO `imagemessage` VALUES ('162323135163666432', '风景壁纸', '', '风景#二次元#动漫#唯美#治愈#');
INSERT INTO `imagemessage` VALUES ('162323153094316032', '风景壁纸', '', '风景#二次元#动漫#唯美#治愈#');
INSERT INTO `imagemessage` VALUES ('162323171029159936', '风景壁纸', '', '风景#二次元#动漫#唯美#治愈#');
INSERT INTO `imagemessage` VALUES ('162323189203079168', '风景壁纸', '', '风景#二次元#动漫#唯美#治愈#');
INSERT INTO `imagemessage` VALUES ('162323219993464832', '风景壁纸', '', '风景#二次元#动漫#唯美#治愈#');
INSERT INTO `imagemessage` VALUES ('162323237471129600', '风景壁纸', '', '风景#二次元#动漫#唯美#治愈#');
INSERT INTO `imagemessage` VALUES ('162323254793605120', '风景壁纸', '', '风景#二次元#动漫#唯美#治愈#');
INSERT INTO `imagemessage` VALUES ('162323272871055360', '风景壁纸', '', '风景#二次元#动漫#唯美#治愈#');
INSERT INTO `imagemessage` VALUES ('162323305544683520', '风景壁纸', '', '风景#二次元#动漫#唯美#治愈#');
INSERT INTO `imagemessage` VALUES ('162324770564739072', '鬼灭之刃', '炭治郎', '热血#动漫#伤感#');
INSERT INTO `imagemessage` VALUES ('162325505914310656', '刀剑神域', '亚斯娜', '动漫#女孩#刀剑#');
INSERT INTO `imagemessage` VALUES ('162344211876810752', '四月是你的谎言', '宫园薰', '四谎#动漫#伤感#');
INSERT INTO `imagemessage` VALUES ('162346200484417536', 'DARLING in the FRANXX', '零二', '002#零二#科幻#机战#动漫#');
INSERT INTO `imagemessage` VALUES ('162953863350063104', '碧蓝航线', '', '动漫#女孩#可爱#');
INSERT INTO `imagemessage` VALUES ('162958832350400512', '明日方舟', '', '卡通#游戏#');
INSERT INTO `imagemessage` VALUES ('162966463236411392', '百家之言', '', 'logo#');
INSERT INTO `imagemessage` VALUES ('165334727572721664', '你的名字', '宫水三叶', '动漫#唯美#新海诚#电影#');

-- ----------------------------
-- Table structure for `imagetable`
-- ----------------------------
DROP TABLE IF EXISTS `imagetable`;
CREATE TABLE `imagetable` (
  `imageId` varchar(255) NOT NULL,
  `imageName` varchar(255) NOT NULL,
  `imageSrc` varchar(255) NOT NULL,
  `imageResolution` varchar(50) NOT NULL,
  `imageView` int(11) DEFAULT '0',
  `imageDate` datetime NOT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagetable
-- ----------------------------
INSERT INTO `imagetable` VALUES ('147185229906448384', 'Tu001', 'images/SmallImage/147185229906448384.jpg', '3600 x 2600', '6', '2021-05-14 18:31:27');
INSERT INTO `imagetable` VALUES ('147212357083467776', 'HI3rd007', 'images/SmallImage/147212357083467776.jpg', '3840 x 2160', '4', '2021-05-14 18:31:27');
INSERT INTO `imagetable` VALUES ('147441916382941184', '原神_H069', 'images/SmallImage/147441916382941184.jpg', '3840 x 2160', '2', '2021-05-14 18:31:27');
INSERT INTO `imagetable` VALUES ('147443632276901888', 'YLiA014', 'images/SmallImage/147443632276901888.png', '1798 x 1200', '4', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147450634029895680', 'Arknights_H098', 'images/SmallImage/147450634029895680.jpg', '3840 x 2160', '4', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147454282763997184', 'SAO002', 'images/SmallImage/147454282763997184.jpg', '3840 x 2160', '6', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147459023069908992', 'DITF005', 'images/SmallImage/147459023069908992.jpg', '3018 x 1500', '5', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510347966844928', 'HI3rd003', 'images/SmallImage/147510347966844928.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510369278103552', 'HI3rd004', 'images/SmallImage/147510369278103552.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510383693926400', 'HI3rd005', 'images/SmallImage/147510383693926400.jpg', '3840 x 2160', '1', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510396599799808', 'HI3rd006', 'images/SmallImage/147510396599799808.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510409434370048', 'HI3rd007', 'images/SmallImage/147510409434370048.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510421820149760', 'HI3rd008', 'images/SmallImage/147510421820149760.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510435099316224', 'HI3rd009', 'images/SmallImage/147510435099316224.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510457983438848', 'HI3rd010', 'images/SmallImage/147510457983438848.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510471178719232', 'HI3rd011', 'images/SmallImage/147510471178719232.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510485040893952', 'HI3rd012', 'images/SmallImage/147510485040893952.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510498567524352', 'HI3rd013', 'images/SmallImage/147510498567524352.jpg', '3840 x 2160', '1', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510511410483200', 'HI3rd014', 'images/SmallImage/147510511410483200.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510524945502208', 'HI3rd015', 'images/SmallImage/147510524945502208.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510538379857920', 'HI3rd016', 'images/SmallImage/147510538379857920.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510552124592128', 'HI3rd017', 'images/SmallImage/147510552124592128.jpg', '3840 x 2160', '8', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510565277929472', 'HI3rd018', 'images/SmallImage/147510565277929472.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510578515152896', 'HI3rd019', 'images/SmallImage/147510578515152896.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510591584604160', 'HI3rd020', 'images/SmallImage/147510591584604160.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510605081874432', 'HI3rd021', 'images/SmallImage/147510605081874432.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510618725945344', 'HI3rd022', 'images/SmallImage/147510618725945344.jpg', '3840 x 2160', '1', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510631988334592', 'HI3rd023', 'images/SmallImage/147510631988334592.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510645187809280', 'HI3rd024', 'images/SmallImage/147510645187809280.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510658588610560', 'HI3rd025', 'images/SmallImage/147510658588610560.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510672467562496', 'HI3rd026', 'images/SmallImage/147510672467562496.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510686396846080', 'HI3rd027', 'images/SmallImage/147510686396846080.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510699294330880', 'HI3rd028', 'images/SmallImage/147510699294330880.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510712628023296', 'HI3rd029', 'images/SmallImage/147510712628023296.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510725944938496', 'HI3rd030', 'images/SmallImage/147510725944938496.jpg', '3840 x 2160', '1', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510739597398016', 'HI3rd031', 'images/SmallImage/147510739597398016.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147510752222253056', 'HI3rd032', 'images/SmallImage/147510752222253056.jpg', '3840 x 2160', '0', '2021-05-15 18:31:27');
INSERT INTO `imagetable` VALUES ('147526348401938432', 'SAO009', 'images/SmallImage/147526348401938432.jpg', '4067 x 2664', '0', '2021-05-15 18:31:27');

-- ----------------------------
-- Table structure for `imageuser`
-- ----------------------------
DROP TABLE IF EXISTS `imageuser`;
CREATE TABLE `imageuser` (
  `imageUserId` varchar(255) NOT NULL,
  `imageUserName` varchar(255) DEFAULT NULL,
  `imageUserPassword` varchar(255) NOT NULL,
  PRIMARY KEY (`imageUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imageuser
-- ----------------------------
INSERT INTO `imageuser` VALUES ('0fe957be62ca4aaeb0d8d0458f24df2f', '大坏蛋', '123');
INSERT INTO `imageuser` VALUES ('4502c65dce9811ebb6d7181deaa0da3d', '叶凌云', '123');

-- ----------------------------
-- Table structure for `smimage`
-- ----------------------------
DROP TABLE IF EXISTS `smimage`;
CREATE TABLE `smimage` (
  `smImageId` varchar(255) NOT NULL DEFAULT '0',
  `smImageSrc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`smImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smimage
-- ----------------------------
INSERT INTO `smimage` VALUES ('162225288825147392', '/images/smImages/162225288825147392.jpg');
INSERT INTO `smimage` VALUES ('162225299386404864', '/images/smImages/162225299386404864.jpg');
INSERT INTO `smimage` VALUES ('162225306650939392', '/images/smImages/162225306650939392.jpg');
INSERT INTO `smimage` VALUES ('162298111094558720', '/images/smImages/162298111094558720.jpg');
INSERT INTO `smimage` VALUES ('162298146800668672', '/images/smImages/162298146800668672.jpg');
INSERT INTO `smimage` VALUES ('162298178144702464', '/images/smImages/162298178144702464.jpg');
INSERT INTO `smimage` VALUES ('162298207886512128', '/images/smImages/162298207886512128.jpg');
INSERT INTO `smimage` VALUES ('162298237582184448', '/images/smImages/162298237582184448.jpg');
INSERT INTO `smimage` VALUES ('162298269052047360', '/images/smImages/162298269052047360.jpg');
INSERT INTO `smimage` VALUES ('162298301574680576', '/images/smImages/162298301574680576.jpg');
INSERT INTO `smimage` VALUES ('162298332809662464', '/images/smImages/162298332809662464.jpg');
INSERT INTO `smimage` VALUES ('162298361603559424', '/images/smImages/162298361603559424.jpg');
INSERT INTO `smimage` VALUES ('162298393375412224', '/images/smImages/162298393375412224.jpg');
INSERT INTO `smimage` VALUES ('162298425797382144', '/images/smImages/162298425797382144.jpg');
INSERT INTO `smimage` VALUES ('162298458877857792', '/images/smImages/162298458877857792.jpg');
INSERT INTO `smimage` VALUES ('162298495196336128', '/images/smImages/162298495196336128.jpg');
INSERT INTO `smimage` VALUES ('162298513236037632', '/images/smImages/162298513236037632.jpg');
INSERT INTO `smimage` VALUES ('162298530684342272', '/images/smImages/162298530684342272.jpg');
INSERT INTO `smimage` VALUES ('162298563982921728', '/images/smImages/162298563982921728.jpg');
INSERT INTO `smimage` VALUES ('162298598531403776', '/images/smImages/162298598531403776.jpg');
INSERT INTO `smimage` VALUES ('162298636154310656', '/images/smImages/162298636154310656.jpg');
INSERT INTO `smimage` VALUES ('162298670551797760', '/images/smImages/162298670551797760.jpg');
INSERT INTO `smimage` VALUES ('162298703426752512', '/images/smImages/162298703426752512.jpg');
INSERT INTO `smimage` VALUES ('162298735626424320', '/images/smImages/162298735626424320.jpg');
INSERT INTO `smimage` VALUES ('162298768941780992', '/images/smImages/162298768941780992.jpg');
INSERT INTO `smimage` VALUES ('162298800722022400', '/images/smImages/162298800722022400.jpg');
INSERT INTO `smimage` VALUES ('162298830648381440', '/images/smImages/162298830648381440.jpg');
INSERT INTO `smimage` VALUES ('162298864840347648', '/images/smImages/162298864840347648.jpg');
INSERT INTO `smimage` VALUES ('162298892937990144', '/images/smImages/162298892937990144.jpg');
INSERT INTO `smimage` VALUES ('162298925133467648', '/images/smImages/162298925133467648.jpg');
INSERT INTO `smimage` VALUES ('162298928530853888', '/images/smImages/162298928530853888.jpg');
INSERT INTO `smimage` VALUES ('162298960495644672', '/images/smImages/162298960495644672.jpg');
INSERT INTO `smimage` VALUES ('162298963855282176', '/images/smImages/162298963855282176.jpg');
INSERT INTO `smimage` VALUES ('162323101156249600', '/images/smImages/162323101156249600.jpg');
INSERT INTO `smimage` VALUES ('162323135163666432', '/images/smImages/162323135163666432.jpg');
INSERT INTO `smimage` VALUES ('162323153094316032', '/images/smImages/162323153094316032.jpg');
INSERT INTO `smimage` VALUES ('162323171029159936', '/images/smImages/162323171029159936.jpg');
INSERT INTO `smimage` VALUES ('162323189203079168', '/images/smImages/162323189203079168.jpg');
INSERT INTO `smimage` VALUES ('162323219993464832', '/images/smImages/162323219993464832.jpg');
INSERT INTO `smimage` VALUES ('162323237471129600', '/images/smImages/162323237471129600.jpg');
INSERT INTO `smimage` VALUES ('162323254793605120', '/images/smImages/162323254793605120.jpg');
INSERT INTO `smimage` VALUES ('162323272871055360', '/images/smImages/162323272871055360.jpg');
INSERT INTO `smimage` VALUES ('162323305544683520', '/images/smImages/162323305544683520.jpg');
INSERT INTO `smimage` VALUES ('162324770564739072', '/images/smImages/162324770564739072.jpg');
INSERT INTO `smimage` VALUES ('162325505914310656', '/images/smImages/162325505914310656.jpg');
INSERT INTO `smimage` VALUES ('162344211876810752', '/images/smImages/162344211876810752.jpg');
INSERT INTO `smimage` VALUES ('162346200484417536', '/images/smImages/162346200484417536.jpg');
INSERT INTO `smimage` VALUES ('162953863350063104', '/images/smImages/162953863350063104.jpg');
INSERT INTO `smimage` VALUES ('162958832350400512', '/images/smImages/162958832350400512.jpg');
INSERT INTO `smimage` VALUES ('162966463236411392', '/images/smImages/162966463236411392.jpg');
INSERT INTO `smimage` VALUES ('165334727572721664', '/images/smImages/165334727572721664.jpg');

-- ----------------------------
-- Table structure for `usertoimage`
-- ----------------------------
DROP TABLE IF EXISTS `usertoimage`;
CREATE TABLE `usertoimage` (
  `userAndImage` varchar(255) NOT NULL DEFAULT '',
  `userName` varchar(255) DEFAULT NULL,
  `imageId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userAndImage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertoimage
-- ----------------------------
INSERT INTO `usertoimage` VALUES ('050d7d28ec784b02b3aacb09a765b6f7', '叶凌云', '162953863350063104');
INSERT INTO `usertoimage` VALUES ('0ddaa05a10db40218784b033f019c7d4', '叶凌云', '162323135163666432');
INSERT INTO `usertoimage` VALUES ('194d5e68fb41496baae2bb10ff56b7a0', '大坏蛋', '162344211876810752');
INSERT INTO `usertoimage` VALUES ('2c298f41261d4094bb93a75cf5ff9432', '大坏蛋', '162346200484417536');
INSERT INTO `usertoimage` VALUES ('3528f2cc29b4400697805116fe46c552', '大坏蛋', '162298735626424320');
INSERT INTO `usertoimage` VALUES ('3a41dc7e2acc41d2b49e738d47a7d5ec', '大坏蛋', '162953863350063104');
INSERT INTO `usertoimage` VALUES ('411eda0a755f47248f76a8fe7585ba45', '大坏蛋', '162323135163666432');
INSERT INTO `usertoimage` VALUES ('4807775e05224839a0a45b416984a273', '大坏蛋', '162325505914310656');
INSERT INTO `usertoimage` VALUES ('4bf10c7b70b04cf58b96dbeecf9f934b', '叶凌云', '162298332809662464');
INSERT INTO `usertoimage` VALUES ('4c9e263a30fa4445aaed611d911b76c8', '叶凌云', '162298925133467648');
INSERT INTO `usertoimage` VALUES ('52fad028da324acd802ef85e0991a83e', '叶凌云', '162298301574680576');
INSERT INTO `usertoimage` VALUES ('5c283910681f42569c8587256aa09335', '大坏蛋', '162324770564739072');
INSERT INTO `usertoimage` VALUES ('65dafa02ae32492ea37ac0731a0f981d', '大坏蛋', '162323305544683520');
INSERT INTO `usertoimage` VALUES ('b61b2f1df1f349498177b23b40317137', '叶凌云', '162324770564739072');
INSERT INTO `usertoimage` VALUES ('f1fcbc69122940f28fd691ee9b7719aa', '大坏蛋', '162225288825147392');
