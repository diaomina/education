package com.soft.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soft.model.Daily_Score;
import com.soft.model.Question_Daily_Answer;
import com.soft.model.Student;
import com.soft.service.DailyScoreService;
import com.soft.service.QuestionDailyAnswerService;
import com.soft.service.QuestionErrorService;
import com.soft.util.DateUtil;
import com.soft.vo.DailyAnswerShow;

/**
 * 每日一练答题action
 * @author lxs
 * @date2019年10月26日 下午9:39:17
 */
@Controller
@RequestMapping("/dailyanswer")
public class DailyAnswerAction {
	@Autowired
	private QuestionDailyAnswerService answerService;

	@Autowired
	private DailyScoreService scoreService;
	
	@Autowired
	private QuestionErrorService errorService;
	
	/**
	 * 上传至每日一练答题记录表
	 * @param request
	 * @param session
	 * @return 答题结果详情页
	 * @throws Exception
	 */
	@RequestMapping("/upanswer")
	public String upAnswer(HttpServletRequest request, HttpSession session, Map<String, Object> map) throws Exception {
		Student student = (Student)session.getAttribute("student");

		String[] questionIds = request.getParameterValues("questionid");
		String[] questions = request.getParameterValues("question");
		String[] rightAnswers = request.getParameterValues("rightanswer");
		String[] scores = request.getParameterValues("score");
		
		double score = 0;
		double scoreCount = 0;
		List<DailyAnswerShow> list = new ArrayList<>();
		
		List<Integer> wrongQuestionIds = new ArrayList<>();
		
		for (int i = 0; i < questionIds.length; i++) {
			String myAnswer = request.getParameter(questionIds[i]);
			if(myAnswer==null) {
				myAnswer = "";
			}
			
			// 答题入库
			Question_Daily_Answer dailyAnswer = new Question_Daily_Answer();
			dailyAnswer.setStuId(student.getId());
			dailyAnswer.setDate(DateUtil.getNow());
			dailyAnswer.setQuestionId(Integer.valueOf(questionIds[i]));
			dailyAnswer.setAnswer(myAnswer);
			answerService.addDailyAnswer(dailyAnswer);
			
			// 答题结果到页面显示
			DailyAnswerShow show = new DailyAnswerShow();
			show.setQuestion(questions[i]);
			show.setMyAnswer(myAnswer);
			show.setRightAnswer(rightAnswers[i]);
			
			
			if (rightAnswers[i].equals(myAnswer)) {
				score += Double.valueOf(scores[i]);
				show.setScore(Double.valueOf(scores[i]));
			} else {
				score += 0;
				show.setScore(0.0);
				
				// 错题入库
				wrongQuestionIds.add(Integer.valueOf(questionIds[i]));
			}
			list.add(show);
			
			// 统计满分
			scoreCount += Double.valueOf(scores[i]);
		}
	
		// 答题成绩入库
		Daily_Score dailyScore = new Daily_Score();
		dailyScore.setStuId(student.getId());
		dailyScore.setDailyTime(DateUtil.getNow());
		dailyScore.setScore(score);
		dailyScore.setCorpId(student.getCorpId());
		scoreService.addDailyScore(dailyScore);
		
		// 错题入库
		errorService.addQuestionError(wrongQuestionIds, student.getId(), "每日一练");
		
		map.put("score", score);
		map.put("scoreCount", scoreCount);
		map.put("list", list);

		return "daily/dailyanswer";
	}
}
