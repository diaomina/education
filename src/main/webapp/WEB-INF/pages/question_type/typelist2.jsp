<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<base href="<%=basePath%>">

<body>
<script type="text/javascript"> 
function confirmd() {  
            var msg = "确定删除该条数据？";  
            if (confirm(msg)==true){  
                return true;  
            }else{  
                return false;  
            }  
        }  
</script> 

<a href="question_type/addQuestionTypeUI" onclick="">添加</a>
<table>


<tr>
<td>ID</td>
<td>类型名称</td>
</tr>

<c:forEach items="${types}" var="t">
<tr>
<td>${t.id}</td>
<td>${t.questionType}</td>
<td><a href="question_type/updateQuestionTypeUI?id=${t.id}&questionType=${t.questionType}">修改</a></td>
<td>
<a href="question_type/delQuestionType?id=${t.id}" onclick="return confirmd()">删 除</a> 

</td>
</tr>
</c:forEach>
</table>
</body>
</html>