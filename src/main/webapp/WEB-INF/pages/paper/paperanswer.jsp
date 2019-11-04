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
<title>答题情况</title>
</head>
<body>
	<nav class="breadcrumb"> <i class="Hui-iconfont">&#xe67f;</i> 首页
	<span class="c-gray en">&gt;</span> 考试试卷 <span class="c-gray en">&gt;</span>
	学生答题信息 <a class="btn btn-success radius r mr-20"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="pd-20">
		<div class="text-c">
			日期范围： <input type="text"
				onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}'})"
				id="datemin" class="input-text Wdate" style="width: 120px;">
			- <input type="text"
				onfocus="WdatePicker({minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d'})"
				id="datemax" class="input-text Wdate" style="width: 120px;">
				
				
				
				
			<form action="${webpath}/paperAnswer/toPaperAnswer" method="post">
			
		<!-- 	<input type="submit" value="查询" />	 -->
			<input type="text" class="input-text" style="width: 100px"
				placeholder="学生学号" id="" name="stuId">
			
			<input type="text" class="input-text" style="width: 100px"
				placeholder="试卷编号" id="" name="questionId">

			<button type="submit" class="btn btn-success" id="" name="">
				<i class="Hui-iconfont">&#xe665;</i> 搜记录
			</button>
			</form>
			
			
			
			
		</div>



		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="datadel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a></span> <span class="r">共有数据：<strong>${infos.total}</strong> 条
			</span>
		</div>


		<div class="mt-20">
			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="80">ID</th>
						<th width="100">学生学号</th>
						<th width="100">姓名</th>
						<th width="90">试卷编号</th>
						<th width="130">题目详情</th>
						<th width="130">学生答案</th>
						<th width="130">标准答案</th>
						<th width="130">创建时间</th>
						<th width="60">操作</th>
					</tr>
				</thead>
				<!-- <tbody>
					<tr class="text-c">
						<td><input type="checkbox" value="1" name=""></td>
						<td>1</td>
						<td>1001</td>
						<td>张三</td>
						<td>2</td>
						<td class="text-l">你知道天上有多少可星星吗？</td>
						<td class="text-l">38亿颗</td>
						<td class="text-l">38.1亿颗</td>
						<td class="f-14"><a title="删除" href="javascript:;"
							onclick="user_del(this,'1')" class="ml-5"
							style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
					</tr>
					
				</tbody> -->
				<c:forEach items="${paperAnswerss}" var="paperAnswer">
					<tbody>
						<tr class="text-c">
							<td><input type="checkbox" value="1" name=""></td>
							<td>${paperAnswer.id }</td>
							<td>${paperAnswer.stuId}</td>
							<td>学生姓名</td>
							<td>${paperAnswer.paperId }</td>
							<td>${paperAnswer.questionId }</td>
							<td>${paperAnswer.answer}</td>
							<td>标准答案</td>
							<%-- <td>${paperAnswer.createTime}</td> --%>
							
							<td><fmt:formatDate value="${paperAnswer.createTime}"  
									pattern="yyyy-MM-dd" /></td>
							<!-- <td class="f-14"><a title="删除" href="javascript:;"
							onclick="user_del(this,'1')" class="ml-5"
							style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a></td> -->
							<td class="f-14"><a
								href="paperAnswer/deletePaperAnswer?tId=${paperAnswer.id}" class="ml-5"
								style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a>
								<%-- <td><a href="student/updateStudentUi?tId=${student.tId }">修改</a><a href="student/deleteStudent?tId=${student.tId }">删除</a></td> --%>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>


		<div style="width: 100%;margin-left: 10px">
			<br> 当前 ${infos.pageNum}页,总${infos.pages}页  
			<div style="margin-left:92%;margin-top: -20px"><a
				href="${webpath}/paperAnswer/toPaperAnswer?pagenum=1">首页</a>

			
			<c:if test="${infos.hasPreviousPage }">
				<a
					href="${webpath}/paperAnswer/toPaperAnswer?pagenum=${infos.pageNum-1}">上一页</a>
			</c:if>


			<c:forEach items="${infos.navigatepageNums}" var="pagenumber">
				<a href="${webpath}/paperAnswer/toPaperAnswer?pagenum=${pagenumber}">${pagenumber}</a>
			</c:forEach>


			<c:if test="${infos.hasNextPage }">
				<a
					href="${webpath}/paperAnswer/toPaperAnswer?pagenum=${infos.pageNum+1}">下一页</a>
			</c:if>



			<a href="${webpath}/paperAnswer/toPaperAnswer?pagenum=${infos.pages}">末页</a>
</div>
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
	<!-- <script type="text/javascript">
	$('.table-sort').dataTable({
			"aaSorting" : [ [ 0, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 0, 1 ]
			} // 制定列不参与排序
			]
		});
	</script> -->
</body>
</html>