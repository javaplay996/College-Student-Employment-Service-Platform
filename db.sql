/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - daxueshengjiuyefuwupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`daxueshengjiuyefuwupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `daxueshengjiuyefuwupingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dangan` */

DROP TABLE IF EXISTS `dangan`;

CREATE TABLE `dangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `dangan_name` varchar(200) DEFAULT NULL COMMENT '学生档案名称  Search111 ',
  `dangan_uuid_number` varchar(200) DEFAULT NULL COMMENT '学生档案编号',
  `dangan_photo` varchar(200) DEFAULT NULL COMMENT '学生档案照片',
  `dangan_types` int(11) DEFAULT NULL COMMENT '学生档案类型 Search111',
  `dangan_quxiang` varchar(200) DEFAULT NULL COMMENT '就业去向',
  `dangan_content` longtext COMMENT '学生档案介绍 ',
  `dangan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='学生档案';

/*Data for the table `dangan` */

insert  into `dangan`(`id`,`yonghu_id`,`dangan_name`,`dangan_uuid_number`,`dangan_photo`,`dangan_types`,`dangan_quxiang`,`dangan_content`,`dangan_delete`,`insert_time`,`create_time`) values (1,2,'学生档案名称1','1681108100673','upload/dangan1.jpg',1,'就业去向1','学生档案介绍1',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,1,'学生档案名称2','1681108100641','upload/dangan2.jpg',3,'就业去向2','学生档案介绍2',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,3,'学生档案名称3','1681108100646','upload/dangan3.jpg',3,'就业去向3','学生档案介绍3',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,2,'学生档案名称4','1681108100615','upload/dangan4.jpg',1,'就业去向4','学生档案介绍4',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,3,'学生档案名称5','1681108100657','upload/dangan5.jpg',4,'就业去向5','学生档案介绍5',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,1,'学生档案名称6','1681108100677','upload/dangan6.jpg',3,'就业去向6','学生档案介绍6',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,2,'学生档案名称7','1681108100619','upload/dangan7.jpg',2,'就业去向7','学生档案介绍7',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,2,'学生档案名称8','1681108100698','upload/dangan8.jpg',1,'就业去向8','学生档案介绍8',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,2,'学生档案名称9','1681108100684','upload/dangan9.jpg',2,'就业去向9','学生档案介绍9',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,3,'学生档案名称10','1681108100631','upload/dangan10.jpg',1,'就业去向10','学生档案介绍10',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,1,'学生档案名称11','1681108100652','upload/dangan11.jpg',2,'就业去向11','学生档案介绍11',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,2,'学生档案名称12','1681108100637','upload/dangan12.jpg',4,'就业去向12','学生档案介绍12',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,2,'学生档案名称13','1681108100634','upload/dangan13.jpg',3,'就业去向13','学生档案介绍13',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,1,'学生档案名称14','1681108100685','upload/dangan14.jpg',3,'就业去向14','学生档案介绍14',1,'2023-04-10 14:28:20','2023-04-10 14:28:20');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-10 14:28:05'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-10 14:28:05'),(3,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-10 14:28:05'),(4,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-10 14:28:05'),(5,'xinwen_types','新闻资讯类型',1,'新闻资讯类型1',NULL,NULL,'2023-04-10 14:28:05'),(6,'xinwen_types','新闻资讯类型',2,'新闻资讯类型2',NULL,NULL,'2023-04-10 14:28:05'),(7,'xinwen_types','新闻资讯类型',3,'新闻资讯类型3',NULL,NULL,'2023-04-10 14:28:05'),(8,'xinwen_types','新闻资讯类型',4,'新闻资讯类型4',NULL,NULL,'2023-04-10 14:28:05'),(9,'xinwen_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-10 14:28:05'),(10,'falvfagui_types','法律法规类型',1,'法律法规类型1',NULL,NULL,'2023-04-10 14:28:05'),(11,'falvfagui_types','法律法规类型',2,'法律法规类型2',NULL,NULL,'2023-04-10 14:28:05'),(12,'falvfagui_types','法律法规类型',3,'法律法规类型3',NULL,NULL,'2023-04-10 14:28:05'),(13,'falvfagui_types','法律法规类型',4,'法律法规类型4',NULL,NULL,'2023-04-10 14:28:05'),(14,'falvfagui_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-10 14:28:05'),(15,'jianli_types','求职意向',1,'求职意向1',NULL,NULL,'2023-04-10 14:28:05'),(16,'jianli_types','求职意向',2,'求职意向2',NULL,NULL,'2023-04-10 14:28:05'),(17,'jianli_types','求职意向',3,'求职意向3',NULL,NULL,'2023-04-10 14:28:05'),(18,'gongsi_types','企业类型',1,'企业类型1',NULL,NULL,'2023-04-10 14:28:06'),(19,'gongsi_types','企业类型',2,'企业类型2',NULL,NULL,'2023-04-10 14:28:06'),(20,'gongsi_types','企业类型',3,'企业类型3',NULL,NULL,'2023-04-10 14:28:06'),(21,'zhaopin_types','招聘岗位',1,'招聘岗位1',NULL,NULL,'2023-04-10 14:28:06'),(22,'zhaopin_types','招聘岗位',2,'招聘岗位2',NULL,NULL,'2023-04-10 14:28:06'),(23,'zhaopin_types','招聘岗位',3,'招聘岗位3',NULL,NULL,'2023-04-10 14:28:06'),(24,'leixing_types','招聘类型',1,'招聘类型',NULL,NULL,'2023-04-10 14:28:06'),(25,'leixing_types','招聘类型',2,'校园招聘',NULL,NULL,'2023-04-10 14:28:06'),(26,'zhaopin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-10 14:28:06'),(27,'zhaopin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-10 14:28:06'),(28,'zhaopin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-10 14:28:06'),(29,'mianshi_yesno_types','投递状态',1,'未回复',NULL,NULL,'2023-04-10 14:28:06'),(30,'mianshi_yesno_types','投递状态',2,'通过',NULL,NULL,'2023-04-10 14:28:06'),(31,'mianshi_yesno_types','投递状态',3,'拒绝',NULL,NULL,'2023-04-10 14:28:06'),(32,'dangan_types','学生档案类型',1,'学生档案类型1',NULL,NULL,'2023-04-10 14:28:06'),(33,'dangan_types','学生档案类型',2,'学生档案类型2',NULL,NULL,'2023-04-10 14:28:06'),(34,'dangan_types','学生档案类型',3,'学生档案类型3',NULL,NULL,'2023-04-10 14:28:06'),(35,'dangan_types','学生档案类型',4,'学生档案类型4',NULL,NULL,'2023-04-10 14:28:06'),(36,'fenxi_types','就业分析类型',1,'就业分析类型1',NULL,NULL,'2023-04-10 14:28:06'),(37,'fenxi_types','就业分析类型',2,'就业分析类型2',NULL,NULL,'2023-04-10 14:28:06'),(38,'fenxi_types','就业分析类型',3,'就业分析类型3',NULL,NULL,'2023-04-10 14:28:06'),(39,'fenxi_types','就业分析类型',4,'就业分析类型4',NULL,NULL,'2023-04-10 14:28:06'),(40,'xinxi_banji_types','学生班级',1,'学生班级1',NULL,NULL,'2023-04-10 14:28:06'),(41,'xinxi_banji_types','学生班级',2,'学生班级2',NULL,NULL,'2023-04-10 14:28:06'),(42,'xinxi_banji_types','学生班级',3,'学生班级3',NULL,NULL,'2023-04-10 14:28:06'),(43,'xinxi_banji_types','学生班级',4,'学生班级4',NULL,NULL,'2023-04-10 14:28:06'),(44,'xinxi_types','学生专业',1,'学生专业1',NULL,NULL,'2023-04-10 14:28:06'),(45,'xinxi_types','学生专业',2,'学生专业2',NULL,NULL,'2023-04-10 14:28:06'),(46,'xinxi_types','学生专业',3,'学生专业3',NULL,NULL,'2023-04-10 14:28:06'),(47,'xinxi_types','学生专业',4,'学生专业4',NULL,NULL,'2023-04-10 14:28:06'),(48,'zujuan_types','组卷方式',1,'自动组卷',NULL,NULL,'2023-04-10 14:28:06'),(49,'zujuan_types','组卷方式',2,'手动组卷',NULL,NULL,'2023-04-10 14:28:06'),(50,'kemu_types','科目',1,'语文',NULL,NULL,'2023-04-10 14:28:06'),(51,'kemu_types','科目',2,'数学',NULL,NULL,'2023-04-10 14:28:06'),(52,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2023-04-10 14:28:06'),(53,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2023-04-10 14:28:06'),(54,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2023-04-10 14:28:06'),(55,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2023-04-10 14:28:06'),(56,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2023-04-10 14:28:06'),(57,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2023-04-10 14:28:06');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int(11) DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='试卷';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`kemu_types`,`exampaper_types`,`zujuan_types`,`exampaper_delete`,`create_time`) values (1,'测试试卷1',60,100,2,1,2,1,'2023-04-10 14:28:06'),(2,'测试试卷2',180,100,2,1,1,1,'2023-04-10 14:28:06');

/*Table structure for table `exampapertopic` */

DROP TABLE IF EXISTS `exampapertopic`;

CREATE TABLE `exampapertopic` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷',
  `examquestion_id` int(20) NOT NULL COMMENT '试题',
  `exampapertopic_number` int(20) NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='试卷选题';

/*Data for the table `exampapertopic` */

insert  into `exampapertopic`(`id`,`exampaper_id`,`examquestion_id`,`exampapertopic_number`,`create_time`) values (7,1,5,10,'2023-04-10 14:28:06'),(8,1,4,10,'2023-04-10 14:28:06'),(9,1,6,70,'2023-04-10 14:28:06'),(18,2,5,15,'2023-04-10 14:28:06'),(19,2,11,15,'2023-04-10 14:28:06'),(20,2,9,15,'2023-04-10 14:28:06'),(21,2,1,15,'2023-04-10 14:28:06'),(22,2,10,20,'2023-04-10 14:28:06'),(23,2,3,20,'2023-04-10 14:28:06'),(31,1,7,10,'2023-04-10 14:28:06'),(33,1,9,0,'2023-04-10 14:28:06'),(34,1,12,0,'2023-04-10 14:28:06');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) DEFAULT NULL COMMENT '试题名称 Search111',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型 Search111',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`examquestion_name`,`kemu_types`,`examquestion_options`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,'1-1=1',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','1-1=0',3,1,'2023-04-10 14:28:06'),(2,'1+1=？',2,'[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','B','1+1=2',1,2,'2023-04-10 14:28:06'),(3,'1+1-1=?',2,'[]','1','1+1-1=1',4,3,'2023-04-10 14:28:06'),(4,'2+2=?',2,'[]','4','2+2=4',4,4,'2023-04-10 14:28:06'),(5,'1-1-1+6=?',2,'[{\"text\":\"4\",\"code\":\"A\"},{\"text\":\"5\",\"code\":\"B\"},{\"text\":\"6\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]','B','1-1-1+6=5',1,5,'2023-04-10 14:28:06'),(6,'3+3=9',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','3+3=6',3,6,'2023-04-10 14:28:06'),(7,'试题名称1',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A,B,C','答案解析1',2,7,'2023-04-10 14:28:06'),(8,'试题名称2',2,'[]','正确答案2','答案解析2',4,8,'2023-04-10 14:28:06'),(9,'试题名称3',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','A','答案解析3',3,9,'2023-04-10 14:28:06'),(10,'试题名称4',2,'[]','正确答案4','答案解析4',4,10,'2023-04-10 14:28:06'),(11,'试题名称5',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','B','答案解析5',1,11,'2023-04-10 14:28:06'),(12,'试题名称6',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A','答案解析6',1,12,'2023-04-10 14:28:06');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1681109277540',1,2,35,'2023-04-10 14:47:58','2023-04-10 14:47:58'),(2,'1681109850380',1,2,35,'2023-04-10 14:57:30','2023-04-10 14:57:30');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1681109277540',1,3,'1',20,'2023-04-10 14:47:58'),(2,'1681109277540',1,10,'2',0,'2023-04-10 14:47:58'),(3,'1681109277540',1,1,'A',0,'2023-04-10 14:47:58'),(4,'1681109277540',1,9,'A',15,'2023-04-10 14:47:58'),(5,'1681109277540',1,11,'A',0,'2023-04-10 14:47:58'),(6,'1681109277540',1,5,'A',0,'2023-04-10 14:47:58'),(7,'1681109850380',1,3,'1',20,'2023-04-10 14:57:30'),(8,'1681109850380',1,10,'2',0,'2023-04-10 14:57:30'),(9,'1681109850380',1,1,'A',0,'2023-04-10 14:57:30'),(10,'1681109850380',1,9,'A',15,'2023-04-10 14:57:30'),(11,'1681109850380',1,11,'A',0,'2023-04-10 14:57:30'),(12,'1681109850380',1,5,'A',0,'2023-04-10 14:57:30');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,2,10,'2','2023-04-10 14:47:58','2023-04-10 14:47:58'),(2,1,2,1,'A','2023-04-10 14:47:58','2023-04-10 14:47:58'),(3,1,2,11,'A','2023-04-10 14:47:58','2023-04-10 14:47:58'),(4,1,2,5,'A','2023-04-10 14:47:58','2023-04-10 14:47:58'),(5,1,2,10,'2','2023-04-10 14:57:30','2023-04-10 14:57:30'),(6,1,2,1,'A','2023-04-10 14:57:30','2023-04-10 14:57:30'),(7,1,2,11,'A','2023-04-10 14:57:30','2023-04-10 14:57:30'),(8,1,2,5,'A','2023-04-10 14:57:30','2023-04-10 14:57:30');

/*Table structure for table `falvfagui` */

DROP TABLE IF EXISTS `falvfagui`;

CREATE TABLE `falvfagui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `falvfagui_name` varchar(200) DEFAULT NULL COMMENT '法律法规名称  Search111 ',
  `falvfagui_uuid_number` varchar(200) DEFAULT NULL COMMENT '法律法规编号',
  `falvfagui_photo` varchar(200) DEFAULT NULL COMMENT '法律法规照片',
  `falvfagui_video` varchar(200) DEFAULT NULL COMMENT '新闻视频',
  `falvfagui_types` int(11) DEFAULT NULL COMMENT '法律法规类型 Search111',
  `falvfagui_content` longtext COMMENT '法律法规介绍 ',
  `falvfagui_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='法律法规';

/*Data for the table `falvfagui` */

insert  into `falvfagui`(`id`,`falvfagui_name`,`falvfagui_uuid_number`,`falvfagui_photo`,`falvfagui_video`,`falvfagui_types`,`falvfagui_content`,`falvfagui_delete`,`insert_time`,`create_time`) values (1,'法律法规名称1','1681108100640','upload/falvfagui1.jpg','upload/video.mp4',4,'法律法规介绍1',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,'法律法规名称2','1681108100695','upload/falvfagui2.jpg','upload/video.mp4',1,'法律法规介绍2',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,'法律法规名称3','1681108100684','upload/falvfagui3.jpg','upload/video.mp4',2,'法律法规介绍3',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,'法律法规名称4','1681108100621','upload/falvfagui4.jpg','upload/video.mp4',3,'法律法规介绍4',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,'法律法规名称5','1681108100674','upload/falvfagui5.jpg','upload/video.mp4',2,'法律法规介绍5',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,'法律法规名称6','1681108100622','upload/falvfagui6.jpg','upload/video.mp4',3,'法律法规介绍6',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,'法律法规名称7','1681108100698','upload/falvfagui7.jpg','upload/video.mp4',2,'法律法规介绍7',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,'法律法规名称8','1681108100653','upload/falvfagui8.jpg','upload/video.mp4',2,'法律法规介绍8',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,'法律法规名称9','1681108100683','upload/falvfagui9.jpg','upload/video.mp4',3,'法律法规介绍9',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,'法律法规名称10','1681108100644','upload/falvfagui10.jpg','upload/video.mp4',4,'法律法规介绍10',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,'法律法规名称11','1681108100664','upload/falvfagui11.jpg','upload/video.mp4',1,'法律法规介绍11',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,'法律法规名称12','1681108100667','upload/falvfagui12.jpg','upload/video.mp4',4,'法律法规介绍12',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,'法律法规名称13','1681108100632','upload/falvfagui13.jpg','upload/video.mp4',1,'法律法规介绍13',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,'法律法规名称14','1681108100660','upload/falvfagui14.jpg','upload/video.mp4',1,'法律法规介绍14',1,'2023-04-10 14:28:20','2023-04-10 14:28:20');

/*Table structure for table `falvfagui_collection` */

DROP TABLE IF EXISTS `falvfagui_collection`;

CREATE TABLE `falvfagui_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `falvfagui_id` int(11) DEFAULT NULL COMMENT '法律法规',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `falvfagui_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='法律法规收藏';

/*Data for the table `falvfagui_collection` */

insert  into `falvfagui_collection`(`id`,`falvfagui_id`,`yonghu_id`,`falvfagui_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,2,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,3,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,4,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,5,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,6,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,7,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,8,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,9,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,10,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,11,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,12,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,13,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,14,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20');

