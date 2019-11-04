<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生章节练习成绩</title>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
           + request.getServerName() + ":" + request.getServerPort()
           + path + "/";
%>
<link href="<%=basePath%>css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="mt-20">
		<table class="table table-border table-bordered table-hover table-bg table-sort">
			<thead>
				
				<tr class="text-c">
					<th width="100">序号</th>
					<th width="150">用户名</th>
					<th width="250">课程名</th>
					<th width="250">章节名</th>
					<th width="250">章节成绩</th>
					<th width="200">创建时间</th>	
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listScope }" var="scope" varStatus="sta">
					<tr class="text-c">
						
						<td>${sta.count }</td>
						<td>${stuName }</td>
						<td>${listCourse[sta.index].courseName }</td>
						<td>${listChapter[sta.index].chapterName }</td>
						<td>
							<a title="我的答题" href="javascript:;" onclick="member_add('查看详情','<%=path%>/chapterScope/studentScopeShow?studentId=${stuId }&chapterId=${listChapter[sta.index].chapterId }','','660')" > ${scope.score }</a>
						</td>
						<td><fmt:formatDate value="${scope.modifyTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script type="text/javascript" src="<%=basePath%>js/jquery/1.9.1/jquery.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/laypage/1.2/laypage.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/My97DatePicker/WdatePicker.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/datatables/1.10.0/jquery.dataTables.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/H-ui.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/H-ui.admin.js"></script> 
	<script type="text/javascript">
	$(function(){
		$('.table-sort').dataTable({
			"aaSorting": [[ 0, "desc" ]],//默认第几个排序
			"bStateSave": true,//状态保存
			"aoColumnDefs": [
			  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			  {"orderable":false,"aTargets":[1]}// 制定列不参与排序
			]
		});
		$('.table-sort tbody').on( 'click', 'tr', function () {
			if ( $(this).hasClass('selected') ) {
				$(this).removeClass('selected');
			}
			else {
				table.$('tr.selected').removeClass('selected');
				$(this).addClass('selected');
			}
		});
	});
	
	/*章节-添加*/
	function member_add(title,url,w,h){
		//alert(url);
		layer_show(title,url,w,h);
		
	}
	</script> 

</body>
</html>