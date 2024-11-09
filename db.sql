/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dianzibinglixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dianzibinglixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dianzibinglixitong`;

/*Table structure for table `bingchengjilu` */

DROP TABLE IF EXISTS `bingchengjilu`;

CREATE TABLE `bingchengjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '患者',
  `bingchengjilu_content` text COMMENT '病程详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='病程记录';

/*Data for the table `bingchengjilu` */

insert  into `bingchengjilu`(`id`,`yonghu_id`,`bingchengjilu_content`,`insert_time`,`create_time`) values (25,26,'病程1的详情\r\n','2021-04-30 14:09:46','2021-04-30 14:09:46'),(26,26,'钱2的病程1\r\n','2021-04-30 14:53:38','2021-04-30 14:53:38');

/*Table structure for table `bingfang` */

DROP TABLE IF EXISTS `bingfang`;

CREATE TABLE `bingfang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋 Search111 ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号 Search111 ',
  `bingfang_types` int(11) DEFAULT NULL COMMENT '是否被使用',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='病房';

/*Data for the table `bingfang` */

insert  into `bingfang`(`id`,`building`,`unit`,`room`,`bingfang_types`,`create_time`) values (1,'1','1','101',1,'2021-04-30 14:13:18'),(2,'1','1','102',2,'2021-04-30 14:13:35'),(3,'1','1','103',2,'2021-04-30 14:13:42'),(4,'1','1','107',1,'2021-04-30 14:55:02');

/*Table structure for table `bingfang_yonghu` */

DROP TABLE IF EXISTS `bingfang_yonghu`;

CREATE TABLE `bingfang_yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '患者',
  `bingfang_id` int(11) DEFAULT NULL COMMENT '病房',
  `zhuyuan_time` timestamp NULL DEFAULT NULL COMMENT '住院时间',
  `chuyuan_time` timestamp NULL DEFAULT NULL COMMENT '出院时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='病房患者';

/*Data for the table `bingfang_yonghu` */

insert  into `bingfang_yonghu`(`id`,`yonghu_id`,`bingfang_id`,`zhuyuan_time`,`chuyuan_time`,`create_time`) values (1,25,2,'2021-04-29 00:00:00',NULL,'2021-04-30 14:41:46'),(2,27,3,'2021-05-01 00:00:00','2021-05-08 00:00:00','2021-04-30 14:55:25');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-30 11:08:28'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-30 11:08:28'),(3,'keshi_types','科室类型名称',1,'口腔科',NULL,'2021-04-30 11:08:28'),(4,'keshi_types','科室类型名称',2,'内科',NULL,'2021-04-30 11:08:28'),(5,'keshi_types','科室类型名称',3,'外科',NULL,'2021-04-30 11:08:28'),(6,'zhiwei_types','职位类型名称',1,'普通员工',NULL,'2021-04-30 11:08:28'),(7,'zhiwei_types','职位类型名称',2,'组长',NULL,'2021-04-30 11:08:28'),(8,'zhiwei_types','职位类型名称',3,'主管',NULL,'2021-04-30 11:08:28'),(9,'bingfang_types','病房是否被使用',1,'未使用',NULL,'2021-04-30 11:08:28'),(10,'bingfang_types','病房是否被使用',2,'已使用',NULL,'2021-04-30 11:08:28'),(11,'ruyuantujing_types','入院途径',1,'门诊',NULL,'2021-04-30 11:08:28'),(12,'ruyuantujing_types','入院途径',2,'急诊',NULL,'2021-04-30 11:08:28'),(13,'jiancha_types','检查类型名称',1,'腿部检查',NULL,'2021-04-30 11:08:28'),(14,'jiancha_types','检查类型名称',2,'腹部检查',NULL,'2021-04-30 11:08:28'),(15,'jiancha_types','检查类型名称',3,'脑部检查',NULL,'2021-04-30 11:08:28'),(16,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-04-30 11:08:29'),(17,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-04-30 11:08:29'),(18,'role_types','权限类型',1,'门诊医生',NULL,'2021-04-30 11:24:50'),(19,'role_types','权限类型',2,'住院医生',NULL,'2021-04-30 11:24:50'),(20,'yaopin_types','药品类型名称',1,'药品类型1',NULL,'2021-04-30 11:37:01'),(21,'yaopin_types','药品类型名称',2,'药品类型2',NULL,'2021-04-30 11:37:01'),(22,'yaopin_types','药品类型名称',3,'药品类型3',NULL,'2021-04-30 14:57:32');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',1,'2021-04-30 14:43:19','公告1的详情\r\n','2021-04-30 14:43:19');

