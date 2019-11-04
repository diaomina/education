<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>答题结果</title>
</head>
<body>
	<nav class="breadcrumb"> <i class="Hui-iconfont">&#xe67f;</i> 首页
		<span class="c-gray en">&gt;</span> 每日一练<span class="c-gray en">&gt;</span>
		答题结果 <a class="btn btn-success radius r mr-20"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新">
		<i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<h3>您今日的分数:
		<c:if test="${score/scoreCount>0.6}" var="pass">
			<font color="green">${score}</font>
		</c:if>
		<c:if test="${not pass}">
			<font color="red">${score}</font>
		</c:if>
		分(满分${scoreCount}分)
	</h3>
	<table>
		<tr>
			<th>序号</th>
			<th>题目</th>
			<th>您的答案</th>
			<th>正确答案</th>
			<th>得分</th>
		</tr>
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
</body>
</html>