SET NAMES UTF8;
DROP DATABASE IF EXISTS zx;
CREATE DATABASE zx CHARSET=UTF8;
USE zx;
 
-- 创建自学课程家族
 CREATE TABLE zx_clan(
	 cid INT PRIMARY KEY AUTO_INCREMENT,
	 cname VARCHAR(32)
 )

-- 插入自学课程家族数据
INSERT INTO zx_clan VALUES(1,"电脑办公"),(2,"平面设计"),(3,"室内设计"),(4,"室外设计"),(5,"影视动画"),(6,"机械设计"),(7,"工业自动"),(8,"程序开发"),(9,"网页设计"),(10,"会计课程");

-- 创建分类自学课程
CREATE TABLE zx_laptop(
	lid INT  PRIMARY KEY AUTO_INCREMENT,
	lname VARCHAR(64),
	classify VARCHAR(64),
	lecturer VARCHAR(64),
	crowd  VARCHAR(128),
	softver VARCHAR(64),
	basic VARCHAR(64),
	cid INT
)

-- 插入分类自学课程
INSERT INTO zx_laptop VALUES
(null,"计算机基础知识教程","初级","SAM 老师","电脑初学者","零基础","WIN XP，WIN7"),
(null,"五笔打字视频教程","初级","李雨阳 老师","不会打字的学员，或会其它输入法，想转五笔输入法","零基础","王码五笔86版，金山打字通2003"),
(null,"word2016基础视频教程","初级","黄建彬 老师","想学习信息化办公的学员，学习word图文排版的学员","有电脑打字基础","Word2016中文版"),
(null,"Excel2016基础视频教程","初级","黄建彬 老师","想学习信息化办公的学员，学习Excel电子表格的学员","有电脑打字基础","Excel 2016中文版");