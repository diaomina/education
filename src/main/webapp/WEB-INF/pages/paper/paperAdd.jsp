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
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="<%=basePath%>css/H-ui.min.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>css/H-ui.admin.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>js/Hui-iconfont/1.0.1/iconfont.css"
	rel="stylesheet" type="text/css" />
<title>添加试卷</title>
</head>
<body>
	<nav class="breadcrumb"> <i class="Hui-iconfont">&#xe67f;</i> 首页
	<span class="c-gray en">&gt;</span> 试卷管理 <span class="c-gray en">&gt;</span>
	添加试卷 <a class="btn btn-success radius r mr-20"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="pd-20">
		<div class="text-c">
			 <form action="<%=basePath%>paper/paperAdd" method="post">
				<input type="text" class="input-text" style="width: 100px" placeholder="试卷名称" id="" name="paperName"> 
				<input type="text" class="input-text" style="width: 100px" placeholder="考试时间" id="" name="paperTime">
				
				<span class="select-box" style="width:150px">
					<select class="select" name="courseId" size="1"> 
						<c:forEach items="${courseList}" var="course">
							<option class="input-text" style="width: 100px" value="${course.id}">${course.courseName}</option> 
						</c:forEach>
					</select> 
				</span>
				
				<!-- <input type="submit" value="创建试卷并查询课程题目"> -->
				<button type="submit" class="btn btn-success" id="" name="">
					<i class="Hui-iconfont">&#xe665;</i> 创建试卷并查询课程题目
				</button>
				
			</form> 
		</div>

		
		<div class="mt-20">
			<form action="<%=basePath%>paper/paperQuestionAdd" method="post">
				<input type="hidden" value="${paperId}" name="paperId">
			
				<table
					class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr>
							<button type="submit" class="btn btn-success" id="" name="">
								<i class="Hui-iconfont">&#xe665;</i> 添加试题
							</button>
						</tr>
						<tr class="text-c">
							<th width="25"><input type="checkbox" name="questions" value=""></th>
							<th width="80">序号</th>
							<th width="80">题目ID</th>
							<th width="80">课程ID</th>
							<th width="80">题型</th>
							<th width="130">题目</th>
							<th width="130">答案</th>
							<th width="130">分值</th>
						</tr>
					</thead>
	
					<c:forEach items="${questionList}" var="question" varStatus="status">
						<tbody>
							<tr class="text-c">
								<td><input type="checkbox" value="${question.id}" name="questions"></td>
								<td>${status.index+1}</td>
								<td>${question.id}</td>
								<td>${question.couserId}</td>
								<td>
									<c:if test="${question.questionTypeId==1}">
										选择题
									</c:if>
									<c:if test="${question.questionTypeId==2}">
										判断题
									</c:if>
									<c:if test="${question.questionTypeId==3}">
										填空题
									</c:if>
								</td>
								<td><big style="float: left; color: blue">${question.questionContent}</big><br>
									<c:if test="${question.questionTypeId==1}">
									A.${question.optionA}&nbsp;&nbsp;
									B.${question.optionB}&nbsp;&nbsp;
									C.${question.optionC}&nbsp;&nbsp;
									D.${question.optionD}&nbsp;&nbsp;
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
	
</body>
</html>