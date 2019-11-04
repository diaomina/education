<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%
		    String path = request.getContextPath();
		    String basePath = request.getScheme() + "://"
		           + request.getServerName() + ":" + request.getServerPort()
		           + path + "/";
		%>
		<title>选择课程</title>
		<style>
			#one{
				width: 700px;
				
				font-family: "楷体";
				font-size: 30px;
				color: #0f5e61;
				background: #cfeaf3;
				margin: 80px auto;
			}
			#one-header{
				
				width: 350px;
				margin:  auto;
				padding: 30px auto;
			}
			#one-bobo{
				text-align: center;
				color: orangered;
				height: 60px;
				
			}
			#space{
				height: 40px;
			}
			ul{
				padding-left: 100px;
			}
			li{
				padding-bottom: 10px;
			}
			h3{
				padding-top: 15px;
			}
			a{
				text-decoration:none;
			}
		</style>
	</head>
	<body>
		<div id="one">
			<div id="one-bobo">
				<h3>课程选择</h3>
			</div>
			<div id="one-header">
				<ul style="list-style: none;">
					<c:forEach items="${ listCourse}" var="course">
						<a href="<%=path%>/chapter/chapterShowTable?cuorseId=${course.id}" ><li>${course.courseName }</li></a>
					</c:forEach>
					
					
					
				</ul>
			</div>
			<div id="space">
				
			</div>
			
		</div>
		
	</body>
</html>