/*Table structure for table `falvfagui_liuyan` */

DROP TABLE IF EXISTS `falvfagui_liuyan`;

CREATE TABLE `falvfagui_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `falvfagui_id` int(11) DEFAULT NULL COMMENT '法律法规',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `falvfagui_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='法律法规留言';

/*Data for the table `falvfagui_liuyan` */

insert  into `falvfagui_liuyan`(`id`,`falvfagui_id`,`yonghu_id`,`falvfagui_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-04-10 14:28:20','回复信息1','2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,2,3,'留言内容2','2023-04-10 14:28:20','回复信息2','2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,3,3,'留言内容3','2023-04-10 14:28:20','回复信息3','2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,4,2,'留言内容4','2023-04-10 14:28:20','回复信息4','2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,5,3,'留言内容5','2023-04-10 14:28:20','回复信息5','2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,6,1,'留言内容6','2023-04-10 14:28:20','回复信息6','2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,7,1,'留言内容7','2023-04-10 14:28:20','回复信息7','2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,8,2,'留言内容8','2023-04-10 14:28:20','回复信息8','2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,9,2,'留言内容9','2023-04-10 14:28:20','回复信息9','2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,10,2,'留言内容10','2023-04-10 14:28:20','回复信息10','2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,11,1,'留言内容11','2023-04-10 14:28:20','回复信息11','2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,12,3,'留言内容12','2023-04-10 14:28:20','回复信息12','2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,13,2,'留言内容13','2023-04-10 14:28:20','回复信息13','2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,14,3,'留言内容14','2023-04-10 14:28:20','回复信息14','2023-04-10 14:28:20','2023-04-10 14:28:20'),(15,14,1,'呀呀呀','2023-04-10 14:53:50',NULL,NULL,'2023-04-10 14:53:50');

/*Table structure for table `fenxi` */

DROP TABLE IF EXISTS `fenxi`;

CREATE TABLE `fenxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fenxi_name` varchar(200) DEFAULT NULL COMMENT '就业分析名称  Search111 ',
  `fenxi_uuid_number` varchar(200) DEFAULT NULL COMMENT '就业分析编号',
  `fenxi_photo` varchar(200) DEFAULT NULL COMMENT '就业分析照片',
  `fenxi_types` int(11) DEFAULT NULL COMMENT '就业分析类型 Search111',
  `fenxi_quxiang` varchar(200) DEFAULT NULL COMMENT '就业去向',
  `fenxi_xinzi` int(11) DEFAULT NULL COMMENT '薪资',
  `fenxi_jiuyel` int(11) DEFAULT NULL COMMENT '就业率',
  `fenxi_content` longtext COMMENT '就业分析介绍 ',
  `fenxi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='就业分析';

/*Data for the table `fenxi` */

insert  into `fenxi`(`id`,`fenxi_name`,`fenxi_uuid_number`,`fenxi_photo`,`fenxi_types`,`fenxi_quxiang`,`fenxi_xinzi`,`fenxi_jiuyel`,`fenxi_content`,`fenxi_delete`,`insert_time`,`create_time`) values (1,'就业分析名称1','1681108100652','upload/fenxi1.jpg',2,'就业去向1',324,138,'就业分析介绍1',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,'就业分析名称2','1681108100669','upload/fenxi2.jpg',3,'就业去向2',283,91,'就业分析介绍2',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,'就业分析名称3','1681108100629','upload/fenxi3.jpg',1,'就业去向3',356,395,'就业分析介绍3',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,'就业分析名称4','1681108100699','upload/fenxi4.jpg',2,'就业去向4',324,175,'就业分析介绍4',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,'就业分析名称5','1681108100616','upload/fenxi5.jpg',4,'就业去向5',78,370,'就业分析介绍5',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,'就业分析名称6','1681108100637','upload/fenxi6.jpg',4,'就业去向6',467,405,'就业分析介绍6',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,'就业分析名称7','1681108100663','upload/fenxi7.jpg',1,'就业去向7',385,498,'就业分析介绍7',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,'就业分析名称8','1681108100635','upload/fenxi8.jpg',3,'就业去向8',195,58,'就业分析介绍8',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,'就业分析名称9','1681108100623','upload/fenxi9.jpg',1,'就业去向9',122,227,'就业分析介绍9',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,'就业分析名称10','1681108100647','upload/fenxi10.jpg',3,'就业去向10',169,23,'就业分析介绍10',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,'就业分析名称11','1681108100615','upload/fenxi11.jpg',4,'就业去向11',263,479,'就业分析介绍11',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,'就业分析名称12','1681108100665','upload/fenxi12.jpg',4,'就业去向12',431,161,'就业分析介绍12',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,'就业分析名称13','1681108100627','upload/fenxi13.jpg',4,'就业去向13',7,393,'就业分析介绍13',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,'就业分析名称14','1681108100626','upload/fenxi14.jpg',3,'就业去向14',197,470,'就业分析介绍14',1,'2023-04-10 14:28:20','2023-04-10 14:28:20');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `gongsi_id` int(11) DEFAULT NULL COMMENT '企业',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`laoshi_id`,`gongsi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,NULL,'发布内容1',350,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,'帖子标题2',3,NULL,NULL,NULL,'发布内容2',193,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,'帖子标题3',2,NULL,NULL,NULL,'发布内容3',340,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,'帖子标题4',1,NULL,NULL,NULL,'发布内容4',214,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,'帖子标题5',1,NULL,NULL,NULL,'发布内容5',155,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,'帖子标题6',2,NULL,NULL,NULL,'发布内容6',257,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,'帖子标题7',2,NULL,NULL,NULL,'发布内容7',472,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,'帖子标题8',1,NULL,NULL,NULL,'发布内容8',124,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,'帖子标题9',1,NULL,NULL,NULL,'发布内容9',358,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,'帖子标题10',1,NULL,NULL,NULL,'发布内容10',428,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,'帖子标题11',1,NULL,NULL,NULL,'发布内容11',333,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,'帖子标题12',1,NULL,NULL,NULL,'发布内容12',5,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,'帖子标题13',1,NULL,NULL,NULL,'发布内容13',113,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,'帖子标题14',3,NULL,NULL,NULL,'发布内容14',477,1,'2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(15,'帖子',1,NULL,NULL,NULL,'<p>帖子1111</p>',NULL,1,'2023-04-10 14:54:07',NULL,'2023-04-10 14:54:07'),(16,NULL,NULL,1,NULL,NULL,'456546',15,2,'2023-04-10 14:58:53',NULL,'2023-04-10 14:58:53');

/*Table structure for table `gongsi` */

DROP TABLE IF EXISTS `gongsi`;

CREATE TABLE `gongsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `gongsi_types` int(11) DEFAULT NULL COMMENT '企业类型',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '企业封面',
  `gongsi_content` text COMMENT '企业简介 ',
  `gongsi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `gongsi` */

insert  into `gongsi`(`id`,`username`,`password`,`gongsi_name`,`gongsi_types`,`gongsi_phone`,`gongsi_email`,`gongsi_photo`,`gongsi_content`,`gongsi_delete`,`create_time`) values (1,'a1','123456','企业名称1',1,'17703786901','1@qq.com','upload/gongsi1.jpg','企业简介1',1,'2023-04-10 14:28:20'),(2,'a2','123456','企业名称2',1,'17703786902','2@qq.com','upload/gongsi2.jpg','企业简介2',1,'2023-04-10 14:28:20'),(3,'a3','123456','企业名称3',3,'17703786903','3@qq.com','upload/gongsi3.jpg','企业简介3',1,'2023-04-10 14:28:20');

/*Table structure for table `jianli` */

DROP TABLE IF EXISTS `jianli`;

CREATE TABLE `jianli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历标题',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int(11) DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jianli_file` varchar(200) DEFAULT NULL COMMENT '简历文件',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='简历';

/*Data for the table `jianli` */

insert  into `jianli`(`id`,`yonghu_id`,`jianli_uuid_number`,`jianli_name`,`jianli_xingming`,`jianli_types`,`jianli_xinzi`,`jianli_xueli`,`jianli_jingli`,`sex_types`,`jianli_file`,`jianli_phone`,`jianli_photo`,`jianli_address`,`jiaoyu_text`,`shixi_text`,`geren_text`,`create_time`) values (1,3,'1681108100658','简历标题1','姓名1',1,'期望工资1','学历1','工作经历1',2,'upload/file.rar','17703786901','upload/jianli1.jpg','位置1','教育经历1','实习或工作经历1','个人介绍1','2023-04-10 14:28:20'),(2,2,'1681108100624','简历标题2','姓名2',3,'期望工资2','学历2','工作经历2',1,'upload/file.rar','17703786902','upload/jianli2.jpg','位置2','教育经历2','实习或工作经历2','个人介绍2','2023-04-10 14:28:20'),(3,3,'1681108100717','简历标题3','姓名3',2,'期望工资3','学历3','工作经历3',1,'upload/file.rar','17703786903','upload/jianli3.jpg','位置3','教育经历3','实习或工作经历3','个人介绍3','2023-04-10 14:28:20'),(4,1,'1681108100673','简历标题4','姓名4',3,'期望工资4','学历4','工作经历4',1,'upload/file.rar','17703786904','upload/jianli4.jpg','位置4','教育经历4','实习或工作经历4','个人介绍4','2023-04-10 14:28:20'),(5,1,'1681108100706','简历标题5','姓名5',1,'期望工资5','学历5','工作经历5',1,'upload/file.rar','17703786905','upload/jianli5.jpg','位置5','教育经历5','实习或工作经历5','个人介绍5','2023-04-10 14:28:20'),(6,3,'1681108100677','简历标题6','姓名6',1,'期望工资6','学历6','工作经历6',1,'upload/file.rar','17703786906','upload/jianli6.jpg','位置6','教育经历6','实习或工作经历6','个人介绍6','2023-04-10 14:28:20'),(7,1,'1681108100707','简历标题7','姓名7',1,'期望工资7','学历7','工作经历7',1,'upload/file.rar','17703786907','upload/jianli7.jpg','位置7','教育经历7','实习或工作经历7','个人介绍7','2023-04-10 14:28:20'),(8,2,'1681108100682','简历标题8','姓名8',1,'期望工资8','学历8','工作经历8',2,'upload/file.rar','17703786908','upload/jianli8.jpg','位置8','教育经历8','实习或工作经历8','个人介绍8','2023-04-10 14:28:20'),(9,3,'1681108100716','简历标题9','姓名9',3,'期望工资9','学历9','工作经历9',2,'upload/file.rar','17703786909','upload/jianli9.jpg','位置9','教育经历9','实习或工作经历9','个人介绍9','2023-04-10 14:28:20'),(10,3,'1681108100653','简历标题10','姓名10',2,'期望工资10','学历10','工作经历10',1,'upload/file.rar','17703786910','upload/jianli10.jpg','位置10','教育经历10','实习或工作经历10','个人介绍10','2023-04-10 14:28:20'),(11,1,'1681108100689','简历标题11','姓名11',2,'期望工资11','学历11','工作经历11',1,'upload/file.rar','17703786911','upload/jianli11.jpg','位置11','教育经历11','实习或工作经历11','个人介绍11','2023-04-10 14:28:20'),(12,3,'1681108100631','简历标题12','姓名12',1,'期望工资12','学历12','工作经历12',2,'upload/file.rar','17703786912','upload/jianli12.jpg','位置12','教育经历12','实习或工作经历12','个人介绍12','2023-04-10 14:28:20'),(13,1,'1681108100652','简历标题13','姓名13',3,'期望工资13','学历13','工作经历13',2,'upload/file.rar','17703786913','upload/jianli13.jpg','位置13','教育经历13','实习或工作经历13','个人介绍13','2023-04-10 14:28:20'),(14,2,'1681108100662','简历标题14','姓名14',3,'期望工资14','学历14','工作经历14',1,'upload/file.rar','17703786914','upload/jianli14.jpg','位置14','教育经历14','实习或工作经历14','个人介绍14','2023-04-10 14:28:20');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',1,'1@qq.com','2023-04-10 14:28:20'),(2,'a2','123456','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',1,'2@qq.com','2023-04-10 14:28:20'),(3,'a3','123456','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',2,'3@qq.com','2023-04-10 14:28:20');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','学生','hsa7j10zhdt9pie3q2xvyyzc9t1cg2hh','2023-04-10 14:30:37','2023-04-10 15:53:23'),(2,1,'a1','laoshi','老师','vu9px0bcel7wsuyn6ty3cu47j8h5nnw8','2023-04-10 14:44:20','2023-04-10 15:58:27'),(3,1,'a1','gongsi','企业','su4xazhnwim03j5aq0ecly65qb0lq4dd','2023-04-10 14:48:06','2023-04-10 15:55:02'),(4,1,'admin','users','管理员','2ths1xxl48ghv77ohp3hatlsqo0f3mgv','2023-04-10 14:59:13','2023-04-10 15:59:14');

