package com.soft.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.test.annotation.Repeat;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.soft.model.Student;
import com.soft.model.StudentExample;
import com.soft.model.StudentExample.Criteria;
import com.soft.model.Teacher;
import com.soft.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentAction {

	@Autowired
	private StudentService studentService;
	/**
	 * 
	* @Title: toLoginPagepackage com.soft.service.impl;

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

	* @Description: 跳转到登陆界面
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/toLoginPage")
	public String toLoginPage() {
		return "login";
	}
	
	
	//@ResponseBody
	@RequestMapping("/login")	
	public String  checkLogin(Student student,HttpSession session,HttpServletResponse response, Map<String, Object> map){
		
		PrintWriter out = null;
		try {
		  out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int i = studentService.checkLogin(student.getStuName(), student.getStuPasword());
		if(i==1){
			//登录成功，将Stu对象设置到HttpSession作用范围域中
			StudentExample studentExample=new StudentExample();
			Criteria criteria = studentExample.createCriteria();
			criteria.andStuNameEqualTo(student.getStuName());
			List<Student> student2=studentService.getStudents(studentExample);
			
			session.setAttribute("student",student2.get(0));
			map.put("student", student2.get(0));
			
			
		}else{
			 //登录失败，设置失败信息，并调转到登录页面

			out.print("<script language=\"javascript\">alert('登录名或密码错误，请重新输入');"

					+ "window.location.href='/education/login.jsp';</script>");
			
			out.flush();
			out.close();
		}
		
		return "homepage/IntoStudent";
	}

	//添加
	@RequestMapping("/addone")
	public String addStudent1(){
		
		return "student/addpage";
	}
	@RequestMapping("/addtwo")
	public String addStudent(Student student){
		studentService.addStudent(student);
		return "forward:/students/getall";
	}
	@RequestMapping("/getall")
	public String getallStudent(
			@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,
			Map<String, Object> map) {
		// 放在查询之前  分页插件PageHelper，
		Page<Object> page = PageHelper.startPage(pagenum, 3);//第几页，每页多少条
		StudentExample studentExample = new StudentExample();
		List<Student> list = studentService.getStudents(studentExample);
		PageInfo<Student> info = new PageInfo<Student>(list,5);
		map.put("students", list);
		map.put("infos", info);
		return "student/listall";
	}
	// 跳转的修改页面
	@RequestMapping("/updateSi")
	public String getStudentpage(int id,Map<String, Object> map){
		Student student = studentService.getStudent(id);
		if(student.getStuName() != null){
			map.put("students", student);
		}

		return "student/updatepage";
	}
	//修改页面
	@RequestMapping(value="/updeteStu",method =RequestMethod.POST )
	public String updatepage(Student student){
		studentService.updateStudent(student);
		return "student/updatepage1";
	}
	//删除
	@RequestMapping("/deletestu")
	public String deleteStudent(int id ){
		studentService.deleteStudent(id);
		return "forward:/students/getall";
	}
	//查询学生
	@RequestMapping(value="/findstu")
	public String getStudent(@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,
			Map<String, Object> map,Student student){
		Page<Object> page = PageHelper.startPage(pagenum, 3);//第几页，每页多少条
		StudentExample studentExample = new StudentExample();
		Criteria criteria = studentExample.createCriteria();
		if(student.getStuName() != null &&!"".equals(student.getStuName().trim())){
			criteria.andStuNameLike("%"+student.getStuName()+"%");

		}
		List<Student> list = studentService.getStudents(studentExample);
		PageInfo<Student> info = new PageInfo<Student>(list,5);
		map.put("students", list);
		map.put("infos", info);
		return "student/liststudent";

	}
	

	@RequestMapping("/toStudentInfoPage")
	public String toStudentInfoPage(HttpSession session){
		Student student = (Student)session.getAttribute("student");
		return "student/studentInfo";
	}
	
	/*//退出
	@RequestMapping()
	public String getoutpage(HttpSession session){
		session.invalidate();
		return null;
	} */
	
	//表单是时间类型的处理方法			
		@InitBinder
		public void initBinder(WebDataBinder binder) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			dateFormat.setLenient(true);
			binder.registerCustomEditor(Date.class, new CustomDateEditor(
					dateFormat, true));
			       //true:允许输入空值，false:不能为空值    
		}
		
		
		@RequestMapping("updateStudentPasswordUI")
		public String updateStudentPasswordUI(){
			//从sesseion中获得Studnet	
			return "student/updateStudentPassword";
		}
		
		
		//学生修改密码
		@RequestMapping("updateStudentPassword")
		public String updateStudentPassword(HttpSession session,
				@RequestParam("oldPassword") String oldPassword,
				@RequestParam("newPasswordone") String newPasswordone,
				Map<String, Object> map){
			//从sesseion中获得Studnet
			Student stu=(Student)session.getAttribute("student");
			System.out.println(oldPassword);
			System.out.println(stu.getStuPasword());
			if(!stu.getStuPasword().equals(oldPassword)){
				map.put("msg","密码错误");
				return "student/updateStudentPassword";
			}
			stu.setStuPasword(newPasswordone);
			studentService.updateStudent(stu);
			map.put("msg","修改成功");
			return "student/success2";
		}
		
		
		
		
		
		
		
}
