package com.soft.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.soft.model.PaperAnswer;
import com.soft.model.PaperAnswerExample;
import com.soft.model.PaperScore;
import com.soft.model.PaperScoreExample;
import com.soft.service.PaperAnswerService;
import com.soft.service.PaperScoreService;
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

	/**
	 * 
	 * @param pagenum
	 * @param map
	 * @param request
	 * @return
	 * @throws Exception
	 */

	//考试结束返回页面，进行分数计算，答题情况，分析错题，错题入库，分数入库。
	@RequestMapping("/toPaperScore")
	public String toPaperPage3(Map<String, Object> map,HttpServletRequest request) throws Exception {
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
		String stuName=null;
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


		//分数入库，先根据条件查询
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
		//错题入库http://192.168.10.137:8080/education/paperScore/toPaperAnswer2?tId=110&&paperId=364
		questionErrorService.addQuestionError(error,stuId,"试卷");
		
		map.put("paperScore", totalScore);
		map.put("paperAnswerss", list);
		return "paper/paperScore";
	}
	
	
	/*	根据学生id和试卷id,从试卷分数表获取学生的分数。获取分数,进入考试页面已经进行判断该试卷是否有成绩来决定是否继续作答
	所以同样的试卷不可能有两次分数，上面计算的分数就可以作为唯一分数输出。*/
	/*List <PaperScore> list2=new ArrayList<PaperScore >();
	PaperScoreExample paperScoreExample2 = new PaperScoreExample();
	com.soft.model.PaperScoreExample.Criteria criteria3 = paperScoreExample2.createCriteria();
	criteria3.andStuIdEqualTo((Integer)request.getAttribute("stuId"));
	criteria3.andPaperIdEqualTo((Integer)request.getAttribute("paperId"));
	list2 =paperScoreService.selectPaperScoreByexample(paperScoreExample2);
	double paperScore3 = list2.get(0).getScore();*/
	/**
	 * 	
	 * @param pagenum
	 * @param map
	 * @param paperAnswer
	 * @return
	 */
	/*//老师查看学生试卷的做题情况
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
	}*/

	/*//老师查看学生试卷的做题情况,附带的删除功能
	@RequestMapping("/deletePaperAnswer")
	public String paperAnswer(int tId) {
		PaperAnswerExample paperAnswerExample = new PaperAnswerExample();
		Criteria criteria = paperAnswerExample.createCriteria();
		criteria.andIdEqualTo(tId);
		paperAnswerService.delPaperAnswer(paperAnswerExample);					
		return "forward:/paperAnswer/toPaperAnswer";

	}*/






	/**
	 * 
	 * @param tId
	 * @return
	 */
	//教师查看学生的做题情况的页面，多表查询，
	@RequestMapping("/deletePaperAnswer2")
	public String paperAnswer2(int tId) {
		PaperAnswerExample paperAnswerExample = new PaperAnswerExample();
		Criteria criteria = paperAnswerExample.createCriteria();
		criteria.andIdEqualTo(tId);
		paperAnswerService.delPaperAnswer(paperAnswerExample);					
		return "forward:/paperAnswer/toPaperAnswer2";

	}	
}
