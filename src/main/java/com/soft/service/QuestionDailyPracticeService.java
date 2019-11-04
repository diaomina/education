package com.soft.service;

import java.util.List;

import com.soft.model.Question_Daily_Practice;
import com.soft.model.Question_Daily_PracticeExample;

/**
 * 每日一练题目service
 * @author lxs
 * @date2019年10月17日 下午3:25:40
 */
public interface QuestionDailyPracticeService {
	// 添加每日一练题目
	int addDailyPractice(Question_Daily_Practice pojo);
	
	// 根据id删除每日一练题目
	int deleteDailyPractice(int id);
	
	// 修改每日一练题目
	int updateDailyPractice(Question_Daily_Practice pojo);
	
	// 查询每日一练题目
	List<Question_Daily_Practice> getDailyPractice(Question_Daily_PracticeExample example);
	
	
}
