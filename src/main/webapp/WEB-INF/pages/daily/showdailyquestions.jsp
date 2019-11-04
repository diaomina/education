<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("webpath", path);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看已添加题目</title>
<link href="<%=basePath%>css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<nav class="breadcrumb"> <i class="Hui-iconfont">&#xe67f;</i> 首页
		<span class="c-gray en">&gt;</span> 每日一练<span class="c-gray en">&gt;</span>
		题目列表 <a class="btn btn-success radius r mr-20"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新">
		<i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="mt-20">
		<table class="table table-border table-bordered table-hover table-bg ">
			<thead>
				<tr class="text-c">
					<th>序号</th>
					<th>题型</th>
					<th>题目</th>
					<th>答案</th>
					<th>分值</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${questions}" var="questions" varStatus="status">
					<tr class="text-c">
						<td>${status.index+1}</td>
						<td><c:if test="${questions.question.questionTypeId==1}">选择题</c:if>
						<c:if test="${questions.question.questionTypeId==2}">判断题</c:if>
						<c:if test="${questions.question.questionTypeId==3}">填空题</c:if></td>
						<td><big style="color: blue">${questions.question.questionContent}</big>
							<c:if test="${questions.question.questionTypeId==1}"><br>
								A.${questions.question.optionA}&nbsp;&nbsp;
								B.${questions.question.optionB}&nbsp;&nbsp;
								C.${questions.question.optionC}&nbsp;&nbsp;
								D.${questions.question.optionD}
							</c:if>
						</td>
						<td>${questions.question.answer}</td>
						<td>${questions.question.score}</td>
						<td>
							<a href="<%=basePath%>daily/removequestion?id=${questions.id}&date=${date}" onclick="return confirm('是否移除？')">移除</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>