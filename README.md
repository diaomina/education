# education
在线教育平台


# 课程测试模块：
	## 1、添加试卷：
			* 从界面跳转到action(/toPaperAdd)后获取所有的课程转到添加试卷的界面；  
			* 在添加试卷的界面输入试卷名称与考试时间，点击按钮创建，进入action(/paperAdd)：   
				** 试卷已存在：跳出"该课程已存在试卷，请添加题目！"的弹窗，  
				   	并且跳转到action(/selectQuestionByCourseId)在题库中拉取本课程中这张试卷内  
				   	还未添加的题目显示到界面，可以进行添加试卷题目的操作；  
				** 试卷未存在：创建这张试卷  
					*** 创建成功：跳出提示成功的弹窗  
					*** 创建失败：跳出提示失败的弹窗  
			* 添加题目：  
				**  下拉框选中课程时会根据课程ID拉取题库中本课程所有题目，  
					并且根据课程ID获取本课程的试卷的题目，  
					在去除掉已经添加的题目后将数据返回界面；  
				**  选中一个或者多个题目点击"添加题目"后转到action(/paperQuestionAdd)  
					从界面中获取到试卷ID和题目的ID，  
					进行添加试卷题目操作并且计算总分，将总分存入试卷表  
				**  成功或者失败都会返回提示弹窗  
	
	## 2、删除试卷：  
			* 从界面获取试卷ID，跳转到action(/paperDelete)将试卷表中这张试卷删除；  
			* 根据试卷ID查询试卷题目表中这张试卷的所有题目，将其删除。  
			
	## 3、修改试卷：  
			* 根据试卷ID修改考试时间和试卷名称；  
			* 点击查看题目后可以进入本试卷所有题目的显示界面，  
				action(/paperQuestionDelete)可以根据题目ID单个删除试卷的题目  
	## 4、显示试卷：
			* 查询试卷表所有试卷并且返回数据，其中根据其课程ID查询课程名称，  
				将两者组合成一个ChoosePaperVO类，显示到界面；  
	
	## 5、考试：
			* 选择试卷：  
				** 将试卷表所有试卷显示到界面；  
			* 获取试卷：  
				** 学生在选择试卷界面点击进入考试，action(/toPaperPage)根据试卷ID首先判断该学生是否已经考过；  
					*** 考过：根据试卷ID获取本试卷所有题目，将数据处理后封装成showPaper对象发送到界面；  
					*** 没考过：跳出弹窗提示已经考过；  
			* 交卷：  
				*** 首先action(/upPaper)获取界面中的试卷ID，根据试卷ID获取本试卷所有题目ID，  
					因为在界面中每个题目的name属性设置为题目ID，所以根据题目ID获取界面中这个题目对应的答案，  
					将其封装成对象存入试卷答案表；  
				*** 交卷有两种方式。  
					**** 倒计时结束会自动交卷，并且弹窗提示；  
					**** 点击交卷按钮。  
					
					