/*Table structure for table `hushi` */

DROP TABLE IF EXISTS `hushi`;

CREATE TABLE `hushi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `hushi_name` varchar(200) DEFAULT NULL COMMENT '护士姓名 Search111 ',
  `hushi_phone` varchar(200) DEFAULT NULL COMMENT '护士手机号 Search111 ',
  `hushi_id_number` varchar(200) DEFAULT NULL COMMENT '护士身份证号 Search111 ',
  `hushi_photo` varchar(200) DEFAULT NULL COMMENT '护士照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='护士';

/*Data for the table `hushi` */

insert  into `hushi`(`id`,`username`,`password`,`hushi_name`,`hushi_phone`,`hushi_id_number`,`hushi_photo`,`sex_types`,`create_time`) values (25,'a11','123456','张11','17703786911','410224199610232011','http://localhost:8080/dianzibinglixitong/file/download?fileName=1619762794443.jpg',2,'2021-04-30 14:06:38');

/*Table structure for table `jiancha` */

DROP TABLE IF EXISTS `jiancha`;

CREATE TABLE `jiancha` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '患者',
  `jiancha_name` varchar(200) DEFAULT NULL COMMENT '检查姓名 Search111 ',
  `jiancha_types` int(11) DEFAULT NULL COMMENT '检查类型 Search111 ',
  `jiancha_content` text COMMENT '检查详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '检查时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='检查';

/*Data for the table `jiancha` */

insert  into `jiancha`(`id`,`yonghu_id`,`jiancha_name`,`jiancha_types`,`jiancha_content`,`insert_time`,`create_time`) values (25,25,'检查腿部有没有病变',1,'做了个腿部ct,没有发现任何病变,ct图片如下:\r\n<img src=\"http://localhost:8080/dianzibinglixitong/upload/1619763051148.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/dianzibinglixitong/upload/1619763051148.jpg\">\r\n','2021-04-30 14:11:01','2021-04-30 14:11:01'),(26,25,'钱1腹部检查',2,'检查腹部,查看有没有变形\r\nct检测图如下:\r\n<img src=\"http://localhost:8080/dianzibinglixitong/upload/1619765671393.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/dianzibinglixitong/upload/1619765671393.jpg\">\r\n','2021-04-30 14:54:39','2021-04-30 14:54:39');

/*Table structure for table `menzhenbingli` */

DROP TABLE IF EXISTS `menzhenbingli`;

CREATE TABLE `menzhenbingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '患者',
  `guominshi` varchar(200) DEFAULT NULL COMMENT '过敏史',
  `bingli_content` text COMMENT '病例详情',
  `zhenduan_content` text COMMENT '诊断详情',
  `chufang_content` text COMMENT '处方详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='门诊病历';

/*Data for the table `menzhenbingli` */

