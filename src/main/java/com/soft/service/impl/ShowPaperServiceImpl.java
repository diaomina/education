package com.soft.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.model.Paper;
import com.soft.model.Question_Question;
import com.soft.service.PaperQuestionService;
import com.soft.service.PaperService;
import com.soft.service.ShowPaperService;
import com.soft.vo.ShowPaper;

/**
 * 
* @ClassName: ShowPaperServiceImpl
* @Description: 实现ShowPaperService
* @author ljy
* @date 2009年1月1日 上午3:19:45
*
 */

@Service("ShowPaperService")
@Transactional
public class ShowPaperServiceImpl implements ShowPaperService {
	
	@Autowired
	PaperService paperService;
	
	@Autowired
	PaperQuestionService paperQuestionService;

	
	
	@Override
	public ShowPaper getShowPaperByPaperId(Integer paperId) {
		
		ShowPaper showPaper = new ShowPaper();
		
		Paper paper = paperService.loadById(paperId);
		
		//根据题目id查询到这张试卷所有题目
		List<Question_Question> questionList = paperQuestionService.getPaperQuestionByPaperId(paperId);
		
		List<Question_Question> questionType1List = new ArrayList<Question_Question>();
		List<Question_Question> questionType2List = new ArrayList<Question_Question>();
		List<Question_Question> questionType3List = new ArrayList<Question_Question>();
		
		for(Question_Question question : questionList){
			if(question.getQuestionTypeId() == 1){
				//选择题
			/*	System.out.println("这里是选择题计数");
				System.out.println(question.getQuestionTypeId());*/
				questionType1List.add(question);
				//questionType1Num += 1;
			}
			if(question.getQuestionTypeId() == 2){
				//判断题
				questionType2List.add(question);
				//questionType2Num += 1;
			}
			if(question.getQuestionTypeId() == 3){
				//填空题
				questionType3List.add(question);
				//questionType3Num += 1;
			}
		}
		
		showPaper.setPaperName(paper.getPaperName());
		showPaper.setPaperTime(paper.getPaperTime());
		showPaper.setScoreAll(paper.getScoreAll());
		showPaper.setQuestionType1List(questionType1List);
		showPaper.setQuestionType2List(questionType2List);
		showPaper.setQuestionType3List(questionType3List);

		return showPaper;
	}

	
	
}
