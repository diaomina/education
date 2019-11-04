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
	添加课程<a class="btn btn-success radius r mr-20"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="pd-20">
		<div class="text-c">

		</div>
<fieldset>
	<legend>课程添加</legend>
		<form action="courses/addcourses">
		课&nbsp;程&nbsp;名:<input type="text" name="courseName"/><br />
		创&nbsp;建&nbsp;者:<input type="text" name="createBy"/><br />
		创建时间:<input type="text" name="createTime"/><br />
		修&nbsp;改&nbsp;者:<input type="text" name="modifyBy"/><br />
		修改时间:<input type="text" name="modifyTime"/><br />
		状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态:<input type="text" name="status" value="0"/><br />
		机构代号<input type="text" name="corpId" value="10086"/><br />
		版&nbsp;本&nbsp;号<input type="text" name="version" value="1"/><br />
		<input type="submit" value="添加">
		</form>
</fieldset>
</body>
</html>