/*Table structure for table `toudi` */

DROP TABLE IF EXISTS `toudi`;

CREATE TABLE `toudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int(11) DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `mianshi_yesno_types` int(11) DEFAULT NULL COMMENT '投递状态 Search111',
  `mianshi_yesno_text` text COMMENT '投递回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='简历投递';

/*Data for the table `toudi` */

insert  into `toudi`(`id`,`jianli_id`,`zhaopin_id`,`mianshi_yesno_types`,`mianshi_yesno_text`,`insert_time`,`create_time`) values (1,1,1,1,'投递回复1','2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,2,2,1,'投递回复2','2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,3,3,2,'投递回复3','2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,4,4,1,'投递回复4','2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,5,5,3,'投递回复5','2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,6,6,3,'投递回复6','2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,7,7,3,'投递回复7','2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,8,8,1,'投递回复8','2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,9,9,2,'投递回复9','2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,10,10,2,'投递回复10','2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,11,11,1,'投递回复11','2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,12,12,1,'投递回复12','2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,13,13,1,'投递回复13','2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,14,14,2,'投递回复14','2023-04-10 14:28:20','2023-04-10 14:28:20'),(29,13,13,2,'面试考试完成后','2023-04-10 14:54:52','2023-04-10 14:54:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-10 14:28:05');

/*Table structure for table `xinwen` */

DROP TABLE IF EXISTS `xinwen`;

CREATE TABLE `xinwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xinwen_name` varchar(200) DEFAULT NULL COMMENT '新闻资讯名称  Search111 ',
  `xinwen_uuid_number` varchar(200) DEFAULT NULL COMMENT '新闻资讯编号',
  `xinwen_photo` varchar(200) DEFAULT NULL COMMENT '新闻资讯照片',
  `xinwen_video` varchar(200) DEFAULT NULL COMMENT '新闻视频',
  `xinwen_types` int(11) DEFAULT NULL COMMENT '新闻资讯类型 Search111',
  `xinwen_content` longtext COMMENT '新闻资讯介绍 ',
  `xinwen_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `xinwen` */

