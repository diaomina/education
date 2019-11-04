package com.soft.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.model.Course;
import com.soft.model.CourseExample;
import com.soft.service.CourseService;

public class CourseTest {
	private static ApplicationContext context = null;
	private CourseService courseService = null;
	
	@Before
	public void init() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		courseService = (CourseService) context.getBean("courseService");
	}
	
	@Test
	public void TestGetAllCourse(){
		CourseExample courseExample = null;
		List<Course> list = courseService.getCourses(courseExample);
		for(Course cor:list){
			System.out.println(cor.getCourseName()+"  "+cor.getCorpId()+"  "+cor.getCreateBy()+"  "+
								cor.getCreateTime()+"  "+cor.getModifyBy()+"  "+cor.getModifyTime()+"  "+
								cor.getStatus()+"  " +cor.getVersion());
		}
		
	}
	
	@Test
	public void TestaddCourse(){
	
	/*	Course course = new Course();
		course.setCourseName("Java");
		course.setCorpId(100086);
		course.setCreateBy("zcz");
		course.setCreateTime(new Date());*/
		
		/*Course course1 = new Course();
		course1.setCourseName("Dubbo");
		course1.setCorpId(10001);
		course1.setCreateBy("zcz");
		course1.setCreateTime(new Date());*/
		
		Course course2 = new Course();
		course2.setCourseName("Maven");
		course2.setCorpId(1230);
		course2.setCreateBy("zcz");
		course2.setCreateTime(new Date());
		
		
		int cout = courseService.addCourse(course2);
		System.out.println(cout);
	}
	
	@Test
	public void TestDeleteCourse(){
		System.out.println(courseService.deleteCourse(1));
	}
	@Test
	public void TestUpdateCourse(){
		Course course = new Course();
		course.setId(2);
		course.setCourseName("Spring MVC");
		course.setCreateBy("老朱");
		course.setCorpId(480001);
		course.setCreateTime(new Date());
		int cout = courseService.updateCourse(course);
		System.out.println(cout);
	}
	@Test
	public void TestgetCourse(){
		Course course = courseService.getCourse(2);
		if(course != null){
			System.out.println(course.getCourseName()+"  " +course.getCreateBy());
		}
		
	}
}
