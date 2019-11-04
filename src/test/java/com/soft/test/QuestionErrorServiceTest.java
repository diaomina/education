package com.soft.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.model.Question_Question;
import com.soft.service.QuestionErrorService;

public class QuestionErrorServiceTest {
	private static ApplicationContext context;
	private static QuestionErrorService service;
	
	@Before
	public void initConfig(){
	context = new ClassPathXmlApplicationContext("applicationContext.xml");
	service=(QuestionErrorService)context.getBean("questionErrorServiceImpl");
	}
	
	@Test
	public void addQuestionErrorTest() {
		
		List<Integer> record=new ArrayList<Integer>();
		//record.add(101);
		record.add(3);
		record.add(4);
		record.add(5);
		int stuId=3;
		String answerType="每日一练";
		service.addQuestionError(record, stuId, answerType);
		
	}
	
	/*
	public static void main(String[] args) {
		
		List<Integer> record=new ArrayList<Integer>();
		//record.add(101);
		record.add(105);
		record.add(107);
		record.add(108);
		System.out.println(record.size());
		
		int stuId=1;
		String answerType="每日一练";
		service.addQuestionError(record, stuId, answerType);
		
		List<Question_Question> list=service.selectQuestionError(1);
		
		for(Question_Question que:list){
			System.out.println(que.getId()+que.getQuestionContent()+que.getAnswer());
		}
		
	}*/
	@Test
	public void delQuestionErrorTest(){
		List<Integer> record=new ArrayList<Integer>();
		
		record.add(108);
		int stuId=1;
		service.delQuestionError(record, stuId);
	}
	@Test
	public void selectQuestionErrorTest(){
		List<Question_Question> list=service.selectQuestionError(1);
		
		for(Question_Question que:list){
			System.out.println(que.getId()+que.getQuestionContent()+que.getAnswer());
		}
	}
	

}
