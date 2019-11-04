<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
           + request.getServerName() + ":" + request.getServerPort()
           + path + "/";
	%>
	<style>
		#hh{
			width: 380px;
			height: 400px;
			background-color: blanchedalmond;
			font-family: "楷体";
			font-size: 25px;
			color: blue;
			margin: 200px auto;
			padding: 35px;
		}
		#p1{
			padding-left: 105px;
			color: blue;
		}
		ul{
			padding-left: 65px;
			margin-top: 65px;
		}
		li{
			margin-top:15px ;
		}
		#hb{
			width:80px;
			height: 30px;
			background-color: blue;
			text-align: center;
			margin-left: 135px;
			margin-top: 90px;
		}
		
	</style>
	<body>
		
		<div id="hh">
			<p id="p1">学生成绩</p>
			<ul style="list-style: none;">
				<li>题目分值：${map.scope }分每道</li>
				<li>题目正确数目：${map.questionCount }道</li>
				<li>成绩：${map.studentScope }分</li>
			</ul>
			<div id="hb">
				<a href="<%=basePath%>chapter/chapterShowStudent?cuorseId=1" style='text-decoration:none;'><font color="white">返回</font></a>
			</div>
		</div>
		
		
	</body>
</html>
