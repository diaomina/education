<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
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

<title>在线考试</title>
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
					<form id="upPaperFrom" action="<%=basePath %>chapterPractice/chapterPracticeTest" method="post">
						<div class="test_title">
							<p class="test_time">
								<i class="icon iconfont">&#xe6fb;</i><b class="alt-1">00:30</b>
							</p>
							<font><input type="submit" name="test_jiaojuan" value="交卷"></font>
							
							<input type="hidden" name="chapterId" value="${chapterPractices[0].chapterpId}">
							
						</div>
						
						<div class="test_content">
							<div class="test_content_title">
								<h2>选择题</h2>
								<p>
									<span>共</span><i class="content_lit" name="questionCount">${fn:length(questions)}</i><span>题</span>
								</p>
							</div>
						</div>
						
						<!-- 选择题题目模块 -->
						<div class="test_content_nr">
							<input type="hidden" name="chapterId" value="${list[0].chapterpId }"> 
							<ul>
								<c:forEach items="${questions}" var="chapterQuestion" varStatus="status">
								<li id="qu_0_${status.index}">
									<input type="hidden" name="questionId" value="${chapterQuestion.id}">
									<input type="hidden" name="${chapterQuestion.id}_scope" value="${chapterQuestion.questionScore}" >
									<input type="hidden" name="${chapterQuestion.id}_questionName" value="${chapterQuestion.chapterPRacticeName}" >
									<div class="test_content_nr_tt">
										<i>${status.count}</i><span name="questionScope">(${chapterQuestion.questionScore}分)</span><font name="questionName" >${chapterQuestion.chapterPRacticeName}</font><b class="icon iconfont">&#xe881;</b>
									</div>
	
									<div class="test_content_nr_main">
										
										<ul>
											<li class="option">
													<input type="radio" class="radioOrCheck" name="${chapterQuestion.id }" id="${chapterQuestion.id}_option_1" value="A" />
												<label for="0_answer_1_option_1">
													A.
													<p class="ue" style="display: inline;">${chapterQuestion.option_a}</p>
												</label>
											</li>
											<li class="option">
													<input type="radio" class="radioOrCheck" name="${chapterQuestion.id }" id="${chapterQuestion.id}_option_2" value="B"/>
												<label for="0_answer_1_option_2">
													B.
													<p class="ue" style="display: inline;">${chapterQuestion.option_b}</p>
												</label>
											</li>
											<li class="option">
													<input type="radio" class="radioOrCheck" name="${chapterQuestion.id }" id="${chapterQuestion.id}_option_3" value="C"/>
												<label for="0_answer_1_option_3">
													C.
													<p class="ue" style="display: inline;">${chapterQuestion.option_c}</p>
												</label>
											</li>
											<li class="option">
													<input type="radio" class="radioOrCheck" name="${chapterQuestion.id }" id="${chapterQuestion.id}_option_4" value="D"/>
												<label for="0_answer_1_option_4">
													D.
													<p class="ue" style="display: inline;">${chapterQuestion.option_d}</p>
												</label>
											</li>
										</ul>
									</div>
								</li>
								</c:forEach>
							</ul>
						</div>
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