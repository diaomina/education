<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
           + request.getServerName() + ":" + request.getServerPort()
           + path + "/";
%>
<link href="<%=basePath%>css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>js/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<title>用户查看</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#5bacb6">
  <%! Integer num; %>
  <%
  	String stuId=request.getParameter("stuId");
  	Random random=new Random();
    int i=random.nextInt(10);
    if(num==null){
    	num=i;
    }
  	String img="user"+num+".png";
  %>
  
  <img class="avatar size-XL l" src="<%=basePath%>images/user/user${stuId%10}.png">
  <dl style="margin-left:80px; color:#fff">
    <dt><span class="pl-10 f-12">用户名：<font color="red">${stuName }</font></span> <span class="pl-10 f-12">成绩分数：<font color="red">${studentScope }</font></span></dt>
    <dd class="pt-10 f-12" style="margin-left:0">${goodName }</dd>
  </dl>
</div>
<div class="pd-20">
  <table class="table table-border  table-hover table-bg " >
	  <thead>
		<tr class="text-l">
			<th width="40px">题号</th>
			<th width="">习题内容</th>
			<th width="120px">你的答案</th>
			<th width="60px">是否正确</th>
			<th width="50px">分值</th>
		</tr>
	</thead>
    <tbody>
	  <c:forEach items="${listScope }" var="scope" varStatus="status">
	  	<tr>
			<th>${status.count }</th>
	        <th class="text-l" >${scope.questionContext }</th>
	        <th>
	        	<c:if test="${scope.isOption==true }">
	        		${scope.optionContext }
	        	</c:if>
	        	<c:if test="${scope.isOption!=true }">
	        		<font color="red">此题未做</font>
	        	</c:if>
	        	
	        </th>
			<th>
				<c:if test="${scope.isTrue==true }">
					<font color="green">正确</font>
				</c:if>
				<c:if test="${scope.isTrue!=true }">
					<font color="red">错误</font>
				</c:if>
			</th>
			<th>${scope.questionScope }分</th>
	    </tr>
	  </c:forEach>
      
      
    </tbody>
  </table>
</div>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.3.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>js/H-ui.js"></script>
<script type="text/javascript" src="<%=basePath%>js/H-ui.admin.js"></script>
</body>
</html>