<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<link href="<%=basePath%>js/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>js/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />

<title>添加章节试题</title>
</head>
<body>
<div class="pd-20">
	
  <form action="<%=basePath%>chapterPractice/addChapterPractice" method="post" class="form form-horizontal" id="form-member-add">
   <input type="hidden" name="chapterId" value="${chapterId }" >
    
    <div class="row cl">
		<label class="form-label col-3">试题内容：</label>
		<div class="formControls col-5">
			<textarea name="chapterPRacticeName" cols="" rows="" class="textarea"  placeholder="试题内容80个字符以内" dragonfly="true" onKeyUp="textarealength(this,80)" datatype="*2-80" nullmsg="章节名不能为空"></textarea>
			<p class="textarea-numberbar"><em class="textarea-length">0</em>/80</p>
		</div>
		<div class="col-4"> </div>
	</div>
    
    <div class="row cl" id="a">
      <label class="form-label col-3"><span class="c-red">*</span>试题选项A：</label>
      <div class="formControls col-5">
        <input type="text" class="input-text" value="" placeholder="输入试题选项A内容" id="option_a" name="option_a" datatype="*1-40" nullmsg="试题选项A内容不能为空">
      </div>
      <div class="col-4"> </div>
    </div>
    
    <div class="row cl" id="b">
      <label class="form-label col-3"><span class="c-red">*</span>试题选项B：</label>
      <div class="formControls col-5">
        <input type="text" class="input-text" value="" placeholder="输入试题选项B内容" id="option_b" name="option_b" datatype="*1-40" nullmsg="试题选项B内容不能为空">
      </div>
      <div class="col-4"> </div>
    </div>
    
    <div class="row cl" >
      <label class="form-label col-3"><span class="c-red">*</span>试题选项C：</label>
      <div class="formControls col-5">
        <input type="text" class="input-text" value="" placeholder="输入试题选项C内容" id="option_c" name="option_c" datatype="*1-40" nullmsg="试题选项C内容不能为空">
      </div>
      <div class="col-4"> </div>
    </div>
    
    <div class="row cl">
      <label class="form-label col-3"><span class="c-red">*</span>试题选项D：</label>
      <div class="formControls col-5">
        <input type="text" class="input-text" value="" placeholder="输入试题选项D内容" id="option_d" name="option_d" datatype="*1-40" nullmsg="试题选项D内容不能为空">
      </div>
      <div class="col-4"> </div>
    </div>
    
    <div class="row cl">
      <label class="form-label col-3"><span class="c-red">*</span>试题答案：</label>
      <div class="formControls col-5">
        <input type="text" class="input-text" value="" placeholder="输入试题答案" id="questionAnwser" name="questionAnwser" datatype="*1-2" nullmsg="试题答案不能为空">
      </div>
      <div class="col-4"> </div>
    </div>
    
    <div class="row cl">
      <label class="form-label col-3"><span class="c-red">*</span>试题分值：</label>
      <div class="formControls col-5">
        <input type="text" class="input-text" value="" placeholder="输入试题分值" id="questionScore" name="questionScore" datatype="*1-2" nullmsg="试题分值不能为空">
      </div>
      <div class="col-4"> </div>
    </div>
    
    <div class="row cl">
      <label class="form-label col-3"><span class="c-red">*</span>创建人：</label>
      <div class="formControls col-5">
        <input type="text" class="input-text" value="" placeholder="请输入你的用户名" id="createBy" name="createBy" datatype="*2-16" nullmsg="创建人2~16位">
      </div>
      <div class="col-4"> </div>
    </div>
    
    <div class="row cl">
      <label class="form-label col-3"><span class="c-red">*</span>试题状态：</label>
      <div class="formControls col-5 skin-minimal">
        <div class="radio-box">
          <input type="radio" id="sex-1" name="status" datatype="*" nullmsg="请选择章节试题状态！">
          <label for="sex-1">启用</label>
        </div>
        <div class="radio-box">
          <input type="radio" id="sex-2" name="status" >
          <label for="sex-2">禁用</label>
        </div>
      </div>
      <div class="col-4"> </div>
    </div>
    
    <div class="row cl">
      <label class="form-label col-3">版本号：</label>
      <div class="formControls col-5"> <span class="select-box">
        <select class="select" size="1" name="version" datatype="*" nullmsg="请选择版本号！">
          <option value="" selected>选择版本号</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
        </select>
       </span></div>
      <div class="col-4"> </div>
    </div>
    
    <div class="row cl">
      <div class="col-9 col-offset-3">
        <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
      </div>
    </div>
    
  </form>

</div>

<script type="text/javascript" src="<%=basePath%>js/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>js/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>js/Validform/5.3.2/Validform.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="<%=basePath%>js/H-ui.js"></script> 
<script type="text/javascript" src="<%=basePath%>js/H-ui.admin.js"></script>
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	 $("#form-member-add").Validform({
		tiptype:2,
		callback:function(form){
			
			var index = parent.layer.getFrameIndex(window.name);
			parent.$('.btn-refresh').click();
			var index = parent.layer.getFrameIndex(window.name);
			form[0].submit();
		}
	});  
});

</script>
</body>
</html>