insert  into `xinwen`(`id`,`xinwen_name`,`xinwen_uuid_number`,`xinwen_photo`,`xinwen_video`,`xinwen_types`,`xinwen_content`,`xinwen_delete`,`insert_time`,`create_time`) values (1,'新闻资讯名称1','1681108100687','upload/xinwen1.jpg','upload/video.mp4',3,'新闻资讯介绍1',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,'新闻资讯名称2','1681108100643','upload/xinwen2.jpg','upload/video.mp4',2,'新闻资讯介绍2',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,'新闻资讯名称3','1681108100708','upload/xinwen3.jpg','upload/video.mp4',4,'新闻资讯介绍3',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,'新闻资讯名称4','1681108100689','upload/xinwen4.jpg','upload/video.mp4',3,'新闻资讯介绍4',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,'新闻资讯名称5','1681108100686','upload/xinwen5.jpg','upload/video.mp4',2,'新闻资讯介绍5',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,'新闻资讯名称6','1681108100657','upload/xinwen6.jpg','upload/video.mp4',3,'新闻资讯介绍6',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,'新闻资讯名称7','1681108100715','upload/xinwen7.jpg','upload/video.mp4',4,'新闻资讯介绍7',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,'新闻资讯名称8','1681108100662','upload/xinwen8.jpg','upload/video.mp4',1,'新闻资讯介绍8',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,'新闻资讯名称9','1681108100713','upload/xinwen9.jpg','upload/video.mp4',2,'新闻资讯介绍9',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,'新闻资讯名称10','1681108100659','upload/xinwen10.jpg','upload/video.mp4',1,'新闻资讯介绍10',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,'新闻资讯名称11','1681108100706','upload/xinwen11.jpg','upload/video.mp4',1,'新闻资讯介绍11',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,'新闻资讯名称12','1681108100644','upload/xinwen12.jpg','upload/video.mp4',1,'新闻资讯介绍12',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,'新闻资讯名称13','1681108100661','upload/xinwen13.jpg','upload/video.mp4',4,'新闻资讯介绍13',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,'新闻资讯名称14','1681108100677','upload/xinwen14.jpg','upload/video.mp4',2,'新闻资讯介绍14',1,'2023-04-10 14:28:20','2023-04-10 14:28:20');

