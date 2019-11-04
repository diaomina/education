package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.Question_Chapter_AnswerMapper;
import com.soft.model.Question_Chapter_Answer;
import com.soft.model.Question_Chapter_AnswerExample;
import com.soft.model.Question_Chapter_AnswerExample.Criteria;
import com.soft.service.ChapterQuesAnswerService;

@Service("chapterQuesAnswerServiceImpl")
@Transactional
public class ChapterQuesAnswerServiceImpl implements ChapterQuesAnswerService {
	
	@Autowired
	private Question_Chapter_AnswerMapper chapterQuestionAnswer;
	
	@Override
	public int addChapterQuestion(Question_Chapter_Answer questionAnswer) {
		int row=chapterQuestionAnswer.insertSelective(questionAnswer);
		return row;
	}

	@Override
	public int updateChapterQuestion(Question_Chapter_Answer questionAnswer) {
		//1.更新时，将创建者和创建时间置空
		
		int row=chapterQuestionAnswer.updateByPrimaryKey(questionAnswer);
		return row;
	}

	@Override
	public List<Question_Chapter_Answer> findChapterQuestion(Question_Chapter_Answer questionAnswer) {
		Question_Chapter_AnswerExample example=new Question_Chapter_AnswerExample();
		Criteria criteria=example.createCriteria();
		//章节id
		if(questionAnswer.getChapterId()!=null){
			criteria.andChapterIdEqualTo(questionAnswer.getChapterId());
		}
		//主键id
		if(questionAnswer.getId()!=null){
			criteria.andIdEqualTo(questionAnswer.getId());
		}
		//试题id
		if(questionAnswer.getQuestionId()!=null){
			criteria.andQuestionIdEqualTo(questionAnswer.getQuestionId());
		}
		//学生id
		if(questionAnswer.getStuId()!=null){
			criteria.andStuIdEqualTo(questionAnswer.getStuId());
		}
		List<Question_Chapter_Answer> list=chapterQuestionAnswer.selectByExample(example);
		return list;
	}

	@Override
	public int delChapterQuestion(Integer Id) {
		
		return 0;
	}

}
