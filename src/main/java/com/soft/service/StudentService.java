package com.soft.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.soft.model.Student;
import com.soft.model.StudentExample;

public interface StudentService {
		//条件查询所有学生,StudentExample条件类
		public List<Student> getStudents(StudentExample example);
		
		
		//添加学生
		public int addStudent(Student student);
		
		
		//根据id查询学生
		public Student getStudent(int tid);
		
		
		//修改学生
		 public int updateStudent(Student student);	 
		 
		 
		 //删除学生	 
		 public int deleteStudent(int tid);

		 public int checkLogin(String Stu_name,String Stu_password);

}