insert  into `menzhenbingli`(`id`,`yonghu_id`,`guominshi`,`bingli_content`,`zhenduan_content`,`chufang_content`,`insert_time`,`create_time`) values (25,26,'无','病例详情1\r\n','诊断1\r\n','','2021-04-30 14:14:10','2021-04-30 14:14:10'),(26,25,'酒精过敏','病例2的详情\r\n','病例2的诊断\r\n','病例2的处方详情\r\n','2021-04-30 15:02:49','2021-04-30 15:02:49');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','f6lfh9vzuu57kzh45st62j4ihen4j0mj','2021-04-30 13:58:08','2021-04-30 16:01:15'),(2,25,'a11','hushi','护士','9swc1ky14s0lk2vdjj1sqquknc0ey7xh','2021-04-30 14:57:57','2021-04-30 15:57:57'),(3,26,'a2','yisheng','门诊医生','fx9yldcjitrbt705zfc1tjo5ik5821yv','2021-04-30 15:01:32','2021-04-30 16:01:32'),(4,25,'a1','yisheng','住院医生','fw9n291w0d4yp10ghu6w2ex6j2f1pkx8','2021-04-30 15:03:17','2021-04-30 16:03:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yaopin` */

DROP TABLE IF EXISTS `yaopin`;

CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名字 Search111 ',
  `yaopin_types` int(11) DEFAULT NULL COMMENT '药品类型 Search111 ',
  `danjia` decimal(10,2) DEFAULT NULL COMMENT '药品单价 Search111 ',
  `yaopin_content` text COMMENT '药品详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='药品';

/*Data for the table `yaopin` */

insert  into `yaopin`(`id`,`yaopin_name`,`yaopin_types`,`danjia`,`yaopin_content`,`insert_time`,`create_time`) values (25,'药品1',1,'100.00','药品详情1\r\n','2021-04-30 14:43:06','2021-04-30 14:43:06'),(26,'药品2',2,'17.00','药品2的详情\r\n','2021-04-30 14:56:55','2021-04-30 14:56:55');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号 Search111 ',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号 Search111 ',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `keshi_types` int(11) DEFAULT NULL COMMENT '科室 Search111 ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
  `role_types` int(11) DEFAULT NULL COMMENT '权限',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_name`,`yisheng_phone`,`yisheng_id_number`,`yisheng_photo`,`sex_types`,`keshi_types`,`zhiwei_types`,`role_types`,`create_time`) values (25,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/dianzibinglixitong/file/download?fileName=1619762590633.jpg',1,3,1,2,'2021-04-30 14:03:22'),(26,'a2','123456','张22','17703786902','410224199610232002','http://localhost:8080/dianzibinglixitong/file/download?fileName=1619762703378.jpg',1,2,2,1,'2021-04-30 14:05:10'),(27,'a3','12345677','张三','17703786903','410224199610232003','http://localhost:8080/dianzibinglixitong/file/download?fileName=1619765129927.jpg',1,2,1,1,'2021-04-30 14:45:44');

/*Table structure for table `yizhu` */

DROP TABLE IF EXISTS `yizhu`;

CREATE TABLE `yizhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '患者',
  `yizhu_content` text COMMENT '医嘱详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '开医嘱时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医嘱';

/*Data for the table `yizhu` */

insert  into `yizhu`(`id`,`yonghu_id`,`yizhu_content`,`insert_time`,`create_time`) values (25,26,'医嘱1\r\n','2021-04-30 14:11:54','2021-04-30 14:11:54'),(26,27,'多喝开水  多运动   多吃青菜,不要喝酒 不要熬夜 药要按时吃\r\n','2021-04-30 15:04:03','2021-04-30 15:04:03');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '患者姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '患者手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '患者身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '患者照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_age` int(11) DEFAULT NULL COMMENT '患者年龄',
  `jiashu_name` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `jiashu_phone` varchar(200) DEFAULT NULL COMMENT '家属联系方式',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='患者';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_age`,`jiashu_name`,`jiashu_phone`,`create_time`) values (25,'钱1','17703786901','410224199610232001','http://localhost:8080/dianzibinglixitong/file/download?fileName=1619762823256.jpg',2,18,'钱11','17703786901','2021-04-30 14:07:27'),(26,'钱2','17703786902','410224199610232002','http://localhost:8080/dianzibinglixitong/file/download?fileName=1619762939087.jpg',1,19,'钱22','17703786922','2021-04-30 14:09:22'),(27,'钱3','17703786903','410224199610232003','http://localhost:8080/dianzibinglixitong/file/download?fileName=1619765528829.jpg',2,16,'钱珊珊','17703786933','2021-04-30 14:52:34');

/*Table structure for table `zhuyuanbingli` */

DROP TABLE IF EXISTS `zhuyuanbingli`;

CREATE TABLE `zhuyuanbingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '患者',
  `guominshi` varchar(200) DEFAULT NULL COMMENT '过敏史',
  `ruyuantujing_types` int(11) DEFAULT NULL COMMENT '入院途径 Search111 ',
  `bingli_content` text COMMENT '病例详情',
  `zhenduan_content` text COMMENT '诊断详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='住院病历';

/*Data for the table `zhuyuanbingli` */

insert  into `zhuyuanbingli`(`id`,`yonghu_id`,`guominshi`,`ruyuantujing_types`,`bingli_content`,`zhenduan_content`,`insert_time`,`create_time`) values (25,25,'无',1,'病例详情1\r\n','诊断详情1\r\n','2021-04-30 14:42:41','2021-04-30 14:42:41'),(26,26,'面粉过敏',2,'住院病例病例2的详情\r\n','住院病例2的诊断\r\n','2021-04-30 15:04:53','2021-04-30 15:04:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
