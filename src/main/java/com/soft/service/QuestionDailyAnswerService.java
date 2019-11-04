package com.soft.service;

import java.util.List;

import com.soft.model.Question_Daily_Answer;
import com.soft.model.Question_Daily_AnswerExample;

/**
 * 答题表service接口
 * @author lxs
 * @date2019年10月18日 上午11:28:06
 */
public interface QuestionDailyAnswerService {
	// 添加每日一练答题记录
	int addDailyAnswer(Question_Daily_Answer pojo);
	
	// 删除每日一练答题记录
	int deleteDailyAnswer(int id);

	// 修改每日一练答题记录
	int updateDailyAnswer(Question_Daily_Answer pojo);

	// 获取每日一练答题记录
	List<Question_Daily_Answer> getDailyAnswer(Question_Daily_AnswerExample example);
}
