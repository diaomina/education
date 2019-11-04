package com.soft.action;

import java.awt.print.Paper;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.soft.model.PaperScoreExample.Criteria;
import com.soft.model.Question_Question;
import com.soft.service.CourseService;
import com.soft.service.PaperAnswerService;
import com.soft.service.PaperScoreService;
import com.soft.service.PaperService;
import com.soft.service.QuestionBankService;
import com.soft.service.QuestionErrorService;
import com.soft.service.StudentService;
import com.soft.vo.PaperAnswerQuestionStudentAreaVo;
import com.soft.vo.StudentScoreVo;
import com.soft.model.Course;
import com.soft.model.PaperAnswer;
import com.soft.model.PaperAnswerExample;
import com.soft.model.PaperScore;
import com.soft.model.PaperScoreExample;
import com.soft.model.Student;
import com.soft.model.StudentExample;

/**
 *
 *@author zxb
 *@version 2019年10月22日上午11:00:35
 */


@Controller
@RequestMapping("/paperScore")
public class PaperScoreAction {
	@Autowired
	private PaperScoreService paperScoreService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private PaperAnswerService paperAnswerService;
	@Autowired
	private QuestionBankService questionBankService;
	@Autowired 
	private PaperService paperService;
	@Autowired 
	private CourseService courseService;
	@RequestMapping("/toStudentScore")
	public String toPaperPage(Map<String, Object> map,HttpSession session,@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum) {


		Student student =(Student)session.getAttribute("student");
		PaperScoreExample paperScoreExample=new PaperScoreExample();
		Criteria criteria=paperScoreExample.createCriteria();
		criteria.andStuIdEqualTo(student.getId());
		Page<Object> page = PageHelper.startPage(pagenum, 12);
		
		List<PaperScore> lists=paperScoreService.selectPaperScoreByexample(paperScoreExample);
		List<StudentScoreVo> lists2=new ArrayList<StudentScoreVo>();
		for(PaperScore list:lists){
			StudentScoreVo studentScoreVo=new StudentScoreVo();
			studentScoreVo.setStuId(list.getStuId());
			studentScoreVo.setPaperId(list.getPaperId());
			studentScoreVo.setPaperScore(list.getScore());
			
			com.soft.model.Paper paper=paperService.loadById(list.getPaperId());
			studentScoreVo.setPaperName(paper.getPaperName());
			
			Student student2=studentService.getStudent(list.getStuId());
			studentScoreVo.setStuName(student2.getStuName());
			Course course=courseService.getCourse(paper.getCourseId());
			studentScoreVo.setCourseName(course.getCourseName());
			studentScoreVo.setCreateTime(list.getCreateTime());
			lists2.add(studentScoreVo);
		}
		PageInfo<PaperScore> info = new PageInfo<PaperScore>(lists, 5);
		map.put("lists", lists2);
		map.put("infos", info);
		return "paper/StudentScore";
	}
	
	@RequestMapping("/toStudentScore2")
	public String toPaperPage3(Map<String, Object> map,@RequestParam(value = "tId", defaultValue = "1") Integer tId) {

		PaperScoreExample paperScoreExample=new PaperScoreExample();
		Criteria criteria=paperScoreExample.createCriteria();
		criteria.andStuIdEqualTo(tId);
		/*List<PaperScore> lists=paperScoreService.selectPaperScoreByexample(paperScoreExample);
		map.put("lists", lists);*/
		
		
		
		List<PaperScore> lists=paperScoreService.selectPaperScoreByexample(paperScoreExample);
		List<StudentScoreVo> lists2=new ArrayList<StudentScoreVo>();
	
		for(PaperScore list:lists){
			StudentScoreVo studentScoreVo=new StudentScoreVo();
			studentScoreVo.setStuId(list.getStuId());
			studentScoreVo.setPaperId(list.getPaperId());
			studentScoreVo.setPaperScore(list.getScore());
			
			com.soft.model.Paper paper=paperService.loadById(list.getPaperId());
			studentScoreVo.setPaperName(paper.getPaperName());
			
			Student student2=studentService.getStudent(list.getStuId());
			studentScoreVo.setStuName(student2.getStuName());
			Course course=courseService.getCourse(paper.getCourseId());
			studentScoreVo.setCourseName(course.getCourseName());
			studentScoreVo.setCreateTime(list.getCreateTime());
			lists2.add(studentScoreVo);
		}
		map.put("lists", lists2);
		return "paper/StudentScoreByTeacher";
	}
	
	
	
