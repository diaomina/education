package com.soft.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.Question_Error_QuestionMapper;
import com.soft.model.Question_Error_Question;
import com.soft.model.Question_Error_QuestionExample;
import com.soft.model.Question_Error_QuestionExample.Criteria;
import com.soft.model.Question_Question;
import com.soft.service.QuestionErrorService;

@Service
@Transactional
public class QuestionErrorServiceImpl implements QuestionErrorService {
	@Autowired
	Question_Error_QuestionMapper mapper;
	
	
	
	@Override
	public void addQuestionError(List<Integer> record,int stuId,String answerType) { 
		for(int i=0;i<record.size();i++){
			Question_Error_QuestionExample example=new Question_Error_QuestionExample();
			Criteria criteria=example.createCriteria();
			criteria.andStuIdEqualTo(stuId);
			//得到题目id
				int id=record.get(i);
				System.out.println("题目id:"+id);
				criteria.andQuestionIdEqualTo(id);
			//通过题目id查找错题库中是否存在
				int x=mapper.countByExample(example);
				System.out.println("总数:"+x);
				System.out.println("***************");
					if((mapper.countByExample(example))==0){
						System.out.println(mapper.countByExample(example));
						Question_Error_Question questionError=new Question_Error_Question();
						questionError.setQuestionId(id);
						questionError.setStuId(stuId);
						questionError.setAnswerType(answerType);
						questionError.setCreateBy("zl");
						questionError.setCreateTime(new Date());
						mapper.insertSelective(questionError);
					}	
		}
	}



	@Override
	public List<Question_Question> selectQuestionError(int stuId) {
		List<Question_Question> list=mapper.selectErrorQuestionByStu(stuId);
		return list;
	}



	@Override
	public void delQuestionError(List<Integer> record, int stuId) {
		Question_Error_QuestionExample example=new Question_Error_QuestionExample();
		Criteria criteria=example.createCriteria();
		criteria.andStuIdEqualTo(stuId);
		for(int i=0;i<record.size();i++){
		int id=record.get(i);
		criteria.andQuestionIdEqualTo(id);
		mapper.deleteByExample(example);
		}
	}



	@Override
	public void delQuestionErrorById(int id, int sid) {
		Question_Error_QuestionExample example=new Question_Error_QuestionExample();
		Criteria criteria=example.createCriteria();
		criteria.andStuIdEqualTo(sid);	
		criteria.andQuestionIdEqualTo(id);
		mapper.deleteByExample(example);
	}



}
