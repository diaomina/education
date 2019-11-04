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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 学生端的错题库 -->
<form action="StudentQuestionError/showQuestionError">
<c:forEach items="${errors}" var="e" varStatus="s">
<div>

<h5>${s.index+1}. ${e.questionContent}</h5><br>
<c:if test="${e.questionTypeId==1 }">
<input type="hidden" name="id" value="${e.id}">
<input type="radio" name="${e.id}" value="A" >A:${e.optionA}
<input type="radio" name="${e.id}" value="B">B：${e.optionB }
<input type="radio" name="${e.id}" value="C">C：${e.optionC }
<input type="radio" name="${e.id}" value="D">D：${e.optionD }
</c:if>
<c:if test="${e.questionTypeId==2}">
<input type="radio" name="${e.id}" value="对">对
<input type="radio" name="${e.id}" value="错">错
</c:if>
</div>
</c:forEach>
<input type="submit" value="提交">
</form>

</body>
</html>