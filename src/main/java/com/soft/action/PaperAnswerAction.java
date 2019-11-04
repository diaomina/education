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
import com.soft.dao.PaperAnswerMapper;
import com.soft.dao.PaperScoreMapper;
import com.soft.dao.Question_QuestionMapper;
import com.soft.dao.StudentMapper;
import com.soft.model.PaperAnswer;
import com.soft.model.PaperAnswerExample;
import com.soft.model.PaperScore;
import com.soft.model.PaperScoreExample;
import com.soft.service.PaperAnswerService;
import com.soft.service.PaperScoreService;
import com.soft.service.PaperService;
import com.soft.service.QuestionBankService;
import com.soft.service.QuestionErrorService;
import com.soft.service.StudentService;
import com.soft.vo.PaperAnswerQuestionStudentAreaVo;
import com.soft.model.PaperAnswerExample.Criteria;
import com.soft.model.Question_Question;
import com.soft.model.Student;


/**
*
*@author zxb
*@version 2019年10月18日下午3:00:43
*/
@Controller
@RequestMapping("/paperAnswer")
public class PaperAnswerAction {
	@Autowired
	private PaperAnswerService paperAnswerService;
	@Autowired
	private PaperScoreService paperScoreService;
	@Autowired
	private QuestionBankService questionBankService;
	@Autowired
	private StudentService studentService;
	@Autowired 
	private QuestionErrorService questionErrorService;
	
	
	
