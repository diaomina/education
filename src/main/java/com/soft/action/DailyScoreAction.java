package com.soft.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soft.model.Daily_Score;
import com.soft.model.Daily_ScoreExample;
import com.soft.model.Daily_ScoreExample.Criteria;
import com.soft.model.Student;
import com.soft.service.DailyScoreService;

/**
 * 每日一练成绩action
 * @author lxs
 * @date2019年10月30日 下午9:06:28
 */
@Controller
@RequestMapping("/dailyscore")
public class DailyScoreAction {
	@Autowired
	private DailyScoreService scoreService;
	
	/**
	 * 显示过去的答题成绩
	 * @param session
	 * @param map
	 * @return 成绩展示页
	 */
	@RequestMapping("/showmyscore")
	public String showMyScore(HttpSession session, Map<String, Object> map) {
		Student student = (Student) session.getAttribute("student");
		
		Daily_ScoreExample example = new Daily_ScoreExample();
		Criteria criteria = example.createCriteria();
		criteria.andStuIdEqualTo(student.getId());
		
		List<Daily_Score> scores = scoreService.getDailyScore(example);
		
		map.put("scores", scores);
		
		return "daily/myscore";
	}
}
