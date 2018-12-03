SET NAMES UTF8;
DROP DATABASE IF EXISTS 51zxw;
CREATE DATABASE 51zxw CHARSET=UTF8;
USE 51zxw;

#网站的基本信息
CREATE TABLE 51zxw_site_info(
	site_name VARCHAR(32),
	logo VARCHAR(64),
	email VARCHAR(64),
	icp VARCHAR(64),
	copyright VARCHAR(64)
)
#插入网站基本信息

#导航栏
CREATE TABLE 51zxw_dh(
	did INT,
	dname VARCHAR(32)
)
INSERT INTO 51zxw_dh VALUES(null,'首页'),(null,'老师加盟'),(null,'学习辅助'),(null,'自学交流')

#课程分类表
CREATE TABLE 51zxw_course_class(
	cid INT,PRIMARY KEY AUTO_INCREMENT,
	cname VARCHAR(32) #分类名
);
INSERT INTO 51zxw_course_class VALUES(null,'电脑办公'),(null,'设计'),(null,'影视'),(null,'机械自动化'),(null,'程序开发'),(null,'网页开发'),(null,'会计')

#课程表
CREATE TABLE 51zxw_syllabus(
	sid INT,PRIMARY KEY AUTO_INCREMENT,
	cid INT, #所属类型
	sname VARCHAR(64) #课程名字
)

#注册信息表
CREATE TABLE 51zxw_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uanme VARCHAR(32),
	phone VARCHAR(12),
	email VARCHAR(64)
)