<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("webpath", path);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="<%=basePath%>css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>js/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<title>添加题目</title>
</head>
<body>
	<nav class="breadcrumb"> <i class="Hui-iconfont">&#xe67f;</i> 首页
		<span class="c-gray en">&gt;</span> 每日一练<span class="c-gray en">&gt;</span>
		添加题目 <a class="btn btn-success radius r mr-20"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新">
		<i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="pd-20">
		
		<div class="mt-20">
			<form action="<%=basePath%>daily/addquestions" method="post">
				<table
					class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr>
							<td colspan="4">
							选择练习日期：
							<input id="date" class="btn btn-success" type="date" placeholder="练习日期" name="date">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="btn btn-success" type="submit" value="添加到题库" onclick="return check()">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font color="green">${msg}</font>
							</td>
						</tr>
						
						<tr class="text-c">
							<th width="25"><input type="checkbox" name="questions" value=""></th>
							<th width="80px">题目序号</th>
							<th width="80px">题目类型</th>
							<th>题目</th>
							<th width="80px">答案</th>
							<th width="40px">分值</th>
						</tr>
					</thead>
	
					<c:forEach items="${questions}" var="question">
						<tbody>
							<tr class="text-c">
								<td><input type="checkbox" name="questions"
									value="${question.id}"></td>
								<td name="questionid">${question.id}</td>
								<td><c:if test="${question.questionTypeId==1}">选择题</c:if> <c:if
										test="${question.questionTypeId==2}">判断题</c:if> <c:if
										test="${question.questionTypeId==3}">填空题</c:if></td>
								<td><big style="color: blue">${question.questionContent}</big>
									<c:if test="${question.questionTypeId==1}"><br>
										A.${question.optionA}&nbsp;&nbsp;
										B.${question.optionB}&nbsp;&nbsp;
										C.${question.optionC}&nbsp;&nbsp;
										D.${question.optionD}
									</c:if>
								</td>
								<td>${question.answer}</td>
								<td>${question.score}</td>
							</tr>
						
						</tbody>
					</c:forEach>
				</table>
				
			</form>
		</div>
		
		
	</div>

	<script type="text/javascript"
		src="<%=basePath%>js/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>js/layer/1.9.3/layer.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>js/laypage/1.2/laypage.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>js/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/H-ui.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/H-ui.admin.js"></script>
	<script>
		function check() {
			var date = $("#date").val();
			if(date=="") {
				alert("请填写练习日期！");
				return false;
			}
			return true;
		}
	</script>
	
</body>
</html>