	//考试结束返回的页面
		@RequestMapping("/toPaperScore")
		public String toPaperPage3(@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,
				Map<String, Object> map,HttpServletRequest request) throws Exception {
			
			/*int count=PaperAnswerService.countByExample(paperAnswerExample);*/
			//Page<Object> page = PageHelper.startPage(pagenum,12);
			
			PaperAnswerExample paperAnswerExample = new PaperAnswerExample();
			Criteria criteria = paperAnswerExample.createCriteria();
			criteria.andStuIdEqualTo((Integer)request.getAttribute("stuId"));
			criteria.andPaperIdEqualTo((Integer)request.getAttribute("paperId"));
			
			List<PaperAnswerQuestionStudentAreaVo> list=new ArrayList<PaperAnswerQuestionStudentAreaVo>();
			double totalScore=0;
			int corpId=0;
			int stuId=0;
			int paperId=0;
			Date creattime=null;
			String stuName="";
			List<Integer> error=new ArrayList<Integer>();
			List<PaperAnswer> paperAnswers=paperAnswerService.findAllListPaperAnswer(paperAnswerExample);
			for(PaperAnswer paperAnswer:paperAnswers)
			{
				PaperAnswerQuestionStudentAreaVo paperAnswerQuestionStudentAreaVo=new PaperAnswerQuestionStudentAreaVo();
			
				Student student=studentService.getStudent(paperAnswer.getStuId());
				paperAnswerQuestionStudentAreaVo.setStuName(student.getStuName());
				
				Question_Question question_Question=questionBankService.selectQuestionById(paperAnswer.getQuestionId());
				paperAnswerQuestionStudentAreaVo.setQuestionContent(question_Question.getQuestionContent());
				paperAnswerQuestionStudentAreaVo.setTrueAnswer(question_Question.getAnswer());
				
				
				
				String answer = paperAnswer.getAnswer();
				
				if(answer==null || "".equals(answer)){
					answer = "未答题";
					paperAnswer.setAnswer("未答题");
				}
				paperAnswerQuestionStudentAreaVo.setAnswer(answer);
				paperAnswerQuestionStudentAreaVo.setScore(question_Question.getScore());
				if(!paperAnswer.getAnswer().equals(question_Question.getAnswer())){
					paperAnswerQuestionStudentAreaVo.setScore(0);
					paperAnswerQuestionStudentAreaVo.setAnswer("<span style=\"color: red\">"+paperAnswer.getAnswer()+"</span>");
					error.add(paperAnswer.getQuestionId());
				}
				else{
					totalScore=question_Question.getScore()+totalScore;
				}
				
				//存储数据，用于分数入库。
				corpId=paperAnswer.getCorpId();
				stuId=paperAnswer.getStuId();
				paperId=paperAnswer.getPaperId();
				creattime=paperAnswer.getCreateTime();
				stuName=student.getStuName();
				if(question_Question.getQuestionTypeId()==1){
					paperAnswerQuestionStudentAreaVo.setOption("A:"+question_Question.getOptionA()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B:"+question_Question.getOptionB()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C:"+question_Question.getOptionA()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D:"+question_Question.getOptionD());
				}
				else {
					paperAnswerQuestionStudentAreaVo.setOption(" ");
				}
				
				list.add(paperAnswerQuestionStudentAreaVo);
			}
			
			
			//分数入库
			PaperScore paperScore=new PaperScore();
			paperScore.setCorpId(corpId);
			paperScore.setStuId(stuId);
			paperScore.setPaperId(paperId);
			paperScore.setCreateTime(creattime);
			paperScore.setScore(totalScore);
			paperScore.setCreateBy(stuName);
			PaperScoreExample paperScoreExample=new PaperScoreExample();
			com.soft.model.PaperScoreExample.Criteria criteria2=paperScoreExample.createCriteria();
			criteria2.andStuIdEqualTo(stuId);
			criteria2.andPaperIdEqualTo(paperId);
			List<PaperScore> lists=paperScoreService.selectPaperScoreByexample(paperScoreExample);
			
			if(lists==null||lists.size()==0){
				paperScoreService.addPaperScore(paperScore);
			}
			
			
			
			
			List <PaperScore> list2=new ArrayList<PaperScore >();
			PaperScoreExample paperScoreExample2 = new PaperScoreExample();
			com.soft.model.PaperScoreExample.Criteria criteria3 = paperScoreExample2.createCriteria();
			criteria3.andStuIdEqualTo((Integer)request.getAttribute("stuId"));
			criteria3.andPaperIdEqualTo((Integer)request.getAttribute("paperId"));
			list2 =paperScoreService.selectPaperScoreByexample(paperScoreExample2);
			
			//获取分数
			double paperScore3 = list2.get(0).getScore();
			
			//错题入库
			questionErrorService.addQuestionError(error,stuId,"试卷");
			map.put("paperScore", paperScore3);
			map.put("paperAnswerss", list);
			return "paper/paperScore";
		}
	
		
		
		
		
		
		
		
	
	//老师查看学生试卷的做题情况
	@RequestMapping("/toPaperAnswer")
	public String toPaperPage(@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,
			Map<String, Object> map,PaperAnswer paperAnswer) {
		Page<Object> page = PageHelper.startPage(pagenum, 12);
		
		PaperAnswerExample paperAnswerExample = new PaperAnswerExample();
		Criteria criteria = paperAnswerExample.createCriteria();
		if (paperAnswer.getStuId() != null)
			criteria.andStuIdNotEqualTo(paperAnswer.getStuId());
		if (paperAnswer.getQuestionId() != null)
			criteria.andQuestionIdEqualTo(paperAnswer.getQuestionId());
		List<PaperAnswer> lists = paperAnswerService.findAllListPaperAnswer(paperAnswerExample);
		PageInfo<PaperAnswer> info = new PageInfo<PaperAnswer>(lists, 5);
		
		for(int i=1;i<200;i++){
			System.out.println(info.getTotal());
		}
		map.put("paperAnswerss", lists);
		map.put("infos", info);
		return "paper/paperanswer";
	}
	
	
	
	//老师查看学生试卷的做题情况,附带的删除功能
	@RequestMapping("/deletePaperAnswer")
	public String paperAnswer(int tId) {
		PaperAnswerExample paperAnswerExample = new PaperAnswerExample();
		Criteria criteria = paperAnswerExample.createCriteria();
		criteria.andIdEqualTo(tId);
		paperAnswerService.delPaperAnswer(paperAnswerExample);					
		return "forward:/paperAnswer/toPaperAnswer";

	}
	
	
	
	
	
	
	
	//教师查看学生的做题情况的页面，多表查询，附带的删除功能
	@RequestMapping("/deletePaperAnswer2")
	public String paperAnswer2(int tId) {
		PaperAnswerExample paperAnswerExample = new PaperAnswerExample();
		Criteria criteria = paperAnswerExample.createCriteria();
		criteria.andIdEqualTo(tId);
		paperAnswerService.delPaperAnswer(paperAnswerExample);					
		return "forward:/paperAnswer/toPaperAnswer2";

	}	
	
	/*//教师查看学生具体的做题情况
	@RequestMapping("/toPaperScore3")
	public String toPaperPage4(@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,Integer tId,Integer paperId,Map<String, Object> map,HttpServletRequest request) {
		
		int count=PaperAnswerService.countByExample(paperAnswerExample);
		//Page<Object> page = PageHelper.startPage(pagenum,12);
		
		PaperAnswerExample paperAnswerExample = new PaperAnswerExample();
		Criteria criteria = paperAnswerExample.createCriteria();
		int count=PaperAnswerService.countByExample(paperAnswerExample);
		if (tId != null)
			criteria.andStuIdEqualTo(tId);
		if (paperId != null)
			criteria.andPaperIdEqualTo(paperId);
		Page<Object> page = PageHelper.startPage(pagenum,6);
		
		List<PaperAnswerQuestionStudentAreaVo> lists = PaperAnswerService.getPaperAnswerQuestionStudentAreaVo(paperAnswerExample);
		
		PageInfo<PaperAnswerQuestionStudentAreaVo> info = new PageInfo<PaperAnswerQuestionStudentAreaVo>(lists, 5);
		map.put("paperAnswerss", lists);
		map.put("infos", info);
		return "paper/paperanswer2";
	}*/
	
	
	
	
	
	
	
	
	
	
	/*@RequestMapping("/toPaperScore")
	public String toPaperPage3(@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,
			Map<String, Object> map,HttpServletRequest request) throws Exception {
		
		int count=PaperAnswerService.countByExample(paperAnswerExample);
		//Page<Object> page = PageHelper.startPage(pagenum,12);
		
		PaperAnswerExample paperAnswerExample = new PaperAnswerExample();
		Criteria criteria = paperAnswerExample.createCriteria();
		criteria.andStuIdEqualTo((Integer)request.getAttribute("stuId"));
		criteria.andPaperIdEqualTo((Integer)request.getAttribute("paperId"));
		
		
		
		List<PaperAnswerQuestionStudentAreaVo> list=new ArrayList<PaperAnswerQuestionStudentAreaVo>();
		double totalScore=0;
		int corpId=0;
		int stuId=0;
		int paperId=0;
		Date creattime=null;
		String stuName="";
		List<Integer> error=new ArrayList<Integer>();
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
			String answer = paperAnswer.getAnswer();
			
			if(answer==null || "".equals(answer)){
				answer = "未答题";
				paperAnswer.setAnswer("未答题");
			}
			//corpId=paperAnswer.getCorpId();
			paperAnswerQuestionStudentAreaVo.setAnswer(answer);
			paperAnswerQuestionStudentAreaVo.setScore(question_Question.getScore());
			if(!paperAnswer.getAnswer().equals(question_Question.getAnswer())){
				paperAnswerQuestionStudentAreaVo.setScore(0);
				paperAnswerQuestionStudentAreaVo.setAnswer("<span style=\"color: red\">"+paperAnswer.getAnswer()+"</span>");
				error.add(paperAnswer.getQuestionId());
			}
			else{
				totalScore=question_Question.getScore()+totalScore;
			}
			corpId=paperAnswer.getCorpId();
			stuId=paperAnswer.getStuId();
			paperId=paperAnswer.getPaperId();
			creattime=paperAnswer.getCreateTime();
			stuName=student.getStuName();
			
			//paperscore添加
			if(question_Question.getQuestionTypeId()==1){
				paperAnswerQuestionStudentAreaVo.setOption("A:"+question_Question.getOptionA()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B:"+question_Question.getOptionB()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C:"+question_Question.getOptionA()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D:"+question_Question.getOptionD());
			}
			else {
				paperAnswerQuestionStudentAreaVo.setOption(" ");
			}
			
			list.add(paperAnswerQuestionStudentAreaVo);
		}
		
		
		//paperscore添加
		PaperScore paperScore=new PaperScore();
		paperScore.setCorpId(corpId);
		paperScore.setStuId(stuId);
		paperScore.setPaperId(paperId);
		paperScore.setCreateTime(creattime);
		paperScore.setScore(totalScore);
		paperScore.setCreateBy(stuName);
		PaperScoreExample paperScoreExample=new PaperScoreExample();
		com.soft.model.PaperScoreExample.Criteria criteria2=paperScoreExample.createCriteria();
		criteria2.andStuIdEqualTo(stuId);
		criteria2.andPaperIdEqualTo(paperId);
		List<PaperScore> lists=paperScoreService.selectPaperScoreByexample(paperScoreExample);
		if(lists==null||lists.size()==0){
			paperScoreMapper.insertSelective(paperScore);
		}
		
		
		
		questionErrorService.addQuestionError(error,stuId,"试卷");
		List <PaperScore> list2=new ArrayList<PaperScore >();
		PaperScoreExample paperScoreExample2 = new PaperScoreExample();
		com.soft.model.PaperScoreExample.Criteria criteria3 = paperScoreExample2.createCriteria();
		criteria3.andStuIdEqualTo((Integer)request.getAttribute("stuId"));
		criteria3.andPaperIdEqualTo((Integer)request.getAttribute("paperId"));
		list2 =paperScoreService.selectPaperScoreByexample(paperScoreExample2);
		double paperScore3 = list2.get(0).getScore();
		
		
		map.put("paperScore", paperScore3);
		map.put("paperAnswerss", list);
		return "paper/paperScore";
	}*/
	
	
	
	
	
	
	
	
	
	
}
