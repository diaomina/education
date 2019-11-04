package com.soft.service;

import java.util.List;

import com.soft.model.Teacher;
import com.soft.model.TeacherExample;

/**
*
*@author zxb
*@version 2019年10月22日下午4:17:37
*/
public interface TeacherService {
	//条件查询所有学生,TeacherExample条件类
			public List<Teacher> getTeachers(TeacherExample example);
			
			
			//添加学生
			public int addTeacher(Teacher teacher);
			
			
			//根据id查询学生
			public Teacher getTeacher(int tid);
			
			
			//修改学生
			 public int updateTeacher(Teacher teacher);	 
			 
			 
			 //删除学生	 
			 public int deleteTeacher(int tid);

			 public int checkLogin(String Teacher_name, String Teacher_password);

}
