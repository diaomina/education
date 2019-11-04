package com.soft.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soft.model.Question_Daily_AnswerExample;
import com.soft.model.Question_Daily_Practice;
import com.soft.model.Question_Daily_PracticeExample;
import com.soft.model.Question_Daily_PracticeExample.Criteria;
import com.soft.model.Question_Question;
import com.soft.model.Student;
import com.soft.model.Teacher;
import com.soft.service.QuestionBankService;
import com.soft.service.QuestionDailyAnswerService;
import com.soft.service.QuestionDailyPracticeService;
import com.soft.util.DateUtil;
import com.soft.vo.DailyQuestionShowVO;

/**
 * 每日一练action
 * @author lxs
 * @date2019年10月21日 下午3:28:18
 */
@Controller
@RequestMapping("/daily")
public class DailyPracticeAction {
	@Autowired
	private QuestionDailyPracticeService practiceService;

	@Autowired
	private QuestionBankService bankService;

	@Autowired
	private QuestionDailyAnswerService answerService;
	

	/**
	 * 获取当天的题目
	 * @param map
	 * @return 每日一练题目页
	 * @throws Exception
	 */
	@RequestMapping(value = "/dailyquestion")
	public String getQuestion(HttpServletResponse response, HttpSession session, Map<String, Object> map) throws Exception {
		Student student = (Student) session.getAttribute("student");
		// 查询本人当天是否答了题
		Question_Daily_AnswerExample example1 = new Question_Daily_AnswerExample();
		com.soft.model.Question_Daily_AnswerExample.Criteria criteria1 = example1.createCriteria();
		criteria1.andDateLike(DateUtil.getToday()+"%");
		criteria1.andStuIdEqualTo(student.getId());
		// 当天答题后禁止重复作答
		if(answerService.getDailyAnswer(example1).size()>0) {
			PrintWriter out = response.getWriter();
			out.print("<script language=\"javascript\">alert('您当日已作答，请明天再来吧！');"
					+ "window.location.href='../dailyscore/showmyscore';</script>");
			out.flush();
			out.close();
		}
		
		// 获取当天练习题目
		Question_Daily_PracticeExample example = new Question_Daily_PracticeExample();
		Criteria criteria = example.createCriteria();
		criteria.andPracticeDateLike(DateUtil.getToday());
		List<Question_Daily_Practice> practices = practiceService.getDailyPractice(example);

		List<Question_Question> questions = new ArrayList<Question_Question>();
		for (Question_Daily_Practice practice : practices) {
			Question_Question question = bankService.selectQuestionById(practice.getQuestionId());
			questions.add(question);
		}

		map.put("questions", questions);

		return "daily/dailypractice";
		
	}

	
	/**
	 * 教师上传每日一练题目
	 * @param map
	 * @return 添加题目页面
	 */
	@RequestMapping("/uploadquestion")
	public String uploadQuestion(HttpServletRequest request, HttpSession session) {
		List<Question_Question> questions = bankService.selectQuestionByExample(null);
		String msg = (String) request.getAttribute("msg");
		
		request.setAttribute("questions", questions);
		request.setAttribute("msg", msg);
		
		return "daily/addquestion";
	}

	
	/**
	 * 添加题目
	 * @param request
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addquestions")
	public String addQuestions(HttpServletRequest request, HttpSession session) throws Exception{
		String strDate = request.getParameter("date");
		Date date = DateUtil.strToDate(strDate);
		
		String[] questionIds = request.getParameterValues("questions");
		
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		String name = teacher.getTeacherName();
		Integer corpId = teacher.getCorpId();
		
		int successCount = 0;
		for(int i=0; i<questionIds.length; i++){
			Question_Daily_Practice practice = new Question_Daily_Practice();
			practice.setPracticeDate(date);
			practice.setQuestionId(Integer.valueOf(questionIds[i]));
			practice.setCreateBy(name);
			practice.setCreateTime(DateUtil.getNow());
			practice.setCorpId(corpId);
			practice.setVersion(1);
			practice.setStatus(false);
			// 查询题目是否同一天已添加过
			Question_Daily_PracticeExample example = new Question_Daily_PracticeExample();
			Criteria criteria = example.createCriteria();
			criteria.andPracticeDateEqualTo(date);
			criteria.andQuestionIdEqualTo(Integer.valueOf(questionIds[i]));
			// 未添加过则添加
			if(practiceService.getDailyPractice(example).size()==0) {
				practiceService.addDailyPractice(practice);
				successCount++;
			}
		}
		request.setAttribute("msg", "已成功向"+DateUtil.dateToStr(date)+"那天添加"+successCount+"个题目");
		
		return "forward:/daily/uploadquestion";
	}
	
	/**
	 * 查询题目获取日期
	 * @param session
	 * @param map
	 * @return
	 */
	@RequestMapping("/showquestion")
	public String showQuestions(HttpSession session, Map<String, Object> map) {
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		// 获取以往添加的练习
		Question_Daily_PracticeExample example = new Question_Daily_PracticeExample();
		Criteria criteria = example.createCriteria();
		criteria.andCreateByEqualTo(teacher.getTeacherName());
		List<Question_Daily_Practice> practices = practiceService.getDailyPractice(example);
		
		// 获取练习日期，通过练习日期查询题目
		List<Date> dates = new ArrayList<>();
		Set<Date> set = new HashSet<Date>();
		for (Question_Daily_Practice practice : practices) {
			Date date = practice.getPracticeDate();
			if(set.add(date)){
	            dates.add(date);
	        }
		}
		
		map.put("dates", dates);
		
		return "daily/showquestions";
	}
	
	/**
	 * 查看已添加的题目列表
	 * @param request
	 * @param session
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/checkquestions")
	public String checkQuestioins(HttpServletRequest request, HttpSession session, Map<String, Object> map)
			throws Exception{
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		String date = request.getParameter("date");
		// 通过日期查询添加的题目
		Question_Daily_PracticeExample example = new Question_Daily_PracticeExample();
		Criteria criteria = example.createCriteria();
		criteria.andCreateByEqualTo(teacher.getTeacherName());
		criteria.andPracticeDateEqualTo(DateUtil.strToDate(date));
		List<Question_Daily_Practice> practices = practiceService.getDailyPractice(example);

		// 获取具体题目，附带每日一练id
		List<DailyQuestionShowVO> questions = new ArrayList<>();
		for (Question_Daily_Practice practice : practices) {
			int questionId = practice.getQuestionId();
			Question_Question question = bankService.selectQuestionById(questionId);
			
			// 获取每日一练主键用于删除
			int id = practice.getId();
			DailyQuestionShowVO dailyQuestion = new DailyQuestionShowVO();
			dailyQuestion.setId(id);
			dailyQuestion.setQuestion(question);
			questions.add(dailyQuestion);
		}
		map.put("questions", questions);
		map.put("date", date);
		
		return "daily/showdailyquestions";
	}
	
	@RequestMapping("/removequestion")
	public String removeQuestion(HttpServletRequest request, Map<String, Object> map) {
		String date = request.getParameter("date");
		int id = Integer.valueOf(request.getParameter("id"));
		
		int count = practiceService.deleteDailyPractice(id);
		System.err.println(count);
		
		return "forward:/daily/checkquestions?date=" + date;
	}

}