/*Table structure for table `xinwen_collection` */

DROP TABLE IF EXISTS `xinwen_collection`;

CREATE TABLE `xinwen_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinwen_id` int(11) DEFAULT NULL COMMENT '新闻资讯',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `xinwen_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='新闻资讯收藏';

/*Data for the table `xinwen_collection` */

insert  into `xinwen_collection`(`id`,`xinwen_id`,`yonghu_id`,`xinwen_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,2,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,3,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,4,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,5,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,6,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,7,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,8,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,9,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,10,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,11,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,12,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,13,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,14,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(15,14,1,1,'2023-04-10 14:54:19','2023-04-10 14:54:19');

/*Table structure for table `xinwen_liuyan` */

DROP TABLE IF EXISTS `xinwen_liuyan`;

CREATE TABLE `xinwen_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinwen_id` int(11) DEFAULT NULL COMMENT '新闻资讯',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `xinwen_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='新闻资讯留言';

/*Data for the table `xinwen_liuyan` */

insert  into `xinwen_liuyan`(`id`,`xinwen_id`,`yonghu_id`,`xinwen_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-04-10 14:28:20','回复信息1','2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,2,3,'留言内容2','2023-04-10 14:28:20','回复信息2','2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,3,3,'留言内容3','2023-04-10 14:28:20','回复信息3','2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,4,3,'留言内容4','2023-04-10 14:28:20','回复信息4','2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,5,3,'留言内容5','2023-04-10 14:28:20','回复信息5','2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,6,3,'留言内容6','2023-04-10 14:28:20','回复信息6','2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,7,3,'留言内容7','2023-04-10 14:28:20','回复信息7','2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,8,3,'留言内容8','2023-04-10 14:28:20','回复信息8','2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,9,3,'留言内容9','2023-04-10 14:28:20','回复信息9','2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,10,2,'留言内容10','2023-04-10 14:28:20','回复信息10','2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,11,1,'留言内容11','2023-04-10 14:28:20','回复信息11','2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,12,2,'留言内容12','2023-04-10 14:28:20','回复信息12','2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,13,3,'留言内容13','2023-04-10 14:28:20','回复信息13','2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,14,3,'留言内容14','2023-04-10 14:28:20','回复信息14','2023-04-10 14:28:20','2023-04-10 14:28:20'),(15,14,1,'呀呀呀','2023-04-10 14:54:25',NULL,NULL,'2023-04-10 14:54:25');

