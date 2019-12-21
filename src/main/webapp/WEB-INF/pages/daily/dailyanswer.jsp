<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>答题结果</title>
<link href="<%=basePath%>css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<h3>您今日的分数:
		<c:if test="${score/scoreCount>0.6}" var="pass">
			<font color="green">${score}</font>
		</c:if>
		<c:if test="${not pass}">
			<font color="red">${score}</font>
		</c:if>
		分(满分${scoreCount}分)
	</h3>
	<div class="mt-20">
		<table class="table table-border table-bordered table-hover table-bg ">
			<thead>
				<tr class="text-c">
					<th>序号</th>
					<th>题目</th>
					<th>您的答案</th>
					<th>正确答案</th>
					<th>得分</th>
				</tr>
			</thead>
			<c:forEach items="${list}" var="table" varStatus="status">
				<tr>
					<td>${status.index+1}</td>
					<td>${table.question}</td>
					<td>${table.myAnswer}</td>
					<td>${table.rightAnswer}</td>
					<td>${table.score}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>