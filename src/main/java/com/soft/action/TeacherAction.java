package com.soft.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.soft.model.Student;
import com.soft.model.Teacher;
import com.soft.model.TeacherExample;
import com.soft.service.TeacherService;

@Controller
@RequestMapping("/teachers")
public class TeacherAction {
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping(value="/login2",method =RequestMethod.POST)	
	@ResponseBody
	public ModelAndView  checkLogin2(Teacher teacher,ModelAndView mv,HttpSession session, HttpServletResponse response, Map<String, Object> map){
		
		PrintWriter out = null;
		try {
		  out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		/*
		for(int i=1;i<100;i++){
			System.out.println();
		}*/
		int i = teacherService.checkLogin(teacher.getTeacherName(), teacher.getTeacherPassword());
		
		
		
		if(i==1){
			//登录成功，将Stu对象设置到HttpSession作用范围域中
			TeacherExample teacherExample=new TeacherExample();
			com.soft.model.TeacherExample.Criteria criteria = teacherExample.createCriteria();
			criteria.andTeacherNameEqualTo(teacher.getTeacherName());
			List<Teacher> teacher2=teacherService.getTeachers(teacherExample);
			
			map.put("teacher", teacher2.get(0));
			
			session.setAttribute("teacher",teacher2.get(0));
			mv.setViewName("homepage/NewFile");	
			
			
			
		}else{
			 //登录失败，设置失败信息，并调转到登录页面
			out.print("<script language=\"javascript\">alert('登录名或密码错误，请重新输入');"

					+ "window.location.href='/education/login.jsp';</script>");
			  /*mv.addObject("message","登录名和密码错误！！！！！！！！！！！！，请重新输入");
	          mv.setViewName("student/fail");*/
			
			out.flush();
			out.close();
		}
		
		
		
		return mv;
	}
	
	@RequestMapping("updateTeacherPasswordUI")
	public String updateStudentPasswordUI(){
		//从sesseion中获得Studnet	
		return "student/updateTeacherPassword";
	}
	
	
	//教师修改密码
	@RequestMapping("updateTeacherPassword")
	public String updateStudentPassword(HttpSession session,
			@RequestParam("oldPassword") String oldPassword,
			@RequestParam("newPasswordone") String newPasswordone,
			Map<String, Object> map){
		//从sesseion中获得Teacher
		Teacher tea=(Teacher)session.getAttribute("teacher");
		System.out.println(oldPassword);
		System.out.println(tea.getTeacherPassword());
		if(!tea.getTeacherPassword().equals(oldPassword)){
			map.put("msg","密码错误");
			return "student/updateStudentPassword";
		}
		tea.setTeacherPassword(newPasswordone);
		teacherService.updateTeacher(tea);
		map.put("msg","修改成功");
		return "student/success2";
	}
	
	
	
	
	
	
	
	
}
