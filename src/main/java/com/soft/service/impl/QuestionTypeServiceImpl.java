package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.Question_Question_TypeMapper;
import com.soft.model.Question_Question_Type;
import com.soft.model.Question_Question_TypeExample;
import com.soft.model.Question_Question_TypeExample.Criteria;
import com.soft.service.QuestionTypeService;
@Service
@Transactional
public class QuestionTypeServiceImpl implements QuestionTypeService {
	@Autowired
	Question_Question_TypeMapper mapper;
	
	Question_Question_TypeExample example;
	
	@Override
	public List<Question_Question_Type> showAllTypes() {
		Question_Question_TypeExample example=new Question_Question_TypeExample();
		example=null;
		List<Question_Question_Type> list=mapper.selectByExample(example);
		return list;
	}

	@Override
	public void addTypes(Question_Question_Type record) throws Exception {
		if(record==null) {
			throw new Exception("记录为空");
		}
		mapper.insert(record);
		
	}

	@Override
	public int findType(String type) {
		Question_Question_TypeExample example=new Question_Question_TypeExample();
		Criteria criteria=example.createCriteria();
		criteria.andQuestionTypeEqualTo(type);  
		int i=0;
		List<Question_Question_Type> record=mapper.selectByExample(example);
		
		return record.size();
	}

	@Override
	public void updateType(Question_Question_Type type) {
		mapper.updateByPrimaryKey(type);
	}

	@Override
	public void delType(int i) {
		mapper.deleteByPrimaryKey(i);
		
	}

}
