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
	<span class="c-gray en">&gt;</span> 学生管理 <span class="c-gray en">&gt;</span>
	查看所有学生<a class="btn btn-success radius r mr-20"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="pd-20">
		<div class="text-c">

		</div>
		<div><h2> <span> 学生显示： </span></h2> </div>
<div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<thead>
			<tr class="text-c">
				<th width="60">编号</th>
				<th width="180">学生名</th>
				<th width="180">密码</th>
				<th width="90">创建者</th>
				<th width="130">创建时间</th>
				<th width="90">修改者</th>
				<th width="130">修改时间</th>
				<th width="60">状态</th>
				<th width="60">机构代号</th>
				<th width="60">版本号</th>
			</tr>
		</thead>
		<c:forEach items="${students }" var="student">
		<tbody>
			<tr class="text-c">
				<td>${student.id }</td>
				<td>${student.stuName }</td>
				<td>${student.stuPasword }</td>
				<td>${student.createBy }</td>
				<td><fmt:formatDate value="${student.createTime}" pattern="yyyy-MM-dd"/></td>
				<td>${student.modifyBy }</td>
				<td><fmt:formatDate value="${student.modifyTime}" pattern="yyyy-MM-dd"/></td>
				<td>${student.status }</td>
				<td>${student.corpId }</td>
				<td>${student.version }</td>
				<td>
					<%-- <a href="students/updateSi?id=${student.id }">修改</a>&nbsp;&nbsp;
					<a href="students/deletestu?id=${student.id }" onclick="return deleteSomething()"/>删除</a> --%>
					<a title="修改" href="javascript:;" onclick="paper_edit('修改','students/updateSi?id=${student.id }','400','500')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont"></i></a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a title="删除" href="students/deletestu?id=${student.id }" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont" onclick="return deleteSomething()" >&#xe6e2;</i></a>
				</td>
			</tr>
			</tbody>
		</c:forEach>
	
	</table>

<c:if test="${infos.pages>1}">
 <div style="text-align:center;font-size: 20px;height: 50px;">
  
      当前 ${infos.pageNum}页,总${infos.pages}页,总 ${infos.total} 条记录
      
   
  <a href="<%=basePath%>/students/getall?pagenum=1">首页</a>  
  
  
  <c:if test="${infos.hasPreviousPage }">
   <a href="<%=basePath%>/students/getall?pagenum=${infos.pageNum-1}">上一页</a>
  </c:if>
    
      
  <c:forEach items="${infos.navigatepageNums}" var="pagenumber">
  <a href="<%=basePath%>/students/getall?pagenum=${pagenumber}">${pagenumber}</a> 
  </c:forEach>
  
  
  <c:if test="${infos.hasNextPage }">
   <a href="<%=basePath%>/students/getall?pagenum=${infos.pageNum+1}">下一页</a>
   </c:if>
  

   
    <a href="<%=basePath%>/students/getall?pagenum=${infos.pages}">末页</a>   
  
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
	  <script type="text/javascript" language="javascript">
	  
	  function paper_edit(title,url,id,w,h){
			layer_show(title,url,w,h);
		}
	    function deleteSomething(){
		        if(confirm("是否确认删除")){
			        return true;
		        }else{
			        return false;
		        }
	    }
</script>
</body>
</html>