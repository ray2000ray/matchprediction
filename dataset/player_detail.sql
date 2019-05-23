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

 Date: 23/05/2019 09:50:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Player
-- ----------------------------
DROP TABLE IF EXISTS `Player`;
CREATE TABLE `Player`  (
  `PlayerID` int(11) NOT NULL COMMENT '球员ID',
  `PlayerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球员名字',
  `PlayerNameFormat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球员标准名字',
  `Nationality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球员国籍',
  `Positions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球员位置（多个）',
  `TotalStats` int(10) NULL DEFAULT NULL COMMENT '球员总能力',
  `Hits` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关注度',
  `Comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论数',
  `TeamFrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '从哪个球队得到的页面',
  `Age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `Birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生日',
  `BodyHeight` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身高',
  `BodyWeight` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '体重',
  `OverallRating` int(255) NULL DEFAULT NULL COMMENT '综合能力',
  `Potential` int(255) NULL DEFAULT NULL COMMENT '潜力',
  `Value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身价',
  `Wage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '周薪',
  `PreferredFoot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '惯用脚',
  `InternationalReputation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际声誉',
  `WeakFoot` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '逆足能力',
  `SkillMoves` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '花式技巧',
  `WorkRate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '积极性',
  `BodyType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身体模型',
  `RealFace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实脸型',
  `ReleaseClause` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '违约金',
  `FirstTeamID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第一个球队ID',
  `FirstTeamName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第一个球队名字',
  `FirstTeamOverall` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球队综合实力',
  `FirstTeamPosition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球队中所处位置',
  `FirstTeamJerseyNumber` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球衣号',
  `FirstTeamJoined` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '加入球队时间',
  `FirstTeamLoanedFrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租借自',
  `FirstTeamContractValidUntil` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '合同到期时间',
  `SecondTeamID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第二个球队ID',
  `SecondTeamName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第二个球队名字',
  `SecondTeamOverall` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球队综合实力',
  `SecondTeamPosition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球队中所处位置',
  `SecondTeamJerseyNumber` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球衣号码',
  `SecondTeamJoined` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '加入球队时间',
  `SecondTeamLoanedFrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租借自',
  `SecondTeamContractValidUntil` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '合同到期时间',
  `RadarPAC` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '雷达图-速度',
  `RadarSHO` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '雷达图-射门',
  `RadarPAS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '雷达图-传球',
  `RadarDRI` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '雷达图-盘带',
  `RadarDEF` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '雷达图-防守',
  `RadarPHY` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '雷达图-力量',
  `Labels` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '标签（多个）',
  `AttackCrossing` int(255) NULL DEFAULT NULL COMMENT '进攻-传中',
  `AttackFinishing` int(255) NULL DEFAULT NULL COMMENT '进攻-射术',
  `AttackHeadingAccuracy` int(255) NULL DEFAULT NULL COMMENT '进攻-投球精度',
  `AttackShortPassing` int(255) NULL DEFAULT NULL COMMENT '进攻-短传',
  `AttackVolleys` int(255) NULL DEFAULT NULL COMMENT '进攻-凌空',
  `SkillDribbling` int(255) NULL DEFAULT NULL COMMENT '技巧-盘带',
  `SkillCurve` int(255) NULL DEFAULT NULL COMMENT '技巧-弧线',
  `SkillFKAccuracy` int(255) NULL DEFAULT NULL COMMENT '技巧-任意球精度',
  `SkillLongPassing` int(255) NULL DEFAULT NULL COMMENT '技巧长传',
  `SkillBallControl` int(255) NULL DEFAULT NULL COMMENT '技巧-控球',
  `MoveAcceleration` int(255) NULL DEFAULT NULL COMMENT '移动-加速',
  `MoveSprintSpeed` int(255) NULL DEFAULT NULL COMMENT '移动-速度',
  `MoveAgility` int(255) NULL DEFAULT NULL COMMENT '移动-敏捷',
  `MoveReactions` int(255) NULL DEFAULT NULL COMMENT '移动-反应',
  `MoveBalance` int(255) NULL DEFAULT NULL COMMENT '移动-平衡',
  `PowerShot` int(255) NULL DEFAULT NULL COMMENT '力量-射门力量',
  `PowerJump` int(255) NULL DEFAULT NULL COMMENT '力量-弹跳',
  `PowerStamina` int(255) NULL DEFAULT NULL COMMENT '力量-体能',
  `PowerStrength` int(255) NULL DEFAULT NULL COMMENT '力量-强壮',
  `PowerLongShots` int(255) NULL DEFAULT NULL COMMENT '力量-远射',
  `MentalityAggression` int(255) NULL DEFAULT NULL COMMENT '心理-侵略性',
  `MentalityInterceptions` int(255) NULL DEFAULT NULL COMMENT '心理-拦截意识',
  `MentalityPosition` int(255) NULL DEFAULT NULL COMMENT '心理-跑位',
  `MentalityVision` int(255) NULL DEFAULT NULL COMMENT '心理-视野',
  `MentalityPenalties` int(255) NULL DEFAULT NULL COMMENT '心理-点球',
  `MentalityComposure` int(255) NULL DEFAULT NULL COMMENT '心理-沉着',
  `DefendMark` int(255) NULL DEFAULT NULL COMMENT '防守-盯人',
  `DefendStandTackle` int(255) NULL DEFAULT NULL COMMENT '防守-抢断',
  `DefendSlideTackle` int(255) NULL DEFAULT NULL COMMENT '防守-铲球',
  `GoalKeepDive` int(255) NULL DEFAULT NULL COMMENT '守门-鱼跃',
  `GoalKeepHandle` int(255) NULL DEFAULT NULL COMMENT '守门-手形',
  `GoalKeepKick` int(255) NULL DEFAULT NULL COMMENT '守门-开球',
  `GoalKeepPosition` int(255) NULL DEFAULT NULL COMMENT '守门站位',
  `GoalKeepReflexes` int(255) NULL DEFAULT NULL COMMENT '守门-反应',
  `Traits` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '特性',
  `LS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ST` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LW` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LF` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CF` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RF` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RW` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LAM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CAM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RAM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LCM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RCM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LWB` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LDM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CDM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RDM` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RWB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LB` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LCB` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CB` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RCB` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AddTime` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PlayerID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
