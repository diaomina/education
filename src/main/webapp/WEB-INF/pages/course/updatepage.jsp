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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="courses/updateCou">
	 	<input type="hidden" name="id" value="${courses.id }"><br/>
		课&nbsp;程&nbsp;名:<input type="text" name="courseName" value="${courses.courseName }"/><br />
		创&nbsp;建&nbsp;者:<input type="text" name="createBy" value="${courses.createBy }" /><br />
		创建时间:<input type="text" name="createTime" value="<fmt:formatDate value="${courses.createTime}" pattern="yyyy-MM-dd"/>"/><br />
		修&nbsp;改&nbsp;者:<input type="text" name="modifyBy" value="${courses.modifyBy }"/><br />
		修改时间:<input type="text" name="modifyTime" value="<fmt:formatDate value="${courses.modifyTime}" pattern="yyyy-MM-dd"/>"/><br />
		状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态:<input type="text" name="status"  value="${courses.status }"/><br />
		机构代号<input type="text" name="corpId" value="${courses.corpId }"/><br />
		版&nbsp;本&nbsp;号<input type="text" name="version" value="${courses.version }"/><br />
		<input type="submit" value="修改">
	</form>
</body>
</html>