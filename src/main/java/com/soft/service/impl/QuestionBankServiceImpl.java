package com.soft.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.Question_QuestionMapper;
import com.soft.model.Question_Question;
import com.soft.model.Question_QuestionExample;
import com.soft.model.Question_QuestionExample.Criteria;
import com.soft.service.QuestionBankService;


/**题库service实现
 * @author zl
 *
 */
@Service
@Transactional
public class QuestionBankServiceImpl implements QuestionBankService {
	@Autowired
	Question_QuestionMapper mapper;
	
	
	
	@Override
	public List<Question_Question> showAllQuestion(int corpId) {
		Question_QuestionExample example=new Question_QuestionExample();
		Criteria criteria=example.createCriteria();
		criteria.andCorpIdEqualTo(corpId);
		List<Question_Question> list=mapper.selectByExample(example);
		return list;	
	}



	@Override
	public int addQuestion(Question_Question question) {
		return mapper.insert(question);
	
	}



	@Override
	public int delQuestion(int id) {
		return mapper.deleteByPrimaryKey(id);
		
	}



	@Override
	public int updateQuestion(Question_Question question) {
		return mapper.updateByPrimaryKeySelective(question);
	}



	@Override
	public List<Question_Question> showAllQuestionByChapterId(int id) throws Exception {
	if(id<=0) throw  new Exception("不存在");
	Question_QuestionExample example=new Question_QuestionExample();
	Criteria criteria=example.createCriteria();
	criteria.andCouserIdEqualTo(id);
	List<Question_Question> list=mapper.selectByExample(example);
	return list;
	}



	@Override
	public Question_Question selectQuestionById(int id) throws Exception {
		if(id<=0) throw  new Exception("不存在");
		Question_Question record=mapper.selectByPrimaryKey(id);
		return record;
	}



	@Override
	public List<Question_Question> selectQuestionByList(List<Integer> list) throws Exception {
		List<Question_Question> record=mapper.selectQuestionByList(list);
		return record;
	}



	@Override
	public List<Question_Question> selectQuestionByExample(Question_QuestionExample example) {
		List<Question_Question> list = mapper.selectByExample(example);
		return list;
	}



	@Override
	public List<Map<String, Object>> showAllQuestionAndChapter(int corpId) {
		List<Map<String, Object>> list=mapper.showAllQuestionAndChapter(corpId);
		return list;
	}



	@Override
	public List<Map<String, Object>> showAllQuestionAndChapter2(int corpId, Integer chapter) {
		List<Map<String, Object>> list=mapper.showAllQuestionAndChapter2(corpId,chapter);
		return list;
	}



	

}