	@RequestMapping("/toPaperScore")
	public String toPaperPage2(@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,
			Map<String, Object> map,HttpServletRequest request) {
		Page<Object> page = PageHelper.startPage(pagenum,12);
		StudentExample studentExample=new StudentExample();
		com.soft.model.StudentExample.Criteria criteria=studentExample.createCriteria();
		List<Student> lists=studentService.getStudents(studentExample);
		PageInfo<Student> info = new PageInfo<Student>(lists, 5);
		map.put("students", lists);
		map.put("infos", info);
		return "paper/chooseStudent";
	}


	


	//教师查看学生的做题情况的页面，多表查询
	@RequestMapping("/toPaperAnswer2")
	public String toPaperPage2(Integer tId,Integer paperId,Map<String, Object> map,HttpSession session) throws Exception{

		PaperAnswerExample paperAnswerExample = new PaperAnswerExample();
		com.soft.model.PaperAnswerExample.Criteria criteria = paperAnswerExample.createCriteria();
		session.setAttribute("tId", tId);
		tId=(Integer) session.getAttribute("tId");
		if (tId != null) {
			criteria.andStuIdEqualTo(tId);
		}
			
		if (paperId != null){
			criteria.andPaperIdEqualTo(paperId);
		}
		


		List<PaperAnswerQuestionStudentAreaVo> list=new ArrayList<PaperAnswerQuestionStudentAreaVo>();

		List<PaperAnswer> paperAnswers=paperAnswerService.findAllListPaperAnswer(paperAnswerExample);
		for(PaperAnswer paperAnswer:paperAnswers)
		{
			PaperAnswerQuestionStudentAreaVo paperAnswerQuestionStudentAreaVo=new PaperAnswerQuestionStudentAreaVo();
			paperAnswerQuestionStudentAreaVo.setId(paperAnswer.getId());
			paperAnswerQuestionStudentAreaVo.setStuId(paperAnswer.getStuId());
			paperAnswerQuestionStudentAreaVo.setPaperId(paperAnswer.getPaperId());
			paperAnswerQuestionStudentAreaVo.setCreateTime(paperAnswer.getCreateTime());

			Student student=studentService.getStudent(paperAnswer.getStuId());


			paperAnswerQuestionStudentAreaVo.setStuName(student.getStuName());

			Question_Question question_Question=questionBankService.selectQuestionById(paperAnswer.getQuestionId());

			paperAnswerQuestionStudentAreaVo.setQuestionContent(question_Question.getQuestionContent());
			paperAnswerQuestionStudentAreaVo.setTrueAnswer(question_Question.getAnswer());
			com.soft.model.Paper paper=paperService.loadById(paperAnswer.getPaperId());
			
			paperAnswerQuestionStudentAreaVo.setPaperName(paper.getPaperName());
			String answer = paperAnswer.getAnswer();
			
			if(answer==null || "".equals(answer)){
				answer = "未答题";
				paperAnswer.setAnswer("未答题");
			}
			if(!answer.equals(question_Question.getAnswer())){
				paperAnswerQuestionStudentAreaVo.setAnswer("<span style=\"color: red\">"+paperAnswer.getAnswer()+"</span>");
			}
			else{
				paperAnswerQuestionStudentAreaVo.setAnswer(paperAnswer.getAnswer());
			}
			if(question_Question.getQuestionTypeId()==1){
				paperAnswerQuestionStudentAreaVo.setOption("A:"+question_Question.getOptionA()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B:"+question_Question.getOptionB()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C:"+question_Question.getOptionA()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D:"+question_Question.getOptionD());
			}
			else {
				paperAnswerQuestionStudentAreaVo.setOption(" ");
			}
			list.add(paperAnswerQuestionStudentAreaVo);
		}


		/*for(PaperAnswerQuestionStudentAreaVo lists:list){
			System.out.println(lists);
		}
		return null;*/


			map.put("paperAnswerss",list);
			return "paper/paperanswer2";
	}
}
