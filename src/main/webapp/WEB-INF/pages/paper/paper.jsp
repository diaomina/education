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
					<form id="upPaperFrom" action="<%=basePath%>paper/upPaper" method="post">
						<div class="test_title">
							<p class="test_time">
								<i class="icon iconfont">&#xe6fb;</i>
								<b class="alt-1">剩余时间：</b>
								<b class="alt-1">${showPaper.paperTime}</b>
							</p>
							<p class="test_time">
								<i class="icon iconfont">&#xe6fb;</i>
								<b class="alt-1">试卷总分：</b>
								<b class="alt-1">${showPaper.scoreAll}</b>
							</p>
							<font><input type="submit" id="test_jiaojuan" name="test_jiaojuan" value="交卷"></font>
							
							<input type="hidden" name="myPaperId" value="${myPaperId}">
							
						</div>
						
							<div class="test_content">
								<div class="test_content_title">
									<h2>选择题</h2>
									<p>
										<span>共</span><i class="content_lit">${showPaper.questionType1List.size()}</i><span>题</span>
									</p>
								</div>
							</div>
							
							<!-- 选择题题目模块 -->
							<div class="test_content_nr">
								<ul>
									<c:forEach items="${showPaper.questionType1List}" var="question" varStatus="status">
										<li id="qu_0_${status.index}">
											<div class="test_content_nr_tt">
												<i>${status.index+1}</i><span>(${question.score}分)</span><font>${question.questionContent}</font><b class="icon iconfont">&#xe881;</b>
											</div>

											<div class="test_content_nr_main">
												<ul>
													<li class="option">
															<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_1" value="A" />
														<label for="0_answer_${status.index+1}_option_1">
															A.
															<p class="ue" style="display: inline;">${question.optionA}</p>
														</label>
													</li>
													<li class="option">
															<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_2" value="B"/>
														<label for="0_answer_${status.index+1}_option_2">
															B.
															<p class="ue" style="display: inline;">${question.optionB}</p>
														</label>
													</li>
													<li class="option">
															<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_3" value="C"/>
														<label for="0_answer_${status.index+1}_option_3">
															C.
															<p class="ue" style="display: inline;">${question.optionC}</p>
														</label>
													</li>
													<li class="option">
															<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_4" value="D"/>
														<label for="0_answer_${status.index+1}_option_4">
															D.
															<p class="ue" style="display: inline;">${question.optionD}</p>
														</label>
													</li>
												</ul>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						
						
							<!-- 判断题模块 -->
							<div class="test_content">
								<div class="test_content_title">
									<h2>判断题</h2>
									<p>
										<span>共</span><i class="content_lit">${showPaper.questionType2List.size()}</i><span>题</span>
									</p>
								</div>
							</div>
							
							
							<div class="test_content_nr">
								<ul>
										<c:forEach items="${showPaper.questionType2List}" var="question" varStatus="status">
										
										<li id="qu_1_${status.index}">
											<div class="test_content_nr_tt">
												<i>${status.index+1}</i><span>(${question.score}分)</span><font>${question.questionContent}</font><b class="icon iconfont">&#xe881;</b>
											</div>

											<div class="test_content_nr_main">
												<ul>
														<li class="option">
															<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_1" value="对"/>
															<label for="${status.index}_option_1">
																对
															</label>
														</li>
														<li class="option">
															<input type="radio" class="radioOrCheck" name="${question.id}" id="${question.id}_option_2" value="错"/>
															<label for="${status.index}_option_2">
																错
															</label>
														</li>
												</ul>
											</div>
										</li>
										
										</c:forEach>
									
								</ul>
							</div>
							
							
							
							<!-- 填空题模块 -->
							<div class="test_content">
								<div class="test_content_title">
									<h2>填空题</h2>
									<p>
										<span>共</span><i class="content_lit">${showPaper.questionType3List.size()}</i><span>题</span>
									</p>
								</div>
							</div>
							
							
							<div class="test_content_nr">
								<ul>
									<c:forEach items="${showPaper.questionType3List}" var="question" varStatus="status">
										<li id="qu_2_${status.index}">
											<!-- 题目  -->
											<div class="test_content_nr_tt">
												<i>${status.index+1}</i><span>(${question.score}分)</span><font>${question.questionContent}</font><b class="icon iconfont">&#xe881;</b>
											</div>

											<div class="test_content_nr_main">
												<!-- 填空 -->
												<%-- 请输入您的答案： &nbsp;&nbsp;
												<input type="text" name="${question.id}"> --%>
												<input class="tiankong" type="text" placeholder="输入正确答案" style="outline:medium;border-bottom-color: #808080;border-left: none;border-right: none;border-top: none;border-bottom-width: 1px;" name="${question.id}">
											</div>
										</li>
									</c:forEach>
								
								</ul>
							</div>
			</form>
			
		</div>
		</div>
		
		
		<!-- 答题卡 start-->
		<div class="nr_right">
				<div class="nr_rt_main">
					<div class="rt_nr1">
						<div class="rt_nr1_title">
							<h1>
								<i class="icon iconfont">&#xe692;</i>答题卡
							</h1>
							<p class="test_time">
								<i class="icon iconfont">&#xe6fb;</i><b class="alt-2">${showPaper.paperTime}</b>
							</p>
						</div>
						
						<div class="rt_content">
							<div class="rt_content_tt">
								<h2>选择题</h2>
								<p>
									<span>共</span><i class="content_lit">${showPaper.questionType1List.size()}</i><span>题</span>
								</p>
							</div>
							<div class="rt_content_nr answerSheet">
								<ul>
									<c:forEach items="${showPaper.questionType1List}" var="question" varStatus="status">
										<li><a href="#qu_0_${status.index}">${status.index+1}</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
						
						<div class="rt_content">
							<div class="rt_content_tt">
								<h2>判断题</h2>
								<p>
									<span>共</span><i class="content_lit">${showPaper.questionType2List.size()}</i><span>题</span>
								</p>
							</div>
							<div class="rt_content_nr answerSheet">
								<ul>
									<c:forEach items="${showPaper.questionType2List}" var="question" varStatus="status">
										<li><a href="#qu_1_${status.index}">${status.index+1}</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
						
						<div class="rt_content">
							<div class="rt_content_tt">
								<h2>填空题</h2>
								<p>
									<span>共</span><i class="content_lit">${showPaper.questionType3List.size()}</i><span>题</span>
								</p>
							</div>
							<div class="rt_content_nr answerSheet">
								<ul>
									<c:forEach items="${showPaper.questionType3List}" var="question" varStatus="status">
										<li><a href="#qu_2_${status.index}">${status.index+1}</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
						
						
						
					</div>

				</div>
			</div>
			<!-- 答题卡 end-->
		
		<div class="foot">
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
			
			$('.alt-1').countDown({
				css_class : 'countdown-alt-1'
			});
			
			$('.alt-2').countDown({
				css_class : 'countdown-alt-2'
			});
			
			
			$('.alt-1').on('time.elapsed', function () {
				alert("考试时间到，自动交卷!");
				document.getElementById('test_jiaojuan').click();
			});
		
		});
		
		
		$(function() {
			$('li.option input').click(function() {
			debugger;
				var examId = $(this).closest('.test_content_nr_main').closest('li').attr('id'); // 得到题目ID
				var cardLi = $('a[href=#' + examId + ']'); // 根据题目ID找到对应答题卡
				// 设置已答题
				if(!cardLi.hasClass('hasBeenAnswer')){
					cardLi.addClass('hasBeenAnswer');
				}
				
			});
			
			$('.tiankong').click(function() {
				debugger;
					var examId = $(this).closest('.test_content_nr_main').closest('li').attr('id'); // 得到题目ID
					var cardLi = $('a[href=#' + examId + ']'); // 根据题目ID找到对应答题卡
					// 设置已答题
					if(!cardLi.hasClass('hasBeenAnswer')){
						cardLi.addClass('hasBeenAnswer');
					}
					
				});
			
		});
		
		
		
		
	</script>
<div style="text-align:center;">
</div>

</body>

</html>