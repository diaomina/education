<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<base href="<%=basePath%>">
<body>

<form action="QuestionBank/updateQuestion" method="post">
<input type="hidden" name="id" value="${question.id }">
题目：<input type="text" name="questionContent" value="${question.questionContent}"><br>
选项A:<input type="text" name="optionA" value="${question.optionA}"><br>
选项B:<input type="text" name="optionA" value="${question.optionB}"><br>
选项C:<input type="text" name="optionA" value="${question.optionC}"><br>
选项D:<input type="text" name="optionA" value="${question.optionD}"><br>
<!-- 上传 -->
图片:<input type="file" name="pictureUrl" value="${question.pictureUrl}"><br>
答案:<input type="text" name="answer" value="${question.answer}"><br>
分数：<input type="text" name="score" value="${question.score }"><br>
<input type="submit" value="修改">
</form>

</body>
</html>