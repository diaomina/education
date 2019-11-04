package com.soft.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.service.TeacherService;

/**
*
*@author zxb
*@version 2019年10月22日下午4:49:06
*/
public class TeacherTest {
	public static ApplicationContext context = null;
	public static TeacherService teacherService = null;
	
	@Before
	public void init() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		teacherService = (TeacherService)context.getBean("TeacherService");
	}
	@Test
	public void TestLogin(){
		int i=teacherService.checkLogin("张小保","123456");
	}
}