/*Table structure for table `xinxi` */

DROP TABLE IF EXISTS `xinxi`;

CREATE TABLE `xinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `xinxi_types` int(11) DEFAULT NULL COMMENT '学生专业 Search111',
  `xinxi_banji_types` int(11) DEFAULT NULL COMMENT '学生班级',
  `xinxi_xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `xinxi_content` longtext COMMENT '学生信息介绍 ',
  `xinxi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='学生信息';

/*Data for the table `xinxi` */

insert  into `xinxi`(`id`,`yonghu_id`,`xinxi_types`,`xinxi_banji_types`,`xinxi_xueyuan`,`xinxi_content`,`xinxi_delete`,`insert_time`,`create_time`) values (1,2,4,3,'学院1','学生信息介绍1',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,2,2,4,'学院2','学生信息介绍2',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,2,4,2,'学院3','学生信息介绍3',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,2,1,3,'学院4','学生信息介绍4',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,3,2,1,'学院5','学生信息介绍5',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,3,1,2,'学院6','学生信息介绍6',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,3,2,3,'学院7','学生信息介绍7',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,2,4,1,'学院8','学生信息介绍8',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,1,2,4,'学院9','学生信息介绍9',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,3,4,2,'学院10','学生信息介绍10',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,3,2,2,'学院11','学生信息介绍11',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,1,4,2,'学院12','学生信息介绍12',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,2,1,4,'学院13','学生信息介绍13',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,1,1,4,'学院14','学生信息介绍14',1,'2023-04-10 14:28:20','2023-04-10 14:28:20');

/*Table structure for table `xuanchuan` */

DROP TABLE IF EXISTS `xuanchuan`;

CREATE TABLE `xuanchuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuanchuan_name` varchar(200) DEFAULT NULL COMMENT '宣传名称  Search111 ',
  `xuanchuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '宣传编号',
  `xuanchuan_photo` varchar(200) DEFAULT NULL COMMENT '宣传照片',
  `xuanchuan_video` varchar(200) DEFAULT NULL COMMENT '宣传视频',
  `xuanchuan_content` longtext COMMENT '宣传介绍 ',
  `xuanchuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宣传';

/*Data for the table `xuanchuan` */

insert  into `xuanchuan`(`id`,`xuanchuan_name`,`xuanchuan_uuid_number`,`xuanchuan_photo`,`xuanchuan_video`,`xuanchuan_content`,`xuanchuan_delete`,`insert_time`,`create_time`) values (1,'宣传名称1','1681108100712','upload/xuanchuan1.jpg','upload/video.mp4','宣传介绍1',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,'宣传名称2','1681108100660','upload/xuanchuan2.jpg','upload/video.mp4','宣传介绍2',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,'宣传名称3','1681108100727','upload/xuanchuan3.jpg','upload/video.mp4','宣传介绍3',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,'宣传名称4','1681108100718','upload/xuanchuan4.jpg','upload/video.mp4','宣传介绍4',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,'宣传名称5','1681108100653','upload/xuanchuan5.jpg','upload/video.mp4','宣传介绍5',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,'宣传名称6','1681108100691','upload/xuanchuan6.jpg','upload/video.mp4','宣传介绍6',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,'宣传名称7','1681108100683','upload/xuanchuan7.jpg','upload/video.mp4','宣传介绍7',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,'宣传名称8','1681108100642','upload/xuanchuan8.jpg','upload/video.mp4','宣传介绍8',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,'宣传名称9','1681108100720','upload/xuanchuan9.jpg','upload/video.mp4','宣传介绍9',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,'宣传名称10','1681108100664','upload/xuanchuan10.jpg','upload/video.mp4','宣传介绍10',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,'宣传名称11','1681108100679','upload/xuanchuan11.jpg','upload/video.mp4','宣传介绍11',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,'宣传名称12','1681108100682','upload/xuanchuan12.jpg','upload/video.mp4','宣传介绍12',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,'宣传名称13','1681108100734','upload/xuanchuan13.jpg','upload/video.mp4','宣传介绍13',1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,'宣传名称14','1681108100647','upload/xuanchuan14.jpg','upload/video.mp4','宣传介绍14',1,'2023-04-10 14:28:20','2023-04-10 14:28:20');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','学生姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-04-10 14:28:20'),(2,'a2','123456','学生姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-04-10 14:28:20'),(3,'a3','123456','学生姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-04-10 14:28:20');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int(11) DEFAULT NULL COMMENT '企业',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zan_number` int(111) DEFAULT NULL COMMENT '赞',
  `cai_number` int(111) DEFAULT NULL COMMENT '踩',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘岗位 Search111',
  `leixing_types` int(11) DEFAULT NULL COMMENT '招聘类型 Search111',
  `zhaopin_renshu_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='职位招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`gongsi_id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_daiyu`,`zhaopin_address`,`lianxiren_name`,`zhaopin_phone`,`zan_number`,`cai_number`,`zhaopin_types`,`leixing_types`,`zhaopin_renshu_number`,`zhaopin_content`,`create_time`) values (1,1,'招聘信息名称1','upload/zhaopin1.jpg','薪资待遇1','上班地点1','联系人1','17703786901',200,14,1,1,358,'招聘信息详情1','2023-04-10 14:28:20'),(2,2,'招聘信息名称2','upload/zhaopin2.jpg','薪资待遇2','上班地点2','联系人2','17703786902',329,57,2,2,332,'招聘信息详情2','2023-04-10 14:28:20'),(3,3,'招聘信息名称3','upload/zhaopin3.jpg','薪资待遇3','上班地点3','联系人3','17703786903',418,256,3,1,170,'招聘信息详情3','2023-04-10 14:28:20'),(4,3,'招聘信息名称4','upload/zhaopin4.jpg','薪资待遇4','上班地点4','联系人4','17703786904',211,91,1,1,1,'招聘信息详情4','2023-04-10 14:28:20'),(5,1,'招聘信息名称5','upload/zhaopin5.jpg','薪资待遇5','上班地点5','联系人5','17703786905',137,406,3,2,350,'招聘信息详情5','2023-04-10 14:28:20'),(6,3,'招聘信息名称6','upload/zhaopin6.jpg','薪资待遇6','上班地点6','联系人6','17703786906',80,258,2,2,94,'招聘信息详情6','2023-04-10 14:28:20'),(7,1,'招聘信息名称7','upload/zhaopin7.jpg','薪资待遇7','上班地点7','联系人7','17703786907',130,250,2,2,404,'招聘信息详情7','2023-04-10 14:28:20'),(8,1,'招聘信息名称8','upload/zhaopin8.jpg','薪资待遇8','上班地点8','联系人8','17703786908',145,197,1,2,151,'招聘信息详情8','2023-04-10 14:28:20'),(9,2,'招聘信息名称9','upload/zhaopin9.jpg','薪资待遇9','上班地点9','联系人9','17703786909',34,308,1,2,418,'招聘信息详情9','2023-04-10 14:28:20'),(10,1,'招聘信息名称10','upload/zhaopin10.jpg','薪资待遇10','上班地点10','联系人10','17703786910',467,256,2,2,330,'招聘信息详情10','2023-04-10 14:28:20'),(11,3,'招聘信息名称11','upload/zhaopin11.jpg','薪资待遇11','上班地点11','联系人11','17703786911',281,101,2,1,104,'招聘信息详情11','2023-04-10 14:28:20'),(12,1,'招聘信息名称12','upload/zhaopin12.jpg','薪资待遇12','上班地点12','联系人12','17703786912',218,27,2,2,369,'招聘信息详情12','2023-04-10 14:28:20'),(13,1,'招聘信息名称13','upload/zhaopin13.jpg','薪资待遇13','上班地点13','联系人13','17703786913',207,214,1,1,459,'招聘信息详情13','2023-04-10 14:28:20'),(14,1,'招聘信息名称14','upload/zhaopin14.jpg','薪资待遇14','上班地点14','联系人14','17703786914',299,449,1,2,113,'招聘信息详情14','2023-04-10 14:28:20');

/*Table structure for table `zhaopin_collection` */

DROP TABLE IF EXISTS `zhaopin_collection`;

CREATE TABLE `zhaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `zhaopin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='职位收藏';

/*Data for the table `zhaopin_collection` */

insert  into `zhaopin_collection`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,2,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,3,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,4,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,5,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,6,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,7,1,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,8,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,9,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,10,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,11,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,12,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,13,3,1,'2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,14,2,1,'2023-04-10 14:28:20','2023-04-10 14:28:20');

/*Table structure for table `zhaopin_liuyan` */

DROP TABLE IF EXISTS `zhaopin_liuyan`;

CREATE TABLE `zhaopin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='招聘咨询';

/*Data for the table `zhaopin_liuyan` */

insert  into `zhaopin_liuyan`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'留言内容1','回复信息1','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(2,2,2,'留言内容2','回复信息2','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(3,3,3,'留言内容3','回复信息3','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(4,4,2,'留言内容4','回复信息4','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(5,5,2,'留言内容5','回复信息5','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(6,6,3,'留言内容6','回复信息6','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(7,7,3,'留言内容7','回复信息7','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(8,8,1,'留言内容8','回复信息8','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(9,9,1,'留言内容9','回复信息9','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(10,10,3,'留言内容10','回复信息10','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(11,11,3,'留言内容11','回复信息11','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(12,12,3,'留言内容12','回复信息12','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(13,13,1,'留言内容13','回复信息13','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20'),(14,14,3,'留言内容14','回复信息14','2023-04-10 14:28:20','2023-04-10 14:28:20','2023-04-10 14:28:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
