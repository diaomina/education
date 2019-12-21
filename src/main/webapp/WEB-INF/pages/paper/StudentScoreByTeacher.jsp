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
	<span class="c-gray en">&gt;</span> 选择学生 <span class="c-gray en">&gt;</span>
	查看以往成绩 </a><!-- <a class="btn btn-success radius r mr-20"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a> --></nav>
	<div class="pd-20">
		<div class="text-c">
			
		</div>



<div><h2> <span> 请选择试卷： </span></h2> </div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="80">序号</th>
						<th width="100">学生学号</th>
						<th width="90">姓名</th>
						<th width="90">课程</th>
						<th width="130">试卷</th>
						<th width="130">总分</th>
						<th width="130">提交时间</th>
						<th width="130">查看具体答题情况</th>
					</tr>
				</thead>
				
				<c:forEach items="${lists}" var="paperScore" varStatus="status">
					<tbody>
						<tr class="text-c">
							<td>${status.index+1}</td>
							<td>${paperScore.stuId }</td>
							<td>${paperScore.stuName}</td>
							<td>${paperScore.courseName }</td>
							<td>${paperScore.paperName}</td>
							<%-- <td>${paperAnswer.createTime}</td> --%>
							<td>${paperScore.paperScore}</td>
							<td><fmt:formatDate value="${paperScore.createTime}"  
									pattern="yyyy-MM-dd HH:MM" /></td>
							<td><a href="paperScore/toPaperAnswer2?tId=${paperScore.stuId}&&paperId=${paperScore.paperId}">点击开始查询</a></td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
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