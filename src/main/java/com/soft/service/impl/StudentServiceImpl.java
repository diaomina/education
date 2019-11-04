package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.StudentMapper;
import com.soft.model.Student;
import com.soft.model.StudentExample;
import com.soft.service.StudentService;
@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentMapper studentMapper;
	@Transactional(readOnly=true)
	public List<Student> getStudents(StudentExample example) {
	     List<Student> students=studentMapper.selectByExample(example);
		return students;
	}

	@Override
	public int addStudent(Student student) {
		int count = studentMapper.insertSelective(student);
		return count;
	}

	@Override
	public Student getStudent(int id) {
		Student student = studentMapper.selectByPrimaryKey(id);
		return  student;
	}

	public int updateStudent(Student student) {
		int count=studentMapper.updateByPrimaryKeySelective(student);
		return count;
	}
	
	

	public int deleteStudent(int id) {
		
		int count=studentMapper.deleteByPrimaryKey(id);
		return count;
	}

	@Override
	public int checkLogin(String Stu_name, String Stu_password) {
		Student stu = studentMapper.findStudentByname(Stu_name);
		int i=0;
		if(stu !=null && stu.getStuPasword().equals(Stu_password)){
			System.out.println("登陆成功！");
			i=1;
			
		}else{
			System.out.println("用户名或密码错误！");
		}
		
		return i;
	}

	
	 
}
