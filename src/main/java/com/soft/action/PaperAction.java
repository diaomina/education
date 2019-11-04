package com.soft.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soft.model.Course;
import com.soft.model.CourseExample;
import com.soft.model.Paper;
import com.soft.model.PaperAnswer;
import com.soft.model.PaperExample;
import com.soft.model.PaperQuestion;
import com.soft.model.PaperQuestionExample;
import com.soft.model.PaperScore;
import com.soft.model.PaperScoreExample;
import com.soft.model.Question_Question;
import com.soft.model.Question_QuestionExample;
import com.soft.model.Question_QuestionExample.Criteria;
import com.soft.model.Student;
import com.soft.model.Teacher;
import com.soft.service.CourseService;
import com.soft.service.PaperAnswerService;
import com.soft.service.PaperQuestionService;
import com.soft.service.PaperScoreService;
import com.soft.service.PaperService;
import com.soft.service.QuestionBankService;
import com.soft.service.ShowPaperService;
import com.soft.vo.ChoosePaperVO;
import com.soft.vo.ShowPaper;

/**
 * 
* @ClassName: PaperAction
* @Description: 试卷业务的控制器
* @author ljy
* @date 2019年10月17日 下午7:09:27
*
 */

@Controller
@RequestMapping("/paper")
public class PaperAction {
	
	@Autowired
	PaperService paperService;
	@Autowired
	PaperQuestionService paperQuestionService;
	@Autowired
	ShowPaperService showPaperService;
	@Autowired
	PaperAnswerService paperAnswerService;
	@Autowired
	CourseService courseService;
	@Autowired
	QuestionBankService questionBankService;
	@Autowired
	PaperScoreService paperScoreService;
	
	
	/**
	 * 
	* @Title: toChoosePaperPage
	* @Description:[学生] 跳转到选择试卷界面
	* @param @param map
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/toChoosePaperPage")
	public String toChoosePaperPage(Map<String, Object> map) {
		
		PaperExample example = new PaperExample();
		List<Paper> paperList = paperService.findListByExample(example);
		
		List<ChoosePaperVO> choosePaperVOList = new ArrayList<ChoosePaperVO>();
		
		for(Paper paper : paperList) {
			Course course = courseService.getCourse(paper.getCourseId());
			ChoosePaperVO choosePaperVO = new ChoosePaperVO();
			choosePaperVO.setPaperId(paper.getId());
			choosePaperVO.setCourseName(course.getCourseName());
			choosePaperVO.setPaperName(paper.getPaperName());
			choosePaperVO.setCreateBy(paper.getCreateBy());
			choosePaperVO.setPaperTime(paper.getPaperTime());
			
			choosePaperVOList.add(choosePaperVO);
		}
		
		map.put("choosePaperVOList", choosePaperVOList);
		return "paper/choosePaper";
	}
	
	
	/**
	 * 
	* @Title: toPaperPage
	* @Description:[学生] 拉取试卷转到考试的界面
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/toPaperPage")
	public String toPaperPage(Integer paperId, Map<String, Object> map, HttpSession session, HttpServletResponse response) {
		
		PrintWriter out = null;
		try {
		  out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Student student = (Student) session.getAttribute("student");
		
		// 首先判断学生是否已经考过试了(根据学生ID和试卷ID查询试卷)
		PaperScoreExample example = new PaperScoreExample();
		com.soft.model.PaperScoreExample.Criteria criteria = example.createCriteria();
		criteria.andPaperIdEqualTo(paperId);
		criteria.andStuIdEqualTo(student.getId());
		List<PaperScore> list = paperScoreService.selectPaperScoreByexample(example);
		if(list != null && list.size()>0){
			// 考过，返回提示信息
			out.print("<script language=\"javascript\">alert('您已经完成，请勿重新考试！');"
					+ "window.location.href='toChoosePaperPage';</script>");
			out.flush();
			out.close();
		}
		/* 首先判断学生是否已经考过试了(根据学生ID和试卷ID查询试卷) \\\\\\\\备用方案\\\\\\\\\
		 * PaperAnswerExample example = new PaperAnswerExample();
		com.soft.model.PaperAnswerExample.Criteria criteria = example.createCriteria();
		criteria.andPaperIdEqualTo(paperId);
		criteria.andStuIdEqualTo(student.getId());
		int count = paperAnswerService.countByExample(example);
		if(count != 0) {
			// 考过，返回提示信息
			out.print("<script language=\"javascript\">alert('您已经完成，请勿重新考试！');"
					+ "window.location.href='toChoosePaperPage';</script>");
			out.flush();
			out.close();
		} */

		
		// 没考过，进入考试界面
		// 获取考试基本信息
		ShowPaper showPaper = showPaperService.getShowPaperByPaperId(paperId);

