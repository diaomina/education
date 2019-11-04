package com.soft.test;

import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.model.Student;
import com.soft.model.StudentExample;
import com.soft.model.StudentExample.Criteria;
import com.soft.service.StudentService;

public class StudentTest {
	public static ApplicationContext context = null;
	public static StudentService studentService = null;
	
	
	@Before
	public void init() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		studentService = (StudentService) context.getBean("studentService");
	}
	
	@Test
	public void addStudent(){
		Student student = new Student();
		student.setStuName("张三");
		student.setStuPasword("123456");
		student.setCreateBy("10086");
		student.setCreateBy("zcz");
		student.setCreateTime(new Date());
		int count = studentService.addStudent(student);
		System.out.println(count);
	}
	
	@Test
	public void getallStudent(){
		StudentExample studentExample = null;
		List<Student> list = studentService.getStudents(studentExample);
		for(Student list1:list){
			System.out.println(list1.getId()+" "+list1.getStuName()+" "+list1.getStuPasword()+" "
					+list1.getCorpId()+" "+list1.getCreateBy()+" "+list1.getCreateBy()+" "+list1.getModifyBy()+" "
					+list1.getModifyTime()+" "+list1.getStatus());
		}
	}
	
	@Test
	public void getStudentByPrimaryKey(){
		Student student = studentService.getStudent(2);
		if(student != null){
			System.out.println(student.getStuName());
		}
	}
	
	@Test
	public void TestGetStudents1() {
		
		StudentExample studentExample = new StudentExample();
		Criteria criteria = studentExample.createCriteria();
		criteria.andStuNameLike("%" + "老" + "%");		
		
		List<Student> students = studentService.getStudents(studentExample);
		for (Student list1 : students){
			System.out.println(list1.getId()+" "+list1.getStuName()+" "+list1.getStuPasword()+" "
					+list1.getCorpId()+" "+list1.getCreateBy()+" "+list1.getCreateBy()+" "+list1.getModifyBy()+" "
					+list1.getModifyTime());

		}
			
	}	
	
	@Test
	public void TestUpdateStudent() {
		Student student=new Student();
		student.setId(2);
		student.setStuName("老张");
		student.setStuPasword("12347855");
		student.setCreateBy("zcz");
		studentService.updateStudent(student);
		System.out.println(student);
	}
	

	@Test
	public void TestDeleteStudent() {	
		
		System.out.println(studentService.deleteStudent(1));
		
	}
	
	@Test
	public void TestLogin(){
		studentService.checkLogin("老张","123456");
	}
		
		
		
	}

