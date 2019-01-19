SET NAMES UTF8;
DROP DATABASE IF EXISTS zx;
CREATE DATABASE zx CHARSET=UTF8;
USE zx;
 
-- 创建自学课程家族
 CREATE TABLE zx_clan(
	 cid INT PRIMARY KEY AUTO_INCREMENT,
	 cname VARCHAR(32)
 );

-- 插入自学课程家族数据
INSERT INTO zx_clan VALUES
(null,'电脑办公'),
(null,'平面设计'),
(null,'室内设计'),
(null,'室外设计'),
(null,'影视动画'),
(null,'机械设计'),
(null,'工业自动'),
(null,'程序开发'),
(null,'网页设计'),
(null,'会计课程');

-- 创建分类自学课程
CREATE TABLE zx_laptop(
	lid INT  PRIMARY KEY AUTO_INCREMENT,
	lname VARCHAR(64),
	classify VARCHAR(64),
	lecturer VARCHAR(64),
	crowd  VARCHAR(128),
	softver VARCHAR(64),
	basic VARCHAR(64),
	total INT, --总节数
	peocou INT, --学习总人数
	cid INT
);

-- 插入分类自学课程
INSERT INTO zx_laptop VALUES
(null,"计算机基础知识教程","初级","SAM 老师","电脑初学者","零基础","WIN XP，WIN7",140,0,1),
(null,"五笔打字视频教程","初级","李雨阳 老师","不会打字的学员，或会其它输入法，想转五笔输入法","零基础","王码五笔86版，金山打字通2003",43,0,1),
(null,"word2016基础视频教程","初级","黄建彬 老师","想学习信息化办公的学员，学习word图文排版的学员","有电脑打字基础","Word2016中文版",232,0,1),
(null,"Excel2016基础视频教程","初级","黄建彬 老师","想学习信息化办公的学员，学习Excel电子表格的学员","有电脑打字基础","Excel 2016中文版",226,0,1),
(null,"Excel2013函数大全教程","高级","曾贤志 老师","想提高Excel函数水平的学员","Excel基础","office2013中文版",232,0,1),
(null,"Excel VBA 2013视频教程","高级","曾贤志 老师","想学习Excel VBA编程的学员","Excel基础","office2013中文版",158,0,1),
(null,"PPT2016基础视频教程","初级","黄建彬 老师","想学习信息化办公的学员，学习PPT的学员","零基础","PPT2016中文版",1),
(null,"WPS2013文字教程","进阶","曾贤志 老师","想学习信息化办公的学员，学习WPS的学员","零基础","	WPS2013中文版",201,0,1),
(null,"Acrobat2015视频教程","进阶","付学军 老师","经常需要使用和编辑PDF文件的学员","有office软件基础","Acrobat DC 2015中文版",118,0,1),
(null,"iebook电子杂志制作教程","初级","舒清 老师","需要做多媒体电子书的学员","零基础","iebook 6.0",32,0,1),
(null,"WIN7视频教程","初级","刘国锋 老师","电脑爱好者","零基础","Windows7",19,0,1),
(null,"Visio视频教程","初级","雪上行者 老师","IT和商务专业人员","熟悉电脑操作","Visio2016中文版",89,0,1),
(null,"CorelDRAW X8视频教程","进阶","漓江 老师","平面设计人员","电脑基本知识","CorelDRAW X8",309,0,2),
(null,"PhotoshopCS5视频教程","进阶","刘国锋 老师","平面设计人员","电脑基本知识","PhotoshopCS5",196,0,2),
(null,"Illustrator CS6视频教程","进阶","应登奎 老师","平面设计人员","电脑基本知识","Illustrator CS6",187,0,2),
(null,"InDesign专业组版视频教程","高级","申鼻管 老师","	平面印刷人员","电脑基本知识","InDesign CS3",65,0,2),
(null,"ArtiosCAD包装设计视频教程","进阶","伍明 老师","印刷包装设计人员","电脑基本知识","ArtiosCAD7.6",31,0,2),
(null,"单反相机视频教程","初级","吴玮 老师","摄影爱好者","零基础","无需软件",55,0,2),
(null,"UI设计图标案例实战教程","高级","凌风云龙 老师","平面设计人员","PS,AI基础","PS CC2018,AI CC2018",76,0,2),
(null,"北京精雕实战教程","高级","唐 老师","浮雕设计人员","电脑基本知识","SurfMill7.0 ArtForm3.0",91,0,2),
(null,"素描入门视频教程","进阶","罗丹 老师","想学习素描的学员","无","无，纯手绘",112,0,2),
(null,"Comicstudio漫画创作教程","初级","车 老师","喜欢漫画创造的爱好者","绘画基础","Comicstudio EX4.0",38,0,2),
(null,"3D2018室内设计入门教程","初级","谢灵 老师","有志从事室内设计、室内效果图制作的学员","零基础，PS基础","3Dmax2018，Vray3.6，Photoshop",278,0,3),
(null,"VR3.0室内效果图基础教程","进阶","余朝阳 老师","有志从事室内外效果图渲染表现的学员","3Dsmax建模基础，PS基础","3Dsmax2014中文版+VR3.0中文版",92,0,3),
(null,"CAD2019装修施工图教程","初级","谢灵 老师","有志从事室内设计，和CAD施工图绘制的学员","电脑基本知识","	AutoCAD2019中文版",214,0,3),
(null,"sketchup2018基础教程","进阶","鱼棠 老师","有志从事室内外设计的学员","可以零基础，有3dsmax或CAD基础更好。","sketchup2018中文版",186,0,3),
(null,"天正建筑视频教程","进阶","刘国锋 老师","有志从事室内外设计，和CAD施工图绘制的学员","AutoCAD基础","天正建筑7.5",153,0,3),
(null,"室内设计实战教程","高级","余朝阳 老师","有志从事室内设计，想对室内流程有全面了解的学员","需要VR渲染基础，CAD绘图基础，PS基础","CAD2010，3ds max2009，VR1.5sp2，PC CS5，都是中文版",267,0,3),
(null,"室内效果图制作教程","进阶","王嵩 老师","有志从事室内设计，从事效果图制作的学员","3D基础，VR基础，CAD基础","3d max2012中文版+VRay2.0中文,CAD2017中文版，PS CS3",138,0,3),
(null,"欧式家具建模视频教程","高级","李澍 老师","	有志从事欧式家具建模和表现的学员","需有3ds max多边形建模基础","3Ds max2013中文版",156,0,3);

-- 创建自学课程图表
CREATE TABLE zx_laptop_pic(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	lid INT,
	title VARCHAR(128),
	sm VARCHAR(128),
	md VARCHAR(128)
)
