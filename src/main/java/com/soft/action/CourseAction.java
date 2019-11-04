package com.soft.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.soft.model.Course;
import com.soft.model.CourseExample;
import com.soft.model.CourseExample.Criteria;
import com.soft.service.CourseService;

/**
 * @date 2019-10-21
 * @author zcz
 *
 */
@Controller
@RequestMapping("/courses")
public class CourseAction {
	@Autowired
	private CourseService courseService;
	
/*	@RequestMapping("/getall")
	public String getallCourse(Map<String,Object> map){
		CourseExample courseExample =null;
		List<Course> list = courseService.getCourses(courseExample);
		
		map.put("courses", list);
		return "course/courselist";
	}*/
	@RequestMapping("/getall")
	public String getallCoursePage(
			@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,
			Map<String, Object> map) {
		// 放在查询之前  分页插件PageHelper，
		Page<Object> page = PageHelper.startPage(pagenum, 3);//第几页，每页多少条
		CourseExample courseExample = new CourseExample();
		List<Course> course = courseService.getCourses(courseExample);
		
		PageInfo<Course> info = new PageInfo<Course>(course,5);
		
		map.put("courses", course);
		map.put("infos", info);
		return "course/courselist";
	}
	//添加
	@RequestMapping("/addfirst")
	public String addCourse1(){
		return "course/courseadd";
	}
	@RequestMapping("/addcourses")
	public String addCourse(Course course){
		courseService.addCourse(course);
		return "forward:/courses/getall";
	}
	
	//查询课程
	
	
	@RequestMapping("/getcourse")
	public String getCoursespage(
			@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,
			Map<String, Object> map,Course course)  {
		Page<Object> page = PageHelper.startPage(pagenum, 3);//第几页，每页多少条
		
		CourseExample courseExample = new CourseExample();       
		Criteria criteria = courseExample.createCriteria();
		if(course.getCourseName() !=null&&!"".equals(course.getCourseName().trim()))
			criteria.andCourseNameLike("%"+course.getCourseName()+"%");
		
		List<Course> list = courseService.getCourses(courseExample);
		
		PageInfo<Course> info = new PageInfo<Course>(list,5);
		map.put("courses", list);
		map.put("infos", info);
		return "course/courselist1";
	}
		
		//查询所有数据,要实现修改，删除，Map<String, Object> map是存储数据到页面上
		@RequestMapping("/getallone")
		public String getCourse(Map<String,Object> map){
			CourseExample courseExample =null;
			List<Course> list = courseService.getCourses(courseExample);
			map.put("courses", list);
			return "course/courselist2";
	}
		// 跳转的修改页面
		@RequestMapping("/updateUi")
		public String updateCoursePage(int id,Map<String, Object> map) {
			Course course = courseService.getCourse(id);
			if(course.getCourseName()!= null){
				map.put("courses", course);
			}
			return "course/updatepage";
		}
		//修改页面
		@RequestMapping("/updateCou")
		public String updatepage(Course course){
			 courseService.updateCourse(course);
			return "course/updatepage1";
		}
		//删除数据
		@RequestMapping("/deleteCourse")
		public String deleteCourse(int id){
			courseService.deleteCourse(id);
			
			return "forward:/courses/getallone";
		}
	//表单是时间类型的处理方法			
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
		       //true:允许输入空值，false:不能为空值    
	}
	
}
