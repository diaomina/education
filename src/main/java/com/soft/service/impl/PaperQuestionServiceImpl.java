package com.soft.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.PaperQuestionMapper;
import com.soft.dao.Question_QuestionMapper;
import com.soft.model.PaperQuestion;
import com.soft.model.PaperQuestionExample;
import com.soft.model.Question_Question;
import com.soft.model.PaperQuestionExample.Criteria;
import com.soft.service.PaperQuestionService;

/**
 * 
* @ClassName: PaperQuestionServiceImpl
* @Description: Question_Paper_PuestionService的实现类
* @author ljy
* @date 2019年10月16日 下午4:28:23
*
 */
@Service("PaperQuestionService")
@Transactional
public class PaperQuestionServiceImpl implements PaperQuestionService {

	@Autowired
	PaperQuestionMapper mapper;
	
	// 题库service写出来后删除
	@Autowired
	Question_QuestionMapper questionMapper;

	
	@Override
	@Transactional(readOnly=true)
	public List<PaperQuestion> findListByExample(PaperQuestionExample example) {
		List<PaperQuestion> list = null;
		if(example != null) {
			list = mapper.selectByExample(example);
		} else {
			System.out.println("paperId检验为null!");
		}
		return list;
	}
	
	
	
	@Override
	@Transactional(readOnly=true)
	public List<Question_Question> findListByQuestionId(List<PaperQuestion> list) {
		// 存放从题库中抽取的题目对象
		List<Question_Question> questionList = new ArrayList<Question_Question>();
		
		if(list!=null && list.size()>0){
			for(PaperQuestion paperQuestion : list){
				Integer id = paperQuestion.getQuestionId();
				Question_Question question = questionMapper.selectByPrimaryKey(id);
				questionList.add(question);
			}
		}
		
		return questionList;
	}
	

	@Override
	public PaperQuestion loadById(Integer id) {
		PaperQuestion paperQuestion = null;
		if(id != null) {
			paperQuestion = mapper.selectByPrimaryKey(id);
		} else {
			System.out.println("id检验为null!");
		}
		return paperQuestion;
	}

	

	@Override
	public int addPaperQuestion(PaperQuestion paperQuestion) {
		int recordNumber = 0;
		if(paperQuestion != null) {
			recordNumber = mapper.insertSelective(paperQuestion);
		} else {
			System.out.println("paperQuestion检验为null!");
		}
		return recordNumber;
	}


	@Override
	public int delPaperQuestionByExample(PaperQuestionExample example) {
		int recordNumber = 0;
		if(example != null) {
			recordNumber = mapper.deleteByExample(example);
		} else {
			System.out.println("example检验为null!");
		}
		return recordNumber;
	}


	@Override
	public int updatePaperQuestionByExample(PaperQuestion paperQuestion, PaperQuestionExample example) {
		int recordNumber = 0;
		if(paperQuestion != null) {
			recordNumber = mapper.updateByExampleSelective(paperQuestion, example);
		} else {
			System.out.println();
		}
		return recordNumber;
	}



	@Override
	public List<Question_Question> getPaperQuestionByPaperId(Integer paperId) {
		
		// 根据试卷ID查询题目(查找一张试卷的所有题目ID)
		PaperQuestionExample example = new PaperQuestionExample();
		Criteria criteria = example.createCriteria();
		criteria.andPaperIdEqualTo(paperId);
		List<PaperQuestion> list = findListByExample(example);
		
		
		List<Question_Question> questionList = findListByQuestionId(list); 

		return questionList;
	}



	@SuppressWarnings("null")
	@Override
	public Double countPaperAllScore(List<Question_Question> list) {
		
		Double scoreAll = null;
		for(Question_Question question : list) {
			scoreAll += question.getScore();
		}
		
		return scoreAll;
	}



	






}