		map.put("showPaper", showPaper);
		map.put("myPaperId", paperId);
		
		return "paper/paper";
	}
	
	
	
	/**
	 * 
	* @Title: upPaper
	* @Description:[学生] 交卷操作，获取学生填入的答案
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/upPaper")
	public String upPaper(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		
		// 模拟获取学生id，后期从Session中获取
		Student student = (Student) session.getAttribute("student");
		Integer stuId = student.getId();
		
		
		// 根据试卷ID获取题目
		Integer myPaperId = Integer.valueOf(request.getParameter("myPaperId"));
		List<Question_Question> questionList = paperQuestionService.getPaperQuestionByPaperId(myPaperId);
		
		List<PaperAnswer> paperAnswerList = new ArrayList<PaperAnswer>();
		for(Question_Question question : questionList){
			
			// 根据这张试卷的题目ID获取考试界面中的答案(答案的name属性为题目ID)
			Integer questionId = question.getId();
			String answer = request.getParameter(String.valueOf(questionId));
			
			PaperAnswer paperAnswer = new PaperAnswer();
			paperAnswer.setPaperId(myPaperId);
			paperAnswer.setStuId(stuId);
			paperAnswer.setQuestionId(questionId);
			paperAnswer.setAnswer(answer);
			paperAnswer.setCorpId(question.getCorpId());
			
			paperAnswerList.add(paperAnswer);
		}
		
		paperAnswerService.insertList(paperAnswerList);
		
		request.setAttribute("stuId", stuId);
		request.setAttribute("paperId", myPaperId);
		
		return "forward:/paperAnswer/toPaperScore";
	}
	
	
	/**
	 * 
	* @Title: toPaperAdd
	* @Description:[老师] 拉取课程，并且跳转到添加试卷的界面
	* @param @param map
	* @param @param session
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/toPaperAdd")
	public String toPaperAdd(Map<String, Object> map, HttpSession session) {
		CourseExample example = new CourseExample();
		List<Course> courseList = courseService.getCourses(example);
		map.put("courseList", courseList);
		session.setAttribute("courseList", courseList);
		
		return "paper/paperAdd";
	}
	
	
	/**
	 * 
	* @Title: paperAdd
	* @Description:[老师] 添加试卷 (创建一张试卷，查找并且返回表单中输入的课程的所有题目)
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/paperAdd")
	public String paperAdd(Paper paper, Map<String, Object> map, HttpServletResponse response, HttpSession session) {
		
		session.setAttribute("paper", paper);
		
		PrintWriter out = null;
		try {
		  out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		PaperExample example1 = new PaperExample();
		com.soft.model.PaperExample.Criteria criteria1 = example1.createCriteria();
		criteria1.andCourseIdEqualTo(paper.getCourseId());
		List<Paper> paperList1 = paperService.findListByExample(example1);
		// 判断该课程是否已经创建了试卷
		if(paperList1==null || paperList1.size()==0){
			// 获取创建者姓名
			Teacher teacher = (Teacher) session.getAttribute("teacher");
			// 根据课程ID查找获取机构ID
			Course course = courseService.getCourse(paper.getCourseId());
			
			paper.setCorpId(course.getCorpId());
			paper.setCreateBy(teacher.getTeacherName());
			paper.setCreateTime(new Date());
			paper.setModifyBy(teacher.getTeacherName());
			paper.setModifyTime(new Date());
			paper.setStatus(false);
			paper.setVersion(1);
			
			int recordNumber = paperService.addPaper(paper);
			
			// 判断创建试卷是否成功
			if(recordNumber == 1) {
				out.print("<script language=\"javascript\">alert('创建试卷成功，请添加题目！');"
						+ "window.location.href='selectQuestionByCourseId';</script>");
			} else {
				out.print("<script language=\"javascript\">alert('很抱歉，创建试卷失败！');"
						+ "window.location.href='toPaperAdd';</script>");
			}
			
		} else {
			// 已创建，返回界面
			out.print("<script language=\"javascript\">alert('该课程已存在试卷，请添加题目！');"
					+ "window.location.href='selectQuestionByCourseId';</script>");
		}
		
		out.flush();
		out.close();

		return "toPaperAdd";
	}
	
	
	/**
	 * 
	* @Title: selectQuestionByCourseId
	* @Description:[老师] 根据课程ID查找题库中本课程的题目
	* @param @return
	* @return String
	* @throws
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/selectQuestionByCourseId")
	public String selectQuestionByCourseId(Map<String, Object> map, HttpSession session) {
		
		List<Course> courseList = (List<Course>) session.getAttribute("courseList");
		Paper paper = (Paper) session.getAttribute("paper");
		
		// 根据课程ID获取试卷ID
		PaperExample example2 = new PaperExample();
		com.soft.model.PaperExample.Criteria criteria2 = example2.createCriteria();
		criteria2.andCourseIdEqualTo(paper.getCourseId());
		List<Paper> paperList = paperService.findListByExample(example2);
		paper = paperList.get(0);
		
		
		
		// 从题库中查找出本课程的所有题目返回界面
		Question_QuestionExample example = new Question_QuestionExample();
		Criteria criteria = example.createCriteria();
		criteria.andCouserIdEqualTo(paper.getCourseId());
		List<Question_Question> questionList = questionBankService.selectQuestionByExample(example);
		
		/**
		 *  过滤掉试卷题目表中这张试卷已经存在的题目
		 */
		// 首先获取这张试卷已经有的题目
		List<Question_Question> tempList = paperQuestionService.getPaperQuestionByPaperId(paper.getId());
		
		// 清除questionList在tempList中存在的题目
		questionList.removeAll(tempList);
		
		map.put("courseList", courseList);
		map.put("questionList", questionList);
		map.put("paperId", paperList.get(0).getId());
		
		return "paper/paperAdd";
	}
	
	
	/**
	 * 
	* @Title: paperQuestionAdd
	* @Description: [老师]向试卷中添加题目并且计算总分
	* @param @param paperId
	* @param @param request
	* @throws
	 */
	@RequestMapping("/paperQuestionAdd")
	public void paperQuestionAdd(HttpServletRequest request, HttpServletResponse response) {
		
		PrintWriter out = null;
		try {
		  out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// 从界面获取试卷ID和添加的题目ID
		Integer paperId = Integer.valueOf(request.getParameter("paperId"));
		String[] questions = request.getParameterValues("questions");
		// 将题目ID转换格式
		List<Integer> questionIds = new ArrayList<Integer>();
		for(String str : questions) {
			if(str!=null && !"".equals(str)){
				questionIds.add(Integer.valueOf(str));
			}
		}
		// 根据题目id从题库中获取题目
		List<Question_Question> questionList = new ArrayList<Question_Question>();
		try {
			questionList = questionBankService.selectQuestionByList(questionIds);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		/*double scoreAll = 0;
		Double score = paperService.loadById(paperId).getScoreAll();
		if(score != null) {
			scoreAll = score;
		}*/
		
		int recordNumber = 0;
		// 将题目存入试卷题目表
		for(Question_Question question : questionList){
			// 计算试卷总分
			//scoreAll += question.getScore();
			
			PaperQuestion paperQuestion = new PaperQuestion();
			// paperQuestion.setCorpId(corpId);
			paperQuestion.setQuestionId(question.getId());
			paperQuestion.setPaperId(paperId);
			//paperQuestion.setCreateBy(createBy);
			paperQuestion.setCreateTime(new Date());
			//paperQuestion.setModifyBy(modifyBy);
			paperQuestion.setModifyTime(new Date());
			paperQuestion.setStatus(false);
			paperQuestion.setVersion(1);
			
			recordNumber = paperQuestionService.addPaperQuestion(paperQuestion);
		}
		if(recordNumber != 0){
			// 将计算总分并存入试卷表
			List<Question_Question> tempList = paperQuestionService.getPaperQuestionByPaperId(paperId);
			double scoreAll = 0;
			for(Question_Question question : tempList) {
				scoreAll += question.getScore();
			}
			
			Paper paper = paperService.loadById(paperId);
			paper.setScoreAll(scoreAll);
			PaperExample example = new PaperExample();
			com.soft.model.PaperExample.Criteria criteria = example.createCriteria();
			criteria.andIdEqualTo(paper.getId());
			paperService.updatePaperByExample(paper, example);
			
			out.print("<script language=\"javascript\">alert('添加题目成功！');"
					+ "window.location.href='toPaperAdd';</script>");
		} else {
			out.print("<script language=\"javascript\">alert('很抱歉，添加题目失败！');"
					+ "window.location.href='toPaperAdd';</script>");
		}
		out.flush();
		out.close();
	}
	
	
	/**
	 * 
	* @Title: paperDisplay
	* @Description:[老师] 获取所有试卷显示到界面
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/paperDisplay")
	public String paperDisplay(Map<String, Object> map) {
		// 后期可以更改为根据机构ID获取该机构的所有试卷
		PaperExample example = new PaperExample();
		List<Paper> paperList = paperService.findListByExample(example);
		
		List<ChoosePaperVO> choosePaperVOList = new ArrayList<ChoosePaperVO>();
		for(Paper paper : paperList) {
			Course course = courseService.getCourse(paper.getCourseId());
			ChoosePaperVO choosePaperVO = new ChoosePaperVO();
			choosePaperVO.setPaperId(paper.getId());
			choosePaperVO.setCourseName(course.getCourseName());
			choosePaperVO.setPaperName(paper.getPaperName());
			choosePaperVO.setCreateBy(paper.getCreateBy());
			choosePaperVO.setPaperTime(paper.getPaperTime());
			
			choosePaperVOList.add(choosePaperVO);
		}
		map.put("choosePaperVOList", choosePaperVOList);
		return "paper/paperDisplay";
	}
	
	
	/**
	 * 
	* @Title: toPaperUpdatePage
	* @Description: [老师] 跳转到修改试卷的界面
	* @param @return paperId
	* @return String
	* @throws
	 */
	@RequestMapping("/toPaperUpdatePage")
	public String toPaperUpdatePage(Integer paperId, Map<String, Object> map){
		System.err.println(paperId);
		Paper paper = paperService.loadById(paperId);
		System.err.println(paper.toString());
		map.put("paper", paper);
		return "paper/paperUpdate";
	}
	
	
	/**
	 * 
	* @Title: paperUpdate
	* @Description: [老师] 修改试卷
	* @param @param paper
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/paperUpdate")
	public void paperUpdate(Paper paper, HttpServletResponse response){
		PrintWriter out = null;
		try {
		  out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		PaperExample example = new PaperExample();
		com.soft.model.PaperExample.Criteria criteria = example.createCriteria();
		criteria.andIdEqualTo(paper.getId());
		int recordNumber = paperService.updatePaperByExample(paper, example);
		
		// 判断是否修改成功
		if(recordNumber == 1){
			out.print("<script language=\"javascript\">alert('修改成功！');"
					+ "window.location.href='paperDisplay';</script>");
		} else {
			out.print("<script language=\"javascript\">alert('修改失败');"
					+ "window.location.href='paperDisplay';</script>");
		}
		out.flush();
		out.close();
	}
	
	
	/**
	 * 
	* @Title: paperDelete
	* @Description:[老师] 删除试卷
	* @param @param paperId
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/paperDelete")
	public void paperDelete(Integer paperId, HttpServletResponse response) {
		PrintWriter out = null;
		try {
		  out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// 将试卷删除
		PaperExample example = new PaperExample();
		com.soft.model.PaperExample.Criteria criteria = example.createCriteria();
		criteria.andIdEqualTo(paperId);
		int recordNumber = paperService.delPaperByExample(example);
		// 将试卷题目删除
		PaperQuestionExample example1 = new PaperQuestionExample();
		com.soft.model.PaperExample.Criteria criteria1 = example.createCriteria();
		criteria1.andIdEqualTo(paperId);
		int recordNumber1 = paperQuestionService.delPaperQuestionByExample(example1);
		// 判断是否删除成功
		if(recordNumber==1 && recordNumber1!=0){
			out.print("<script language=\"javascript\">alert('删除成功！');"
					+ "window.location.href='paperDisplay';</script>");
		} else {
			out.print("<script language=\"javascript\">alert('删除失败');"
					+ "window.location.href='paperDisplay';</script>");
		}
		out.flush();
		out.close();
	}
	
	/**
	 * 
	* @Title: paperQuestionDisplay
	* @Description:[老师] 根据试卷ID显示这张试卷所有题目，跳转到试卷的题目管理界面
	* @param @param paperId
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/paperQuestionDisplay")
	public String paperQuestionDisplay(Integer paperId, Map<String, Object> map) {
		List<Question_Question> questionList = paperQuestionService.getPaperQuestionByPaperId(paperId);
		Paper paper = paperService.loadById(paperId);
		map.put("paper", paper);
		map.put("questionList", questionList);
		return "paper/paperQuestionDisplay";
	}

	/**
	 * 
	* @Title: paperQuestionDelete
	* @Description: 删除试卷题目
	* @param @param paperQuestionId
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/paperQuestionDelete")
	public void paperQuestionDelete(Integer questionId, HttpServletResponse response) {
		
		PaperQuestionExample example = new PaperQuestionExample();
		com.soft.model.PaperQuestionExample.Criteria criteria = example.createCriteria();
		criteria.andQuestionIdEqualTo(questionId);
		
		// 获取试卷ID，下面跳转界面时需要使用
		Integer paperId = paperQuestionService.findListByExample(example).get(0).getPaperId();
		
		// 删除试卷题目
		int recordNumber = paperQuestionService.delPaperQuestionByExample(example);
		
		PrintWriter out = null;
		try {
		  out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
				
		// 判断试卷题目是否成功
		if(recordNumber == 1) {
			out.print("<script language=\"javascript\">alert('删除成功！');"
					+ "window.location.href='paperQuestionDisplay?paperId="+paperId+"';</script>");
		} else {
			out.print("<script language=\"javascript\">alert('很抱歉，删除失败！');"
					+ "window.location.href='paperQuestionDisplay?paperId="+paperId+"';</script>");
		}
	}
	
	
	
}
