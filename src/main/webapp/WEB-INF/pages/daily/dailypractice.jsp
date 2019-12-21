<%@page import="com.soft.util.DateUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("webpath", path);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>每日一练</title>
<link href="<%=basePath%>css/main.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/iconfont.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/test.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="tip">
		<c:if test="${questions.size()==0}">
			<font color="red">今天没有题目，请联系老师添加题目</font>
		</c:if>
	</div>
	<c:if test="${questions.size()>0}">
		<div class="main">
			<!--nr start-->
			<div class="test_main">
				<div class="nr_left">
					<div class="test">
						<form id="upPaperFrom" action="<%=basePath%>dailyanswer/upanswer"
							method="post">
							<div class="test_title">
								<font>
									<input type="submit" id="test_jiaojuan"	name="test_jiaojuan" value="提交" onclick="return confirm('是否提交？')">
								</font>
							</div>
							<div class="test_content">
								<div class="test_content_title">
									<p>
										<span>共</span><i class="content_lit">${questions.size()}</i><span>题</span>
									</p>
								</div>
							</div>
							<c:forEach items="${questions}" var="question" varStatus="status">
								<input type="hidden" name="questionid" value="${question.id}">
								<input type="hidden" name="question"
									value="${question.questionContent}">
								<input type="hidden" name="score" value="${question.score}">
								<input type="hidden" name="rightanswer"	value="${question.answer}">

								<!-- 选择题题目模块 -->
								<c:if test="${question.questionTypeId==1}">
									<div class="test_content_nr">
										<ul>
											<li id="qu_0_${status.index}">
												<div class="test_content_nr_tt">
													<i>${status.index+1}</i><span>(${question.score}分)</span><font>${question.questionContent}</font><b
														class="icon iconfont">&#xe881;</b>
												</div>

												<div class="test_content_nr_main">
													<ul>
														<li class="option"><input type="radio"
															class="radioOrCheck" name="${question.id}"
															id="${question.id}_option_1" value="A" /> <label
															for="0_answer_${status.index+1}_option_1"> A.
																<p class="ue" style="display: inline;">${question.optionA}</p>
														</label></li>
														<li class="option"><input type="radio"
															class="radioOrCheck" name="${question.id}"
															id="${question.id}_option_2" value="B" /> <label
															for="0_answer_${status.index+1}_option_2"> B.
																<p class="ue" style="display: inline;">${question.optionB}</p>
														</label></li>
														<li class="option"><input type="radio"
															class="radioOrCheck" name="${question.id}"
															id="${question.id}_option_3" value="C" /> <label
															for="0_answer_${status.index+1}_option_3"> C.
																<p class="ue" style="display: inline;">${question.optionC}</p>
														</label></li>
														<li class="option"><input type="radio"
															class="radioOrCheck" name="${question.id}"
															id="${question.id}_option_4" value="D" /> <label
															for="0_answer_${status.index+1}_option_4"> D.
																<p class="ue" style="display: inline;">${question.optionD}</p>
														</label></li>
													</ul>
												</div>
											</li>
										</ul>
									</div>
								</c:if>

								<!-- 判断题模块 -->
								<c:if test="${question.questionTypeId==2}">
									<div class="test_content_nr">
										<ul>

											<li id="qu_1_${status.index}">
												<div class="test_content_nr_tt">
													<i>${status.index+1}</i><span>(${question.score}分)</span><font>${question.questionContent}</font><b
														class="icon iconfont">&#xe881;</b>
												</div>

												<div class="test_content_nr_main">
													<ul>
														<li class="option"><input type="radio"
															class="radioOrCheck" name="${question.id}"
															id="${question.id}_option_1" value="对" /> <label
															for="${status.index}_option_1"> 对 </label></li>
														<li class="option"><input type="radio"
															class="radioOrCheck" name="${question.id}"
															id="${question.id}_option_2" value="错" /> <label
															for="${status.index}_option_2"> 错 </label></li>
													</ul>
												</div>
											</li>


										</ul>
									</div>
								</c:if>


								<!-- 填空题模块 -->
								<c:if test="${question.questionTypeId==3}">
									<div class="test_content_nr">
										<ul>
											<li id="qu_2_${status.index}">
												<!-- 题目  -->
												<div class="test_content_nr_tt">
													<i>${status.index+1}</i><span>(${question.score}分)</span><font>${question.questionContent}</font><b
														class="icon iconfont">&#xe881;</b>
												</div>

												<div class="test_content_nr_main">
													<input class="tiankong" type="text" placeholder="输入正确答案"
														style="outline: medium; border-bottom-color: #808080; border-left: none; border-right: none; border-top: none; border-bottom-width: 1px;"
														name="${question.id}">
												</div>
											</li>

										</ul>
									</div>
								</c:if>
							</c:forEach>
						</form>

					</div>
				</div>

				<div class="foot"></div>
			</div>
		</div>
	</c:if>
	<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
	<script src="<%=basePath%>js/jquery.easy-pie-chart.js"></script>
</body>
</html>