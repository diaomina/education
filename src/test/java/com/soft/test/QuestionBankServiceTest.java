package com.soft.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.model.Question_Question;
import com.soft.model.Question_QuestionExample;
import com.soft.model.Question_QuestionExample.Criteria;
import com.soft.service.QuestionBankService;

public class QuestionBankServiceTest {
	
	private static ApplicationContext context;
	private static QuestionBankService queBankService;
	
	@Before
	public void initConfig(){
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		queBankService=(QuestionBankService)context.getBean("questionBankServiceImpl");
	}
	@Test
	public void selectQuestionByListTest() throws Exception{
		List<Integer> list=new ArrayList<Integer>();
		list.add(100);
		list.add(101);
		list.add(102);
		List<Question_Question> record=queBankService.selectQuestionByList(list);
		System.out.println(1);
		for(Question_Question que:record){
			System.out.println(que.getId()+que.getQuestionContent());
		}
		
		
	}
	
	@Test
	public void testExample(){
		Integer courseId = 2;
		
		Question_QuestionExample example = new Question_QuestionExample();
		Criteria criteria = example.createCriteria();
		List<Question_Question> list = queBankService.selectQuestionByExample(example);
		for(Question_Question question : list){
			System.out.println(question.toString());
		}
	}
	
	@Test
	public void testshowAllQuestionAndChapter(){
		Integer corpId = 1;
		List<Map<String, Object>> list=queBankService.showAllQuestionAndChapter(corpId);
		for(Map<String, Object> question : list){
			System.out.println(question);
		}
		
		
	}

}
