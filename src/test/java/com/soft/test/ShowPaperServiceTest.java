package com.soft.test;


import org.apache.log4j.chainsaw.Main;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.service.ShowPaperService;
import com.soft.vo.ShowPaper;

/**
 * 
* @ClassName: ShowPaperServiceTest
* @Description: ShowPaperService的测试类
* @author ljy
* @date 2019年10月18日 下午5:21:11
*
 */
public class ShowPaperServiceTest {
	
	private static ApplicationContext context;
	private ShowPaperService showPaperService;
	
	@Before
	public void initConfig(){
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		showPaperService=(ShowPaperService)context.getBean("ShowPaperService");
	}

	@Test
	public void testGetShowPaperByPaperId(){
		ShowPaper showPaper = showPaperService.getShowPaperByPaperId(5);
		System.out.println(showPaper.toString());
	}
	

}
