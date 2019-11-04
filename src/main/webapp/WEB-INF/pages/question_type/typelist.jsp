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
<title>查看试卷</title>
</head>
<body>
	<nav class="breadcrumb"> <i class="Hui-iconfont">&#xe67f;</i> 首页
	<span class="c-gray en">&gt;</span> 题库管理 <span class="c-gray en">&gt;</span>
	查看所有题型 <a class="btn btn-success radius r mr-20"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="pd-20">
		<div class="text-c">

		</div>


	<div><h2> <span> 题型显示： </span></h2> </div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="90">序号</th>
						<th width="130">题型ID</th>
						<th width="130">题型名称</th>
						<th >操作</th>
					</tr>
				</thead>

				<c:forEach items="${types}" var="t" varStatus="status">
					<tbody>
						<tr class="text-c">
							<td>${status.index+1}</td>
							<td>${t.id}</td>

							<td>${t.questionType}</td>
							<td class="f-14">
								<%-- <a title="修改" href="javascript:;" onclick="paper_edit('试卷修改','paper/toPaperUpdatePage?paperId=${choosePaperVO.paperId}','2','800','500')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont"></i></a> --%>
								<a title="修改" href="javascript:;" onclick="paper_edit('修改','question_type/updateQuestionTypeUI?id=${t.id}&questionType=${t.questionType}','${t.id}','400','500')" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont"></i></a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a title="删除" href="question_type/delQuestionType?id=${t.id}" class="ml-5" style="text-decoration: none"><i class="Hui-iconfont" onclick="return confirmd()" >&#xe6e2;</i></a>
							</td>
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
	<!-- 弹出层 js -->
	<script type="text/javascript">
		/*
			参数解释：
			title	标题
			url		请求的url
			id		需要操作的数据id
			w		弹出层宽度（缺省调默认值）
			h		弹出层高度（缺省调默认值）
		*/
		
	
		/*试卷修改*/
		function paper_edit(title,url,id,w,h){
			layer_show(title,url,w,h);
		}
		function confirmd() {  
            var msg = "确定删除该条数据？";  
            if (confirm(msg)==true){  
                return true;  
            }else{  
                return false;  
            }  
        }  
		
		
		
	</script>
</body>
</html>