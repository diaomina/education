package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.ChapterMapper;
import com.soft.dao.Chapter_ScoreMapper;
import com.soft.dao.Qestion_Chapter_PracticeMapper;
import com.soft.dao.Question_Error_QuestionMapper;
import com.soft.model.Chapter_Score;
import com.soft.model.Qestion_Chapter_Practice;
import com.soft.model.Qestion_Chapter_PracticeExample;
import com.soft.model.Qestion_Chapter_PracticeExample.Criteria;
import com.soft.model.Question_Error_Question;
import com.soft.model.Question_Error_QuestionExample;
import com.soft.service.ChapterPracticeService;
import com.soft.vo.StudentChapterTest;

@Service("chapterPracticeServiceImpl")
@Transactional
public class ChapterPracticeServiceImpl implements ChapterPracticeService {
	
	@Autowired
	private Qestion_Chapter_PracticeMapper chapterPracticeMapper;
	
	@Autowired
	private Chapter_ScoreMapper chapterScoreMapper;
	
	@Autowired
	private Question_Error_QuestionMapper questionErrorMapper;
	//根据章节id查询章节练习
	@Override
	public List<Qestion_Chapter_Practice> selectChapterPracticeById(Integer chapterId) {
		
		Qestion_Chapter_PracticeExample example=new Qestion_Chapter_PracticeExample();
		Criteria criteria=example.createCriteria();
		criteria.andChapterpIdEqualTo(chapterId);
		//查询章节练习题表中，习题可用的试题
		criteria.andStatusEqualTo(false);
		List<Qestion_Chapter_Practice>list=chapterPracticeMapper.selectByExample(example);
		return list;
	}
	
	//根据章节练习对象插入到章节练习表
	@Override
	public int insertChapterPracticeByIf(Qestion_Chapter_Practice chapterPractice) {
		int row=chapterPracticeMapper.insertSelective(chapterPractice);
		return row;
	}
	
	//给章节成绩表添加数据
	@Override
	public int insertChapterScope(Chapter_Score chapter_Score) {
		int row=chapterScoreMapper.insertSelective(chapter_Score);
		return row;
	}
	
	//给错题表添加数据
	@Override
	public int insertErrorQuestion(Question_Error_Question question_Error_Question) {
		int row=questionErrorMapper.insertSelective(question_Error_Question);
		return row;
	}
	
	//根据试题id和学号id查询错题表中试题是否存在
	@Override
	public Integer selectErrorQuestionByQuesId(Integer questionId,Integer stuId) {
		Question_Error_QuestionExample example=new Question_Error_QuestionExample();
		com.soft.model.Question_Error_QuestionExample.Criteria criteria=example.createCriteria();
		criteria.andQuestionIdEqualTo(questionId);
		criteria.andStuIdEqualTo(stuId);
		List<Question_Error_Question> list=questionErrorMapper.selectByExample(example);
		if(list!=null&&list.size()==1){
			Integer id=list.get(0).getId();
			return id;
		}
		return null;
	}
	
	//根据试题id更新数据
	@Override
	public int updateErrorQuestionByQuesId(Question_Error_Question question_Error_Question) {
		//创建人和创建时间不做更新
		question_Error_Question.setCreateBy(null);
		question_Error_Question.setCreateTime(null);
		int row=questionErrorMapper.updateByPrimaryKeySelective(question_Error_Question);
		return row;
	}
	
	

}
