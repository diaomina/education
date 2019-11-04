package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.TeacherMapper;
import com.soft.model.Teacher;
import com.soft.model.TeacherExample;
import com.soft.service.TeacherService;
@Service("TeacherService")
@Transactional
public class TeacherServiceImpl implements TeacherService{
	
	@Autowired
	private TeacherMapper TeacherMapper;
	@Transactional(readOnly=true)
	public List<Teacher> getTeachers(TeacherExample example) {
	     List<Teacher> teachers=TeacherMapper.selectByExample(example);
		return teachers;
	}

	@Override
	public int addTeacher(Teacher teacher) {
		int count = TeacherMapper.insertSelective(teacher);
		return count;
	}

	@Override
	public Teacher getTeacher(int id) {
		Teacher Teacher = TeacherMapper.selectByPrimaryKey(id);
		return  Teacher;
	}
	@Override
	public int updateTeacher(Teacher teacher) {
		int count=TeacherMapper.updateByPrimaryKey(teacher);
		return count;
	}
	
	
	@Override
	public int deleteTeacher(int id) {
		
		int count=TeacherMapper.deleteByPrimaryKey(id);
		return count;
	}

	@Override
	public int checkLogin(String Teacher_name, String Teacher_password) {
		Teacher teacher = TeacherMapper.findTeacherByname(Teacher_name);
		int i=0;
		if(teacher !=null && teacher.getTeacherPassword().equals(Teacher_password)){
			System.out.println("登陆成功！");
			i=1;
			
		}else{
			System.out.println("用户名或密码错误！");
		}
		
		return i;
	}

	
	 
}
