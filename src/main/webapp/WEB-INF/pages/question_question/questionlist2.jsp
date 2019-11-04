<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
<a href="QuestionBank/addQuestionUI">添加</a>
<table border="1px">
<tr>
<td>序号</td>
<td>试题内容</td>
<td>选项</td>
<td>答案</td>
<td>分值</td>
<td>章节</td>
<td>操作</td>

</tr>
<c:forEach  items="${questions }" var="que"  varStatus="status">
<tr id="ss">
<td>${status.index+1}</td>
<td>${que.questionContent }</td>
<td>
<c:if test="${que.questionTypeId==1}">
	A:${que.optionA}
	B:${que.optionB}
	C:${que.optionC}
	D:${que.optionD}
</c:if>
</td>
<td>${que.answer }</td>
<td>${que.score}</td>
<!-- 是否替换为课程和章节 -->
<td>${que.couserId }</td>
<td>
<a href="QuestionBank/updateQuestionUI?id=${que.id}">修改</a>
<a href="QuestionBank/delQuestion?id=${que.id}" onclick="return confirmd()">删除</a>
</td>

</tr>
</c:forEach>

</table>


		 <div style="text-align:center;font-size: 20px;height: 50px;">
  
      				当前 ${infos.pageNum}页,总${infos.pages}页,总 ${infos.total} 条记录 
  					<a href="<%=basePath%>QuestionBank/showAllQuestion?pagenum=1">首页</a>   
  					<c:if test="${infos.hasPreviousPage }">
   							<a href="<%=basePath%>QuestionBank/showAllQuestion?pagenum=${infos.pageNum-1}">上一页</a>
 					</c:if>
    
      
  					<c:forEach items="${infos.navigatepageNums}" var="pagenumber">
  							<a href="<%=basePath%>QuestionBank/showAllQuestion?pagenum=${pagenumber}">${pagenumber}</a> 
  					</c:forEach>
  
  
  					<c:if test="${infos.hasNextPage }">
   							<a href="<%=basePath%>QuestionBank/showAllQuestion?pagenum=${infos.pageNum+1}">下一页</a>
   					</c:if>  
    						<a href="<%=basePath%>QuestionBank/showAllQuestion?pagenum=${infos.pages}">末页</a>   
  
  </div>	




</body>
</html>