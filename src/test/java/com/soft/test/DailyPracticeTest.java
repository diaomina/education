package com.soft.test;

import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.model.Question_Daily_Practice;
import com.soft.model.Question_Daily_PracticeExample;
import com.soft.service.QuestionDailyPracticeService;

/**
 * 每日一练测试
 * @author lxs
 * @date2019年10月18日 下午3:46:03
 */
public class DailyPracticeTest {

	private ApplicationContext context = null;
	private QuestionDailyPracticeService service;
	
	@Before
	public void init() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		service = (QuestionDailyPracticeService)context.getBean("questionDailyPracticeService");
	}
	
	@Test
	public void testAddDailyPractice() {
		Question_Daily_Practice pojo = new Question_Daily_Practice();
		pojo.setPracticeDate(new Date());
		pojo.setQuestionId(1);
		pojo.setCreateBy("lxs");
		pojo.setCreateTime(new Date());
		pojo.setCorpId(188888);
		pojo.setVersion(1);
		pojo.setStatus(false);
		System.out.println(service.addDailyPractice(pojo));
	}
	
	@Test
	public void testDeleteDailyPractice() {
		System.out.println(service.deleteDailyPractice(3));
	}
	
	@Test
	public void testUpdateDailyPractice() {
		Question_Daily_Practice pojo = new Question_Daily_Practice();
		pojo.setId(1);
		pojo.setModifyBy("lxs");
		pojo.setModifyTime(new Date());
		System.out.println(service.updateDailyPractice(pojo));
	}
	
	@Test
	public void testGetDailyPractice() {
		Question_Daily_PracticeExample example = new Question_Daily_PracticeExample();
		List<Question_Daily_Practice> list = service.getDailyPractice(example);
		for(Question_Daily_Practice question : list) {
			System.out.println(question.getId()+","+question.getPracticeDate()+","+question.getQuestionId());
		}
	}
	
}
