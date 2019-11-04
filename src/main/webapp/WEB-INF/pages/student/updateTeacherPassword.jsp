<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html>

<head>
<meta charset="utf-8">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("webpath", path);
%>
<base href="<%=basePath%>">

<link href="<%=basePath%>css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/icheck.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/iconfont.css" rel="stylesheet" type="text/css" />
<title>密码修改</title>
</head>
<body>


<div class="pd-20">
  <form action="teachers/updateTeacherPassword"  method="post" class="form form-horizontal" id="form-member-add">
     
    <div class="row cl">
      <label class="form-label col-3"><span class="c-red">*</span>旧密码：</label>
      <div class="formControls col-5" id="sp1" >
        <input type="password" class="input-text" value=""  placeholder="请输入你的旧密码" id="oldPassword" name="oldPassword" ><span style="color: red">${msg}</span>
      </div>
      <div class="col-4"> </div>
    </div>
 	<div class="row cl">
      <label class="form-label col-3"><span class="c-red">*</span>新密码：</label>
      <div class="formControls col-5">
        <input type="password" class="input-text" value="" placeholder="请输入你的新密码" id="newPasswordone" name="newPasswordone" >
       
      </div>
      <div class="col-4"> </div>
    </div>
    
    <div class="row cl">
      <label class="form-label col-3"><span class="c-red">*</span>重复密码</label>
    <div class="formControls col-5">
        <input type="password" class="input-text" value="" placeholder="请重复你的新密码" id="newPasswordtwo" name="newPasswordtwo" >
        <span style="color: red" id="error1"></span>
      </div>
      <div class="col-4"> </div>
    </div>  
    <div class="row cl">
      <div class="col-9 col-offset-3">
        <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" onclick="return passwordcheck11()">
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
<script type="text/javascript" >
/* 
	function passwordcheck11(){
		var password1=document.getElementById("newPasswordone").value;
		//var x=document.forms["myForm"]["newPasswordone"].value;
		//alert(password1);
		var password2=document.getElementById("newPasswordtwo").value;
		if(password1==""||password1==null){
			alert("密码不能为空");	}
		if(password1!=password2){
			alert("密码不一致");	
		}	
	} */
	function passwordcheck11(){
		//var oldpassword=document.getElementById("oldPassword");
		var password1=document.getElementById("newPasswordone").value;
		//var x=document.forms["myForm"]["newPasswordone"].value;
		//alert(password1);
		var password2=document.getElementById("newPasswordtwo").value;
		if(password1==""||password1==null){
			alert("密码不能为空");
			return false;
			}
		if(password1!=password2){
			alert("密码不一致");	
			return false;
		}	
	} 
		
		
</script>
</body>
</html>