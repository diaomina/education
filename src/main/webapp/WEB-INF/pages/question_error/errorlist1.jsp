<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
           + request.getServerName() + ":" + request.getServerPort()
           + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>错题库</title>
<link href="<%=basePath%>css/main.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/iconfont.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/test.css" rel="stylesheet" type="text/css" />

<style>
.hasBeenAnswer {
	background: #5d9cec;
	color:#fff;
}

</style>
</head>

<body>
	<div class="main">
		<!--nr start-->
		<div class="test_main">
			<div class="nr_left">
				<div class="test">
					<form id="upPaperFrom" action="<%=basePath%>StudentQuestionError/showQuestionError" method="post">
						<div class="test_title">
							<p class="test_time">
								<i class="icon iconfont">&#xe6fb;</i><b class="alt-1">${showPaper.paperTime}</b>
							</p>
							<font><input type="submit" name="test_jiaojuan" value="提交"></font>
							
							
						</div>
							
							<!-- 选择题题目模块 -->
							<div class="test_content_nr">
								<ul>
										<c:forEach items="${errors}" var="question" varStatus="status">
										
										<c:if test="${question.questionTypeId==1 }">
										
										<li id="qu_0_${status.index}">
											<div class="test_content_nr_tt">
												<i>${status.index+1+(infos.pageNum-1)*10}</i><span>(${question.score}分)</span><font>${question.questionContent}</font><b class="icon iconfont">&#xe881;</b>
											</div>

											<div class="test_content_nr_main">
												<ul>
														<li class="option">
																<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_1" value="A" />
															<label for="0_answer_1_option_1">
																A.
																<p class="ue" style="display: inline;">${question.optionA}</p>
															</label>
														</li>
														<li class="option">
																<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_2" value="B"/>
															<label for="0_answer_1_option_2">
																B.
																<p class="ue" style="display: inline;">${question.optionB}</p>
															</label>
														</li>
														<li class="option">
																<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_3" value="C"/>
															<label for="0_answer_1_option_3">
																C.
																<p class="ue" style="display: inline;">${question.optionC}</p>
															</label>
														</li>
														<li class="option">
																<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_4" value="D"/>
															<label for="0_answer_1_option_4">
																D.
																<p class="ue" style="display: inline;">${question.optionD}</p>
															</label>
														</li>
												</ul>
											</div>
										</li>
										</c:if>
										<c:if test="${question.questionTypeId==2}">
													<li id="qu_1_${status.index}">
											<div class="test_content_nr_tt">
												<i>${status.index+1+(infos.pageNum-1)*10}</i><span>(${question.score}分)</span><font>${question.questionContent}</font><b class="icon iconfont">&#xe881;</b>
											</div>

											<div class="test_content_nr_main">
												<ul>
														<li class="option">
															<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_1" value="true"/>
															<label for="${question.id}_option_1">
																对
															</label>
														</li>
														<li class="option">
															<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_2" value="false"/>
															<label for="${question.id}_option_2">
																错
															</label>
														</li>
												</ul>
											</div>
										</li>
										
										
										</c:if>
										
										<c:if test="${question.questionTypeId==3}">
										<li id="qu_1_${status.index}">
						
											<div class="test_content_nr_tt">
												<i>${status.index+1+(infos.pageNum-1)*10}</i><span>(${question.score}分)</span><font>${question.questionContent}</font><b class="icon iconfont">&#xe881;</b>
											</div>

											<div class="test_content_nr_main">
												<!-- 填空 -->
												请输入您的答案： &nbsp;&nbsp;
												<input type="text" name="${question.id}">
											</div>
										</li>
										
										
										</c:if>
										
										</c:forEach>
									
								</ul>
							</div>
						
							
		
		
		<c:if test="${infos.pages>1}">
		 <div style="text-align:center;font-size: 20px;height: 50px;">
  
      				当前 ${infos.pageNum}页,总${infos.pages}页,总 ${infos.total} 条记录 
  					<a href="<%=basePath%>StudentQuestionError/showQuestionErrorUI?pagenum=1">首页</a>   
  					<c:if test="${infos.hasPreviousPage }">
   							<a href="<%=basePath%>StudentQuestionError/showQuestionErrorUI?pagenum=${infos.pageNum-1}">上一页</a>
 					</c:if>
    
      
  					<c:forEach items="${infos.navigatepageNums}" var="pagenumber">
  							<a href="<%=basePath%>StudentQuestionError/showQuestionErrorUI?pagenum=${pagenumber}">${pagenumber}</a> 
  					</c:forEach>
  
  
  					<c:if test="${infos.hasNextPage }">
   							<a href="<%=basePath%>StudentQuestionError/showQuestionErrorUI?pagenum=${infos.pageNum+1}">下一页</a>
   					</c:if>  
    						<a href="<%=basePath%>StudentQuestionError/showQuestionErrorUI?pagenum=${infos.pages}">末页</a>   
  
  </div>	
							
			</c:if>			

							
			</form>
			
		</div>
		<!--nr end-->
		<div class="foot"></div>
	</div>
	</div>
	</div>

	<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
	<script src="<%=basePath%>js/jquery.easy-pie-chart.js"></script>
	<!--时间js-->
	<script src="<%=basePath%>js/jquery.countdown.js"></script>
	<script>
		window.jQuery(function($) {
			"use strict";
			
			$('time').countDown({
				with_separators : false
			});
			$('.alt-1').countDown({
				css_class : 'countdown-alt-1'
			});
			
			if($.trim('.alt-1')=="00:00:00"){
				$('#upPaperFrom').submit();
			}
		});
		
		
	</script>
<div style="text-align:center;">
</div>

</body>

</html>