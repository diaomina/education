package com.soft.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.soft.model.Question_Question;
import com.soft.model.Student;
import com.soft.service.QuestionErrorService;

@Controller
@RequestMapping("/StudentQuestionError")
public class StudentQuestionErrorAction {
	@Autowired
	QuestionErrorService errorService;
	
	
	
	/**显示错题
	 * @return
	 */
	@RequestMapping("/showQuestionErrorUI")
	public String showQuestionErrorUI(@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,HttpServletRequest request,Map<String , Object> map){
		//获取到学生id
		//分页
		Page<Object> page = PageHelper.startPage(pagenum, 10);
		Student stu=(Student) request.getSession().getAttribute("student");
		int id=stu.getId();
		List<Question_Question> list=errorService.selectQuestionError(id);
		PageInfo<Question_Question> info = new PageInfo<Question_Question>(list, 4);
		System.out.println(list);
		map.put("errors", list);
		map.put("infos", info);
		return "question_error/errorlist1";
	}
	
	@RequestMapping("/showQuestionError")
	public String showQuestionError(HttpServletRequest request,HttpServletResponse response){
		Student stu=(Student) request.getSession().getAttribute("student");
		int sid=stu.getId();
		List<Question_Question> list=errorService.selectQuestionError(sid);
		for(int i=0;i<list.size();i++){
			Question_Question record=new Question_Question();
		 	record=list.get(i);
			String answer1=record.getAnswer();
			String answer2=request.getParameter(""+record.getId());
			System.out.println(answer1);
			System.out.println(answer2);
			int id=record.getId();
			if(answer1.equals(answer2)){
				errorService.delQuestionErrorById(id,sid);
			}
		
	}
		return "forward:/StudentQuestionError/showQuestionErrorUI";
	}
	

}
