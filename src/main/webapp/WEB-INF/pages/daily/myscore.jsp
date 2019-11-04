<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>每日一练--我的历史成绩</title>
<link href="<%=basePath%>css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<nav class="breadcrumb"> <i class="Hui-iconfont">&#xe67f;</i> 首页
		<span class="c-gray en">&gt;</span> 每日一练<span class="c-gray en">&gt;</span>
		我的历史成绩 <a class="btn btn-success radius r mr-20"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新">
		<i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	
	<div class="mt-20">
		<h3 align="center">您的历史成绩</h3>
		<table class="table table-border table-bordered table-hover table-bg ">
			<thead>
				<tr class="text-c">
					<th>序号</th>
					<th>成绩</th>
					<th>答题时间</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${scores}" var="scores" varStatus="status">
					<tr class="text-c">
						<td>${status.index+1}</td>
						<td>${scores.score}</td>
						<td><fmt:formatDate value="${scores.dailyTime}" pattern="yyyy-MM-dd HH:MM" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
</body>
</html>