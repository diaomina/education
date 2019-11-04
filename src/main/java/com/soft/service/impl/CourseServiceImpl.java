package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.CourseMapper;
import com.soft.model.Course;
import com.soft.model.CourseExample;
import com.soft.service.CourseService;
@Service("courseService")
@Transactional
public class CourseServiceImpl implements CourseService {
	@Autowired
	private CourseMapper courseMapper;
	
	@Transactional(readOnly=true)
	public List<Course> getCourses(CourseExample courseExample) {
		List<Course> list = courseMapper.selectByExample(courseExample);
		
		return list;
	}

	@Override
	public int addCourse(Course course) {
		int count = courseMapper.insert(course);
		return count;
	}

	@Override
	public int deleteCourse(int tid) {
		int count = courseMapper.deleteByPrimaryKey(tid);
		return count;
	}

	@Override
	public int updateCourse(Course course) {
		int count = courseMapper.updateByPrimaryKey(course);
		return count;
	}

	@Override
	public Course getCourse(int tid) {
		Course course = courseMapper.selectByPrimaryKey(tid);
		return course;
	}

}
