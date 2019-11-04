package com.soft.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.model.PaperScoreExample;
import com.soft.model.PaperScoreExample.Criteria;
import com.soft.service.PaperScoreService;
import com.soft.model.PaperScore;

/**
*
*@author zxb
*@version 2019年10月21日下午9:38:19
*/
public class PaperScoreTest {
	private static ApplicationContext context = null;
	private PaperScoreService paperScoreService = null;
	
	
	@Before
	public void init() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		paperScoreService = (PaperScoreService) context.getBean("PaperScoreService");
	}
	@Test//多条件测试
	public void TestPaperScore()
	{
		List <PaperScore> paperScores=new ArrayList<PaperScore >();
		PaperScoreExample paperScoreExample = new PaperScoreExample();
		Criteria criteria = paperScoreExample.createCriteria();
		criteria.andStuIdEqualTo(110);
		criteria.andPaperIdEqualTo(5);
		paperScores =paperScoreService.selectPaperScoreByexample(paperScoreExample);
		for(PaperScore paperScore:paperScores){
			System.out.println(paperScore);
		}
		
	}
}