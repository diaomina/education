<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- <h1>在线教育平台</h1>
	<a href="question_type/showQuestionTypes">查看所有题型</a><br><br>
	<a href="QuestionBank/showAllQuestion">查看题库</a><br><br>
	<a href="StudentQuestionError/showQuestionErrorUI">错题库 </a><br>
	
	
	<a href="login/login1">登录成功，进入教师端</a><br><br>
	<a href="login/login2">登录成功，进入学生端</a> -->
	<script>window.location.href='<%=basePath%>student/toLoginPage';</script>
	<a href="students/updateStudentPasswordUI">修改</a>
</body>
</html>