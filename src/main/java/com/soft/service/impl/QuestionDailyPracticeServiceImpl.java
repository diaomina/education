package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.Question_Daily_PracticeMapper;
import com.soft.model.Question_Daily_Practice;
import com.soft.model.Question_Daily_PracticeExample;
import com.soft.service.QuestionDailyPracticeService;

/**
 * 每日一练题目Service接口实现
 * @author lxs
 * @date2019年10月17日 下午4:34:24
 */
@Service("questionDailyPracticeService")
@Transactional
public class QuestionDailyPracticeServiceImpl implements QuestionDailyPracticeService {

	@Autowired
	private Question_Daily_PracticeMapper mapper;
	
	public int addDailyPractice(Question_Daily_Practice pojo) {
		int status = mapper.insertSelective(pojo);
		return status;
	}

	public int deleteDailyPractice(int id) {
		int count = mapper.deleteByPrimaryKey(id);
		return count;
	}

	public int updateDailyPractice(Question_Daily_Practice pojo) {
		int status = mapper.updateByPrimaryKeySelective(pojo);
		return status;
	}

	@Transactional(readOnly=true)
	public List<Question_Daily_Practice> getDailyPractice(Question_Daily_PracticeExample example) {
		List<Question_Daily_Practice> list = mapper.selectByExample(example);
		return list;
	}

}
