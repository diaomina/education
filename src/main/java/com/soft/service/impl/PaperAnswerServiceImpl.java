package com.soft.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.soft.dao.PaperAnswerMapper;
import com.soft.dao.PaperScoreMapper;
import com.soft.dao.Question_Error_QuestionMapper;
import com.soft.dao.Question_QuestionMapper;
import com.soft.dao.StudentMapper;
import com.soft.model.PaperAnswer;
import com.soft.model.PaperAnswerExample;
import com.soft.model.PaperExample;
import com.soft.model.PaperScore;
import com.soft.model.PaperScoreExample;
import com.soft.model.Question_Question;
import com.soft.model.Student;
import com.soft.model.PaperScoreExample.Criteria;
import com.soft.service.PaperAnswerService;
import com.soft.service.PaperScoreService;
import com.soft.service.QuestionErrorService;
import com.soft.vo.PaperAnswerQuestionStudentAreaVo;



/**
*
*@author zxb
*@version 2019年10月17日下午3:33:08
*/
@Service("PaperAnswerService")
@Transactional
public class PaperAnswerServiceImpl implements PaperAnswerService{
	@Autowired
	private PaperAnswerMapper paperAnswerMapper;
	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private Question_QuestionMapper question_QuestionMapper;
	@Override
	public int addPaperAnswer(PaperAnswer paperAnswer) {
		int count=paperAnswerMapper.insertSelective(paperAnswer);
		return count;
	}

	@Override
	public int delPaperAnswer(PaperAnswerExample example) {
		int count=paperAnswerMapper.deleteByExample(example);
		return count;
	}

	@Override
	public int updatePaperAnswer(PaperAnswer paperAnswer) {
		int count=paperAnswerMapper.updateByPrimaryKey(paperAnswer);
		return count;
	}
	
	@Override
	public List<PaperAnswer> findAllListPaperAnswer(PaperAnswerExample example) {
		List<PaperAnswer> paperAnswer=paperAnswerMapper.selectByExample(example);
		return paperAnswer;
	}
	
	
	
	
	
	@Override
	public List<PaperAnswerQuestionStudentAreaVo> getPaperAnswerQuestionStudentAreaVo2(PaperAnswerExample example) {
		List<PaperAnswerQuestionStudentAreaVo> list=new ArrayList<PaperAnswerQuestionStudentAreaVo>();
		/*double totalScore=0;
		int corpId=0;
		int stuId=0;
		int paperId=0;
		Date creattime=null;
		String stuName="";
		List<Integer> error=new ArrayList<Integer>();*/
		List<PaperAnswer> paperAnswers=paperAnswerMapper.selectByExample(example);
		for(PaperAnswer paperAnswer:paperAnswers)
		{
			PaperAnswerQuestionStudentAreaVo paperAnswerQuestionStudentAreaVo=new PaperAnswerQuestionStudentAreaVo();
			
			paperAnswerQuestionStudentAreaVo.setId(paperAnswer.getId());
			paperAnswerQuestionStudentAreaVo.setStuId(paperAnswer.getStuId());
			paperAnswerQuestionStudentAreaVo.setPaperId(paperAnswer.getPaperId());
			paperAnswerQuestionStudentAreaVo.setCreateTime(paperAnswer.getCreateTime());
			
			
			Student student=studentMapper.selectByPrimaryKey(paperAnswer.getStuId());
			paperAnswerQuestionStudentAreaVo.setStuName(student.getStuName());
			
			
			Question_Question question_Question=question_QuestionMapper.selectByPrimaryKey(paperAnswer.getQuestionId());
			paperAnswerQuestionStudentAreaVo.setQuestionContent(question_Question.getQuestionContent());
			
			paperAnswerQuestionStudentAreaVo.setTrueAnswer(question_Question.getAnswer());
			
			String answer = paperAnswer.getAnswer();
			
			if(answer==null || "".equals(answer)){
				answer = "未答题";
				paperAnswer.setAnswer("未答题");
			}
			//corpId=paperAnswer.getCorpId();
			paperAnswerQuestionStudentAreaVo.setAnswer(answer);
			/*paperAnswerQuestionStudentAreaVo.setScore(question_Question.getScore());*/
			if(!paperAnswer.getAnswer().equals(question_Question.getAnswer())){
				/*paperAnswerQuestionStudentAreaVo.setScore(0);*/
				paperAnswerQuestionStudentAreaVo.setAnswer("<span style=\"color: red\">"+paperAnswer.getAnswer()+"</span>");
			/*	error.add(paperAnswer.getQuestionId());*/
			}
			else{
				/*totalScore=question_Question.getScore()+totalScore;*/
			}
			/*corpId=paperAnswer.getCorpId();
			stuId=paperAnswer.getStuId();
			paperId=paperAnswer.getPaperId();
			creattime=paperAnswer.getCreateTime();
			stuName=student.getStuName();*/
			
			//paperscore添加
			if(question_Question.getQuestionTypeId()==1){
				paperAnswerQuestionStudentAreaVo.setOption("A:"+question_Question.getOptionA()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B:"+question_Question.getOptionB()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C:"+question_Question.getOptionA()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D:"+question_Question.getOptionD());
			}
			else {
				paperAnswerQuestionStudentAreaVo.setOption(" ");
			}
			
			list.add(paperAnswerQuestionStudentAreaVo);
		}
		/*//paperscore添加
		PaperScore paperScore=new PaperScore();
		paperScore.setCorpId(corpId);
		paperScore.setStuId(stuId);
		paperScore.setPaperId(paperId);
		paperScore.setCreateTime(creattime);
		paperScore.setScore(totalScore);
		paperScore.setCreateBy(stuName);
		
		PaperScoreExample paperScoreExample=new PaperScoreExample();
		Criteria criteria=paperScoreExample.createCriteria();
		criteria.andStuIdEqualTo(stuId);
		criteria.andPaperIdEqualTo(paperId);
		List<PaperScore> lists=paperScoreService.selectPaperScoreByexample(paperScoreExample);
		if(lists==null||lists.size()==0){
			paperScoreMapper.insertSelective(paperScore);
		}
		
		
		for(Integer err:error){
			System.out.println(err);
		}
		
		questionErrorService.addQuestionError(error,stuId,"试卷");*/
		return list;
	}
	
	
	
	
	
	
	
	
	
	//查询总数
	@Override
	public int countByExample(PaperAnswerExample example) {
		int count=paperAnswerMapper.countByExample(example);
		return count;
	}
	//批量添加
	@Override
	public int insertList(List<PaperAnswer> paperAnswersList) {
		int count=0;
		for(PaperAnswer paperAnswer:paperAnswersList){
			paperAnswer.setCreateTime(new Date());
			count=addPaperAnswer(paperAnswer);		}
		return count;
	}


}
