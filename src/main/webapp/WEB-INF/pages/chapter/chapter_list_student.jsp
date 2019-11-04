<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link href="<%=basePath%>css/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />

<style type="text/css">
	.pi{
			width: 150px;
			height:40px;
			margin-bottom: 10px;
	}
	#space{
		width: 100%;
		height: 60px;
	}
</style>

<title>章节管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 课程管理 <span class="c-gray en">&gt;</span> 章节管理 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
	<div class="cl pd-5 bg-1 bk-gray mt-20"> 
		<span class="l">

			<c:forEach items="${courseList }" var="course">
				<a href="<%=basePath%>chapter/chapterShowStudent?cuorseId=${course.id}" class="pi btn btn-primary  radius " width="35px"> ${course.courseName }</a>&nbsp;&nbsp;&nbsp;&nbsp;
			</c:forEach>
		</span>
		<span class="r">共有数据：<strong>${fn:length(listChapters)}</strong> 条</span> 
	</div>
	<div class="mt-20">
		<table class="table table-border table-bordered table-hover table-bg table-sort">
			<thead>
				<tr class="text-c">
					<th width="150">序号</th>
					<th width="">章节名</th>
					<th width="250">课程名</th>
					<th width="150">课程id</th>
					<th width="150">创建人</th>
					<th width="250">创建时间</th>
					
					<th with="200">章节练习管理</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listChapters }" var="chapter"  varStatus="sta">
					<tr class="text-c">
						<td>${sta.count }</td>
						<td>${chapter.chapterName }</td>
						<td>${course.courseName }</td>
						<td>${chapter.cuorseId }</td>
						<td>${chapter.createBy }</td>
						<td><fmt:formatDate value="${chapter.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						<td>
							<a href="javascript:;" onclick="chapterPractice(this,'${chapter.chapterId }')" class="btn btn-danger radius"> 章节练习</a> 
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<div id="space"></div>
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
		"aaSorting": [[ 0, "" ]],//默认第几个排序,参数desc降序，默认升序。
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

/*用户-停用*/
function member_stop(obj,id,cuorseId){
	//window.location.href="b.html";
	
	layer.confirm('确认要停用吗？',function(index){
		 
		layer.msg('已停用!',{icon: 5,time:1000}); 
		
		setTimeout(function(){
			window.location.href="${pageContext.request.contextPath}/chapter/updateChapterAction?status=true&chapterId="+id+"&cuorseId="+cuorseId;
		}, 2000);
		
	});
	
	//window.location.href="updateChapterAction?status=true&chapterId="+id+"&cuorseId="+cuorseId;
}

/*用户-启用*/
function member_start(obj,id,cuorseId){
	layer.confirm('确认要启用吗？',function(index){
		//$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
		//$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		//$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
		setTimeout(function(){
			window.location.href="updateChapterAction?status=false&chapterId="+id+"&cuorseId="+cuorseId;
		}, 2000);
	});
}
/*用户-编辑*/
function member_edit(title,url,id,w,h){
	
	layer_show(title,url,w,h);
}

 /*用户-删除*/
/* function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
} */ 

function chapterPractice(obj,chapterId){
	//alert(chapterId);
	window.location.href="${pageContext.request.contextPath}/chapterPractice/chapterPracticeStudent?chapterId="+chapterId;
}
</script> 
</body>
</html>