/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.0.120
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 192.168.0.120:3306
 Source Schema         : ScoresData

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 23/05/2019 09:51:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Team
-- ----------------------------
DROP TABLE IF EXISTS `Team`;
CREATE TABLE `Team`  (
  `TeamID` int(11) NOT NULL COMMENT '球队ID',
  `TeamName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球队名字',
  `Leagues` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球队所属联赛',
  `Nationality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球队国籍',
  `Region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球队地区',
  `Players` int(255) NULL DEFAULT NULL COMMENT '球员总数',
  `Hits` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关注度',
  `Comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论数',
  `Overall` int(255) NULL DEFAULT NULL COMMENT '综合能力',
  `Attack` int(255) NULL DEFAULT NULL COMMENT '进攻',
  `Midfield` int(255) NULL DEFAULT NULL COMMENT '中场',
  `Defence` int(255) NULL DEFAULT NULL COMMENT '防守',
  `HomeStadium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主场',
  `RivalTeam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '死敌',
  `InternationalPrestige` int(255) NULL DEFAULT NULL COMMENT '国际声望',
  `DomesticPrestige` int(255) NULL DEFAULT NULL COMMENT '国内声望',
  `TransferBudget` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '转会预算',
  `StartingXIAverageAge` float(255, 0) NULL DEFAULT NULL COMMENT '首发平均年龄',
  `WholeTeamAverageAge` float(255, 0) NULL DEFAULT NULL COMMENT '全队平均年龄',
  `Captain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '队长',
  `ShortFreeKick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任意球',
  `LongFreeKick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '远距任意球',
  `LeftShortFreeKick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '左路任意球',
  `RightShortFreeKick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '右路任意球',
  `Penalties` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '点球',
  `LeftCorner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '左角球',
  `RightCorner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '右脚球',
  `DefensiveStyle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '战术-防守-防守风格',
  `DefensiveTeamWidth` int(11) NULL DEFAULT NULL COMMENT '战术-防守-阵型宽度',
  `DefensiveDepth` int(255) NULL DEFAULT NULL COMMENT '战术-防守-深度',
  `OffensiveStyle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '战术-进攻-进攻风格',
  `OffensiveWidth` int(11) NULL DEFAULT NULL COMMENT '战术-进攻-宽度',
  `PlayersInBox` int(255) NULL DEFAULT NULL COMMENT '战术-进攻-禁区内球员',
  `OffensiveCorners` int(255) NULL DEFAULT NULL COMMENT '战术-进攻-角球',
  `OffensiveFreeKicks` int(255) NULL DEFAULT NULL COMMENT '战术-进攻-任意球',
  `BuildSpeedNumber` int(11) NULL DEFAULT NULL COMMENT '组织攻势-速度-数字',
  `BuildSpeedString` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织攻势-速度-字符串',
  `BuildDribblingNumber` int(255) NULL DEFAULT NULL COMMENT '组织攻势-带球',
  `BuildDribblingString` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织攻势-带球',
  `BuildPassingNumber` int(11) NULL DEFAULT NULL COMMENT '组织攻势-传球',
  `BuildPassingString` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织攻势-传球',
  `BuildPositioning` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织攻势-站位',
  `CreationPassingNumber` int(11) NULL DEFAULT NULL COMMENT '创造机会-传球',
  `CreationPassingString` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创造机会-传球',
  `CreationCrossingNumber` int(11) NULL DEFAULT NULL COMMENT '创造机会-横传',
  `CreationCrossingString` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创造机会-横传',
  `CreationShootingNumber` int(11) NULL DEFAULT NULL COMMENT '创造机会-射门',
  `CreationShootingString` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创造机会-射门',
  `CreationPositioning` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创造机会-站位',
  `DefencePressureNumber` int(11) NULL DEFAULT NULL COMMENT '防守-压迫位置',
  `DefencePressureString` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防守-压迫位置',
  `DefenceAggressionNumber` int(11) NULL DEFAULT NULL COMMENT '防守-积极性',
  `DefenceAggressionString` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防守-积极性',
  `DefenceTeamWidthNumber` int(11) NULL DEFAULT NULL COMMENT '防守-阵型宽度',
  `DefenceTeamWidthString` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防守-阵型宽度',
  `DefenderLine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防守-后防线',
  `AddTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '添加本条记录的时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
