package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.Question_Daily_AnswerMapper;
import com.soft.model.Question_Daily_Answer;
import com.soft.model.Question_Daily_AnswerExample;
import com.soft.service.QuestionDailyAnswerService;

/**
 * 每日一练答题service实现
 * @author lxs
 * @date2019年10月18日 上午11:38:40
 */
@Service("questinaDailyAnswerService")
@Transactional
public class QuestionDailyAnswerServiceImpl implements QuestionDailyAnswerService {

	@Autowired
	private Question_Daily_AnswerMapper mapper;
	
	public int addDailyAnswer(Question_Daily_Answer pojo) {
		int count = mapper.insertSelective(pojo);
		return count;
	}

	
	public int deleteDailyAnswer(int id) {
		int count = mapper.deleteByPrimaryKey(id);
		return count;
	}

	
	public int updateDailyAnswer(Question_Daily_Answer pojo) {
		int count = mapper.updateByPrimaryKeySelective(pojo);
		return count;
	}


	@Transactional(readOnly=true)
	public List<Question_Daily_Answer> getDailyAnswer(Question_Daily_AnswerExample example) {
		List<Question_Daily_Answer> list = mapper.selectByExample(example);
		return list;
	}

}
