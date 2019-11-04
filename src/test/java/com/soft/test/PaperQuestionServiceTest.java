package com.soft.test;


import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.model.PaperQuestion;
import com.soft.model.PaperQuestionExample;
import com.soft.model.Question_Question;
import com.soft.model.PaperQuestionExample.Criteria;
import com.soft.service.PaperQuestionService;

public class PaperQuestionServiceTest {
	
	private static ApplicationContext context;
	private PaperQuestionService paperQuestionService;
	
	@Before
	public void initConfig(){
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		paperQuestionService=(PaperQuestionService)context.getBean("PaperQuestionService");
	}

	@Test
	public void testFindListByExampleByExample() {
		// 根据试卷ID查询题目(查找一张试卷的所有题目ID)
		PaperQuestionExample example = new PaperQuestionExample();
		Criteria criteria = example.createCriteria();
		criteria.andPaperIdEqualTo(2);
		List<PaperQuestion> list = paperQuestionService.findListByExample(example);
		for(PaperQuestion paperQuestion : list) {
			System.out.println(paperQuestion.toString());
		}
		
	}
	
	// 根据试卷ID获取题库中这张试卷的题目
	@Test
	public void testFindListByQuestionId() {
		// 根据试卷ID查询题目(查找一张试卷的所有题目ID)
		PaperQuestionExample example = new PaperQuestionExample();
		Criteria criteria = example.createCriteria();
		criteria.andPaperIdEqualTo(2);
		List<PaperQuestion> list = paperQuestionService.findListByExample(example);

		List<Question_Question> questionList = paperQuestionService.findListByQuestionId(list); 
		for(Question_Question question : questionList){
			System.out.println(question.toString());
		}
	}
	


	@Test
	public void testAddPaperQuestion() {
		PaperQuestion paperQuestion = new PaperQuestion();
		
		paperQuestion.setCorpId(1);
		paperQuestion.setPaperId(1);
		paperQuestion.setQuestionId(1);
		paperQuestion.setCreateBy("李金印");
		paperQuestion.setCreateTime(new Date());
		paperQuestion.setModifyBy(null);
		paperQuestion.setModifyTime(null);
		paperQuestion.setStatus(false);
		paperQuestion.setVersion(1);
		
		int recordNumber = paperQuestionService.addPaperQuestion(paperQuestion);
		
		System.out.println(recordNumber);
		
	}
	
	@Test
	public void testAddBatchPaperQuestion() {
		for(int i=105;i<110;i++){
			PaperQuestion paperQuestion = new PaperQuestion();
			paperQuestion.setCorpId(1);
			paperQuestion.setPaperId(5);
			paperQuestion.setQuestionId(i);
			paperQuestion.setCreateBy("五谷");
			paperQuestion.setCreateTime(new Date());
			paperQuestion.setModifyBy(null);
			paperQuestion.setModifyTime(null);
			paperQuestion.setStatus(false);
			paperQuestion.setVersion(1);
			
			int recordNumber = paperQuestionService.addPaperQuestion(paperQuestion);
			
			System.out.println(recordNumber);
		}
	}

	@Test
	public void testDelPaperQuestionByExample() {
		PaperQuestionExample example = new PaperQuestionExample();
		Criteria criteria = example.createCriteria();
		// 根据题目ID删除一个题目
		//criteria.andIdEqualTo(2);
		
		// 根据试卷ID删除一整张试卷
		criteria.andPaperIdEqualTo(1);
		
		int recordNumber = paperQuestionService.delPaperQuestionByExample(example);
		System.out.println(recordNumber);
		
	}

	
	@Test
	public void testUpdatePaperQuestionByExample() {
		
		PaperQuestion paperQuestion = new PaperQuestion();
		paperQuestion.setPaperId(2);
		paperQuestion.setCreateBy("刘备");
		
		PaperQuestionExample example = new PaperQuestionExample();
		Criteria criteria = example.createCriteria();
		// 更新一张试卷的作者,根据试卷ID
		criteria.andPaperIdEqualTo(paperQuestion.getPaperId());
		
		int recordNumber = paperQuestionService.updatePaperQuestionByExample(paperQuestion, example);
		System.out.println(recordNumber);
		
	}

}
