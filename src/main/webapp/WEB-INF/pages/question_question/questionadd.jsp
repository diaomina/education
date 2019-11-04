<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var XMLHttp;
	function createXMLHttpRequest(){
		if(window.XMLHttpRequest){
			  // code for IE7+, Firefox, Chrome, Opera, Safari						
				XMLHttp = new XMLHttpRequest();
			}else if(window.ActiveObject){	
			 // code for IE6, IE5										
				XMLHttp= new ActiveObject("Microsoft.XMLHTTP");
			}
	}
		
		function getchapter(){
			createXMLHttpRequest();
		var courseid=document.getElementById("course").value;
		if(XMLHttp!=null){
		XMLHttp.open("POST","QuestionBank/selectChapter",true);
		XMLHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;");
		XMLHttp.onreadystatechange=processRequest;
		XMLHttp.send("id="+courseid);
		
		}else{
			alert("不能创建XMLHttpRequest对象实例")
		}
		}
		
		function processRequest(){
			
			if(XMLHttp.readyState==4){
				if(XMLHttp.status==200){
					var  chapterSelect=	document.getElementById("chapter")
					var  chapteroption=chapterSelect.getElementsByTagName("option");
					while(chapteroption.length>1){
						
						chapter.removeChild(chapteroption[1]);
					}
					
					 /* var obj = document.getElementsByTagName("couserId")[0]; 
					    var selectOptions = obj.options; 
					    var optionLength = selectOptions.length; 
					    for(var i=0;i <optionLength;i++) 
					    { 
					      obj.removeChild(selectOptions[0]); 
					    }  */
					
					
					
					//alert(XMLHttp.responseText);
					var proArray=eval(XMLHttp.responseText);
					for(var i=0;i<proArray.length;i++){
						//alert(proArray.length);
		
						var pro=proArray[i];
						//alert(pro);
						var optionEle=document.createElement("option");
						
						optionEle.value=pro.chapterId;
						//alert(pro.chapterId);
						var textNode=document.createTextNode(pro.chapterName);
						optionEle.appendChild(textNode);
						document.getElementById("chapter").appendChild(optionEle);
							
					}
				}
			}
		}
		
		
	



</script>
</head>
<body>
<form action="QuestionBank/addQuestion" method="post" enctype="multipart/form-data">
<!-- 显示所有的课程和章节 -->
课程：<select  id="course" onchange="getchapter()">
  <option value ="">请选择</option>
  <c:forEach items="${couses}" var="c">
  <option value ="${c.id}">${c.courseName }</option>
  </c:forEach>
</select>
<!-- 显示所有的章节 -->
章节：<select name="couserId" id="chapter" >
 <option value ="">请选择</option>
</select><br>
题型:<select name="questionTypeId" id="questionType">
  <option value ="">请选择</option>
  <c:forEach items="${questionType}" var="q">
  <option value ="${q.id}">${q.questionType }</option>
  </c:forEach>
</select>
题目：<input type="text" height="20" width="20" name="questionContent"> <br>
选项A:<input type="text" name="optionA"><br>
选项B:<input type="text" name="optionB"><br>
选项C:<input type="text" name="optionC"><br>
选项D:<input type="text" name="optionD"><br>
图片：<input type="file" name="file"><br>
答案：<input type="text"  name="answer"><br>
分值：<input type="text" name="score"><br>
<input type="submit" value="上传">
</form>
</body>
</html>