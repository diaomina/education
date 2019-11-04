package com.soft.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.soft.model.PaperAnswer;
import com.soft.model.PaperAnswerExample;
import com.soft.model.PaperAnswerExample.Criteria;
import com.soft.service.PaperAnswerService;
import com.soft.vo.PaperAnswerQuestionStudentAreaVo;



/**
*
*@author zxb
*@version 2019年10月17日下午4:02:35
*/
public class PaperAnswerServiceTest {
	private static ApplicationContext context = null;
	private PaperAnswerService PaperAnswerService = null;
	
	
	@Before
	public void init() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		PaperAnswerService = (PaperAnswerService) context.getBean("PaperAnswerService");
	}

	
	/* private Integer id;

	    private Integer stuId;

	    private Integer paperId;

	    private Integer questionId;

	    private String answer;

	    private String createBy;

	    private Date createTime;*/
	
	/*@Test//添加试题
	public void TestAddPaperAnswer() {
		PaperAnswer PaperAnswer=new PaperAnswer();
		for(int i=102;i<121;i++){
		PaperAnswer.setId(101);
		PaperAnswer.setStuId(1001);
		PaperAnswer.setPaperId(10001);
		PaperAnswer.setQuestionId(100001);
		PaperAnswer.setAnswer("答案");
		PaperAnswer.setCreateBy("王老师");
		PaperAnswer.setCreateTime(new Date());	
		int count=PaperAnswerService.addPaperAnswer(PaperAnswer);
		System.out.println(count);
		}
		
		
	}
	*/
	
	
	
	
	
	
	
	@Test//多条件测试
	public void TestfindAllListPaperAnswer() {
		
		PaperAnswerExample PaperAnswerExample = new PaperAnswerExample();
		Criteria criteria = PaperAnswerExample.createCriteria();
		criteria.andIdBetween(100, 110);
		criteria.andPaperIdEqualTo(10001);
		
		List<PaperAnswer> PaperAnswers = PaperAnswerService.findAllListPaperAnswer(PaperAnswerExample);
		for (PaperAnswer PaperAnswer : PaperAnswers) {
			System.out.println(PaperAnswer.getId() + "   " + PaperAnswer.getPaperId()
					+ "  " + PaperAnswer.getStuId() + " " + PaperAnswer.getAnswer()
					+ "  " + PaperAnswer.getCreateBy());
		}

	}
	
	
	/*@Test
	public void TestGetPaperAnswers() {
		PaperAnswerExample PaperAnswerExample = null;
		List<PaperAnswer> PaperAnswers = PaperAnswerService.getPaperAnswers(PaperAnswerExample);
		for (PaperAnswer PaperAnswer : PaperAnswers)
			System.out.println(PaperAnswer.gettId() + "   " + PaperAnswer.gettName()
					+ "  " + PaperAnswer.gettAge() + " " + PaperAnswer.gettEnterdate()
					+ "  " + PaperAnswer.gettSid());

	}	*/
	
	
	@Test
	public void TestUpdatePaperAnswer() {
		/*PaperAnswer PaperAnswer=PaperAnswerService.getPaperAnswer(new Long(1));
		System.out.println(PaperAnswer.toString());*/
		//
		PaperAnswer PaperAnswer=new PaperAnswer();
		PaperAnswer.setId(101);
		PaperAnswer.setStuId(10011);
		PaperAnswer.setPaperId(100011);
		PaperAnswer.setQuestionId(1000011);
		PaperAnswer.setAnswer("答案1");
		PaperAnswer.setCreateBy("王老师1");
		PaperAnswer.setCreateTime(new Date());	
		/*PaperAnswerExample PaperAnswerExample = new PaperAnswerExample();
		Criteria criteria = PaperAnswerExample.createCriteria();
		criteria.andPaperIdEqualTo(10001);*/
		int count=PaperAnswerService.updatePaperAnswer(PaperAnswer);
		System.out.println(count);
		
	}
	
	
	/*@Test
	public void TestGetStudentSchoolAreaSqlVo()
	{
		
		PaperAnswerExample PaperAnswerExample = new PaperAnswerExample();
		Criteria criteria = PaperAnswerExample.createCriteria();
		List<PaperAnswerQuestionStudentAreaVo> lists=PaperAnswerService.getPaperAnswerQuestionStudentAreaVo(PaperAnswerExample);
		for(PaperAnswerQuestionStudentAreaVo list:lists){
			System.out.println(list);
		}
		
	}*/
	
	/*@Test
	public void TestInsertList()
	{
		List <PaperAnswer> paperAnswersList=new ArrayList<PaperAnswer>();
		for(int i=133;i<140;i++){
			PaperAnswer paperAnswer=new PaperAnswer();
			paperAnswer.setStuId(i);
			paperAnswersList.add(paperAnswer);
		}
		System.out.println(paperAnswersList);
		int i = PaperAnswerService.insertList(paperAnswersList);
		System.out.println(i);
	}*/
	
	
	/*@Test
	public void TestPaperScore()
	{
		List <PaperScore> paperScores=new ArrayList<PaperScore >();
		PaperScoreExample paperScoreExample = new PaperScoreExample();
		Criteria criteria = paperScoreExample.createCriteria();
		criteria.andStuIdEqualTo(110);
		criteria.andPaperIdEqualTo(5);
		paperScores =paperScoreService.selectPaperScoreByexample(paperScoreExample);
		
		System.out.println(paperScores);
	}*/
	
}
