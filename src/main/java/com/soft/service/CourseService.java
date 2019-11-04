package com.soft.service;

import java.util.List;

import com.soft.model.Course;
import com.soft.model.CourseExample;
import com.soft.model.Student;
/**
 * 
 * @author zcz
 *
 */
public interface CourseService {
	//条件查询所有
	public List<Course> getCourses(CourseExample courseExample);
	
	//添加
	public int addCourse(Course course);
	
	//删除
	public int deleteCourse(int tid);
	
	//修改
	public int updateCourse(Course course);	
	
	//根据id查询
	public Course getCourse(int tid);
	
}
