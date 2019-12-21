<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("webpath", path);
%>
<%
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Cache-Control", "no-cache,must-revalidate");
	response.setDateHeader("Expires", 0);
	response.flushBuffer();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico">
<LINK rel="Shortcut Icon" href="/favicon.ico" />

<link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="css/skin.css" rel="stylesheet" type="text/css" id="skin" />
<link href="css/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
	type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>题库管理平台 v1.0</title>
<meta name="keywords"
	content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>

<body>
	<header class="Hui-header cl"> <a class="Hui-logo l"
		title="题库管理平台教师端 v1.0" href="login/login2">题库管理平台 学生端</a> <span
		class="Hui-subtitle l">V1.0</span>
	<ul class="Hui-userbar">
		<li class="dropDown dropDown_hover"><a class="dropDown_A">${student.stuName}
				<i class="Hui-iconfont">&#xe6d5;</i>
		</a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a href="students/toStudentInfoPage">个人信息</a></li>
				<li><a href="javascript:loginOut();">退出</a></li>
			</ul></li>

		<li id="Hui-skin" class="dropDown right dropDown_hover"><a
			href="javascript:;" title="换肤"><i class="Hui-iconfont"
				style="font-size: 18px">&#xe62a;</i></a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
				<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
				<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
				<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
				<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
				<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
			</ul></li>
	</ul>
	<a aria-hidden="false" class="Hui-nav-toggle" href="#"></a> </header>
	<aside class="Hui-aside"> <input runat="server"
		id="divScrollValue" type="hidden" value="" />
	<div class="menu_dropdown bk_2">
		<dl id="menu-article">
			<dt>
				<i class="Hui-iconfont">&#xe616;</i> 账户管理<i
					class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a _href="" href="javascript:void(0)">账户信息</a></li>
					<li><a _href="students/updateStudentPasswordUI"
						href="javascript:void(0)">修改密码</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu-comments">
			<dt>
				<i class="Hui-iconfont">&#xe622;</i> 每日一练<i
					class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a _href="daily/dailyquestion" href="javascript:;">进入每日一练</a></li>
					<li><a _href="dailyscore/showmyscore"
						href="javascript:void(0)">查看每日一练以往成绩</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-member">
			<dt>
				<i class="Hui-iconfont">&#xe60d;</i> 章节练习<i
					class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a _href="chapter/chapterShowStudent?cuorseId=1"
						href="javascript:;">进入章节练习</a></li>
					<li><a _href="chapterScope/findChapterScope"
						href="javascript:;">查看章节练习以往成绩</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-admin">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i> 课程测验<i
					class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a _href="paper/toChoosePaperPage"
						href="javascript:void(0)">试卷选择</a></li>
					<li><a _href="paperScore/toStudentScore"
						href="javascript:void(0)">查看试卷以往成绩</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu-product">
			<dt>
				<i class="Hui-iconfont">&#xe620;</i> 错题库<i
					class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a _href="StudentQuestionError/showQuestionErrorUI"
						href="javascript:void(0)">查看所有错题</a></li>
				</ul>
			</dd>
		</dl>
	</div>
	</aside>

	<div class="dislpayArrow">
		<a class="pngfix" href="javascript:void(0);"
			onClick="displaynavbar(this)"></a>
	</div>
	<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active"><span title="我的桌面" data-href="welcome.jsp">我的桌面</span><em></em></li>
			</ul>
		</div>
		<div class="Hui-tabNav-more btn-group">
			<a id="js-tabNav-prev" class="btn radius btn-default size-S"
				href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
				id="js-tabNav-next" class="btn radius btn-default size-S"
				href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
		</div>
	</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display: none" class="loading"></div>
			<iframe scrolling="yes" frameborder="0" src="welcome.html"></iframe>
		</div>
	</div>
	</section>






	<script type="text/javascript" src="js/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="js/H-ui.js"></script>
	<script type="text/javascript" src="js/H-ui.admin.js"></script>
	<script type="text/javascript">
	//退出登陆
	 function loginOut() {
		 if(confirm("是否确认退出")){
			 location.replace("<%=path%>/login.jsp"); //loginOut即是你所要转的退出登录的地址
			} else {
				return false;
			}

		}
		/*资讯-添加*/
		function article_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*图片-添加*/
		function picture_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*产品-添加*/
		function product_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
	</script>
	<script type="text/javascript">
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s)
		})();
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
	</script>
</body>
</html>