<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("webpath", path);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link href="<%=basePath%>css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/icheck.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>修改试卷</title>
</head>
<body>
	<div class="pd-20">
		<form action="<%=basePath%>paper/paperUpdate" method="post" class="form form-horizontal" id="form-paper-update">
			<div class="mt-20">
				<table
					class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="50">试卷ID</th>
							<th width="300">试卷名字</th>
							<th width="130">出卷人</th>
							<th width="90">考试时间</th>
						</tr>
					</thead>
					<tbody>
						<tr class="text-c">
							<td>${paper.id}</td>
							<td><input type="text" name="paperName" value="${paper.paperName}" style="width:300px; height:30px;"/></td>
							<td><input type="text" name="createBy" value="${paper.createBy}" style="width:130px; height:30px;"/></td>
							<td><input type="text" name="paperTime" value="${paper.paperTime}" style="width:90px; height:30px;" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<br/>
			<div class="col-9 col-offset-3">
				<input type="hidden" name="id" value="${paper.id}">
				<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" onclick="layer_close()"/>
			</div>
		</form>
	</div>
	
	<script type="text/javascript" src="<%=basePath%>>lib/jquery/1.9.1/jquery.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>>lib/icheck/jquery.icheck.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>>lib/Validform/5.3.2/Validform.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>>lib/layer/1.9.3/layer.js"></script> 
	<script type="text/javascript" src="<%=basePath%>>js/H-ui.js"></script> 
	<script type="text/javascript" src="<%=basePath%>>/js/H-ui.admin.js"></script> 
	<script type="text/javascript">
		$(function(){
			$("#form-paper-update").Validform({
				tiptype:2,
				callback:function(form){
					form[0].submit();
					var index = parent.layer.getFrameIndex(window.name);
					parent.$('.btn-refresh').click();
					parent.layer.close(index);
				}
			});
		});
	</script>
	
	

</body>
</html>