<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>跳转页面</title>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
           + request.getServerName() + ":" + request.getServerPort()
           + path + "/";
%>
<link href="<%=basePath%>css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>js/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<style type="text/css">
	#hb{
			width:80px;
			height: 30px;
			background-color: #5a98de;
			text-align: center;
			margin-left: 385px;
			margin-top: 320px;
		}
		h3{
			margin: 20px auto;
		}
</style>

</head>
<body>
	<h3><font color="red">操作章节成功</font></h3>
	<div id="hb">
		<a href="javascript:;" onclick="member_add()" style='text-decoration:none;'><font color="white">关闭窗口</font></a>
	</div>
	
	<script type="text/javascript" src="<%=basePath%>js/jquery/1.9.1/jquery.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/laypage/1.2/laypage.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/My97DatePicker/WdatePicker.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/datatables/1.10.0/jquery.dataTables.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/H-ui.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/H-ui.admin.js"></script>
	<script type="text/javascript">
		function member_add(title,url,w,h){
			//alert(url);
			layer_close();
			
		}
		setTimeout(layer_close(), 5000);
	</script>
</body>
</html>