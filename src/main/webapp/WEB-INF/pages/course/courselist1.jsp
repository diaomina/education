<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%
   
    String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("webpath", path);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="breadcrumb"> <i class="Hui-iconfont">&#xe67f;</i> 首页
	<span class="c-gray en">&gt;</span> 课程管理 <span class="c-gray en">&gt;</span>
	查询课程<a class="btn btn-success radius r mr-20"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="pd-20">
		<div class="text-c">

		</div>
 <div>
  
  <form action="courses/getcourse" method="post">
       课程名<input type="text" name="courseName"/>   
   <input type="submit" value="查询"/>
   </form>
  </div>
  <div><h2> <span> 课程显示： </span></h2> </div>
 <div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<thead>
			<tr class="text-c">
				<th width="60">编号</th>
				<th width="180">课程名</th>
				<th width="90">创建者</th>
				<th width="130">创建时间</th>
				<th width="90">修改者</th>
				<th width="130">修改时间</th>
				<th width="60">状态</th>
				<th width="60">机构代号</th>
				<th width="60">版本号</th>
			</tr>
		</thead>
		<c:forEach items="${courses }" var="course">
		<tbody>
			<tr class="text-c">
				<td>${course.id }</td>
				<td>${course.courseName }</td>
				<td>${course.createBy }</td>
				<td><fmt:formatDate value="${course.createTime}" pattern="yyyy-MM-dd"/></td>
				<td>${course.modifyBy }</td>
				<td><fmt:formatDate value="${course.modifyTime}" pattern="yyyy-MM-dd"/></td>
				<td>${course.status }</td>
				<td>${course.corpId }</td>
				<td>${course.version }</td>
			</tr>
			</tbody>
		</c:forEach>
	
	</table>
	
	 <c:if test="${infos.pages>1}">
 <div style="text-align:center;font-size: 20px;height: 50px;">
  
      当前 ${infos.pageNum}页,总${infos.pages}页,总 ${infos.total} 条记录
      
   
  <a href="<%=basePath%>/courses/getcourse?pagenum=1">首页</a>  
  
  
  <c:if test="${infos.hasPreviousPage }">
   <a href="<%=basePath%>/courses/getcourse?pagenum=${infos.pageNum-1}">上一页</a>
  </c:if>
    
      
  <c:forEach items="${infos.navigatepageNums}" var="pagenumber">
  <a href="<%=basePath%>/courses/getcourse?pagenum=${pagenumber}">${pagenumber}</a> 
  </c:forEach>
  
  
  <c:if test="${infos.hasNextPage }">
   <a href="<%=basePath%>/courses/getcourse?pagenum=${infos.pageNum+1}">下一页</a>
   </c:if>
  

   
    <a href="<%=basePath%>/courses/getcourse?pagenum=${infos.pages}">末页</a>   
  
  </div>
  </c:if>	
  
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