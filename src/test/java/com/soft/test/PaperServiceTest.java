package com.soft.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.model.Paper;
import com.soft.model.PaperExample;
import com.soft.model.PaperExample.Criteria;
import com.soft.service.PaperService;

public class PaperServiceTest {
	
	private static ApplicationContext context;
	private PaperService paperService;
	
	@Before
	public void initConfig(){
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		paperService=(PaperService)context.getBean("PaperService");
	}
	
	@Test
	public void addPaper(){
		Paper paper = new Paper();
		paper.setCourseId(6);
		paper.setPaperName("JavaEE");
		paper.setPaperTime("01:00");
		
		int recordNumber = paperService.addPaper(paper);
		System.out.println(recordNumber);
	}
	
	@Test
	public void getPaperByCourseId() {
		Integer courseId = 10;
		PaperExample example1 = new PaperExample();
		Criteria criteria1 = example1.createCriteria();
		criteria1.andCourseIdEqualTo(courseId);
		List<Paper> paperList = paperService.findListByExample(example1);
		
		System.out.println("--------------------------------------");
		
		System.out.println(paperList);
		
		for(Paper paper : paperList){
			System.out.println(paper.toString());
		}
		System.out.println(paperList.get(0).getId());
	}

}
