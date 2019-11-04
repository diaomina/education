package com.soft.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.soft.dao.Question_Question_TypeMapper;
import com.soft.model.Chapter;
import com.soft.model.Chapter_Score;
import com.soft.model.Qestion_Chapter_Practice;
import com.soft.model.Question_Chapter_Answer;
import com.soft.model.Question_Error_Question;
import com.soft.model.Question_Question;
import com.soft.model.Question_Question_Type;
import com.soft.model.Student;
import com.soft.model.StudentQuestion;
import com.soft.service.ChapterPracticeService;
import com.soft.service.ChapterQuesAnswerService;
import com.soft.service.ChapterScopeService;
import com.soft.service.ChapterService;
import com.soft.service.QuestionBankService;
import com.soft.service.QuestionTypeService;
import com.soft.vo.StudentChapterTest;
import com.soft.vo.chapterPracticeVO;

//章节练习

@Controller
@RequestMapping("/chapterPractice")
public class ChapterPractice {
	
	//操作章节表
	@Autowired
	private ChapterService chapterService;
	
	//操作章节练习表
	@Autowired
	private ChapterPracticeService chapterPraService;
	//操作题库表
	@Autowired
	private QuestionBankService questionBank;
	//操作习题类别表
	@Autowired
	private Question_Question_TypeMapper questionMapper;
	//操作章节试题答案表
	@Autowired
	private ChapterQuesAnswerService chapterQuestionAnswer;
	//操作章节成绩表
	@Autowired
	private ChapterScopeService chapterScopeService;
	//根据章节id查询章节练习
	@RequestMapping("/selectChapPractice")
	public String selectChapterPractice(Map<String, Object>map,int chapterId){
		//根据章节id查询该章节下的所有章节练习试题
		List<Qestion_Chapter_Practice> list=chapterPraService.selectChapterPracticeById(chapterId);
		System.err.println(list);
		List<chapterPracticeVO> listPracticeVo=new ArrayList<chapterPracticeVO>();
		for(Qestion_Chapter_Practice chapterPractice:list){
			try {
				Question_Question question=questionBank.selectQuestionById(chapterPractice.getQuestionId());
				//习题分值
				double score=question.getScore();
				//习题类别
				Question_Question_Type questionType=questionMapper.selectByPrimaryKey(question.getQuestionTypeId());
				chapterPracticeVO chapterPracticevo=new chapterPracticeVO(chapterPractice.getId(), question.getQuestionContent(), question.getOptionA(),
												question.getOptionB(), question.getOptionC(), question.getOptionD(), question.getAnswer(), (int)score, questionType.getQuestionType());
				listPracticeVo.add(chapterPracticevo);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		map.put("chapterId", chapterId);
		map.put("chapterPractices", list);
		map.put("questions", listPracticeVo);
		
		return "chapter/chapter-practice";
	}
	
	@RequestMapping(value="addChapterPractice",method=RequestMethod.POST)
	public String addChapterPractice(chapterPracticeVO chapterPracticeVO,Qestion_Chapter_Practice chapterPractice,Integer chapterId){
		//对题库表进行插入操作  ,需要插入的字段章节id，试题内容，选项a到选项d，答案，分值，试题类别id，创建修改人和时间，版本号，试题状态
		//封装题库对象
		Question_Question question=new Question_Question();
		question.setCouserId(chapterId);
		question.setQuestionContent(chapterPracticeVO.getChapterPRacticeName());
		question.setOptionA(chapterPracticeVO.getOption_a());
		question.setOptionB(chapterPracticeVO.getOption_c());
		question.setOptionC(chapterPracticeVO.getOption_c());
		question.setOptionD(chapterPracticeVO.getOption_d());
		question.setAnswer(chapterPracticeVO.getQuestionAnwser());
		int score=chapterPracticeVO.getQuestionScore();
		question.setScore((double)score);
		question.setCreateBy(chapterPractice.getCreateBy());
		question.setCreateTime(new Date());
		question.setModifyBy(chapterPractice.getCreateBy());
		question.setModifyTime(new Date());
		question.setStatus(!chapterPractice.getStatus());
		question.setVersion(chapterPractice.getVersion());
		question.setQuestionTypeId(1);
		//根据题库对象插入到题库表中
		int row=questionBank.addQuestion(question);
		//System.err.println(question.getId());
		
		//对章节练习表进行插入操作
		//章节练习对象中有的字段：章节id，创建人，状态，版本号
		//对章节练习对象进行封装
		if(question.getId()!=null){
			chapterPractice.setQuestionId(question.getId());
		}
		chapterPractice.setChapterpId(chapterId);
		chapterPractice.setModifyBy(chapterPractice.getCreateBy());
		chapterPractice.setCreateTime(new Date());
		chapterPractice.setModifyTime(new Date());
		chapterPractice.setCorpId(10001);
		chapterPractice.setStatus(!chapterPractice.getStatus());
		//将章节练习对象进行插入到章节练习表中
		chapterPraService.insertChapterPracticeByIf(chapterPractice);
		
		return "chapter/addChapterSuccess";
	}
	
	//学生端章节练习，获取该章节所有题目进行答题
	@RequestMapping("/chapterPracticeStudent")
	public String chapterPracticeStudent(Map<String, Object> map,Integer chapterId){
		/*
		 * 第一阶段
		 * 章节练习每次练习共10题，10道选择题。每道题10分。
		 * 每次随机选取10道题,且题目状态为false(可用)。
		 * 
		 * 第二阶段
		 * 章节练习20道题，10道选择题，5道判断题，5道填空题。且选取的题目状态都是可用。
		 * 
		 */
		//根据章节id查询该章节下的所有章节练习试题
		List<Qestion_Chapter_Practice> list=chapterPraService.selectChapterPracticeById(chapterId);
		List<chapterPracticeVO> listPracticeVo=new ArrayList<chapterPracticeVO>();
		int count=0;
		for(Qestion_Chapter_Practice chapterPractice:list){
			try {
				if(count<=9){
					Question_Question question=questionBank.selectQuestionById(chapterPractice.getQuestionId());
					
					//习题分值
					double score=question.getScore();
					//习题类别
					Question_Question_Type questionType=questionMapper.selectByPrimaryKey(question.getQuestionTypeId());
					if("选择题".equals(questionType.getQuestionType())){
						
						//如果是选择题，就添加
						chapterPracticeVO chapterPracticevo=new chapterPracticeVO(chapterPractice.getQuestionId(), question.getQuestionContent(), question.getOptionA(),
								question.getOptionB(), question.getOptionC(), question.getOptionD(), question.getAnswer(), (int)score, questionType.getQuestionType());
						listPracticeVo.add(chapterPracticevo);
						count++;
					}
				}else{
					break;
				}
				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		map.put("chapterPractices", list);
		map.put("questions", listPracticeVo);
		return "chapter/chapterPracticePage";
	}
	
	
	@RequestMapping(value="/chapterPracticeTest",method=RequestMethod.POST)
	public ModelAndView chapterPracticeTest(HttpServletRequest request, HttpServletResponse response, HttpSession session){
		// 从Session学生信息中获取
		Student student = (Student) session.getAttribute("student");
		ModelAndView modelAndView=new ModelAndView();
		if(student!=null){
			//用户已经登录
			Integer stuId = student.getId();
			String stuName=student.getStuName();
			//获取章节id
			String chapterId=request.getParameter("chapterId");
			//定义一个学生试题列表
			List<StudentQuestion> studentList=new ArrayList<StudentQuestion>();
			//定义用户试卷得分
			Integer totalScope=0;
			String[] questionIds=request.getParameterValues("questionId");
			String scope=null;
			for(String id :questionIds){
				
				//定义一个学生试题对象，并将数据封装进对象
				StudentQuestion studentQuestion=new StudentQuestion();
				//根据试题id，查询用户试题选项答案ACBBD
				String studentAnwser=request.getParameter(id);
				
				//获取试题分值
				scope=request.getParameter(id+"_scope");
				//获取试题内容
				String questionName=request.getParameter(id+"_questionName");
				//对学生对象进行封装
				studentQuestion.setChapterId(Integer.valueOf(chapterId));
				studentQuestion.setQuestionId(Integer.valueOf(id));
				studentQuestion.setQuestionName(questionName);
				studentQuestion.setQuestionScope(Integer.valueOf(scope));
				studentQuestion.setStudentAnwser(studentAnwser);
				
				//计算学生试卷得分
				try {
					Question_Question question=questionBank.selectQuestionById(Integer.valueOf(id));
					String answer=question.getAnswer();
					if(answer.equalsIgnoreCase(studentAnwser)){
						//回答正确，得分
						totalScope+=Integer.valueOf(scope);
					}else{
						//回答错误,错题入库
						//System.err.println(answer==studentAnwser);
						System.err.println(answer+"==="+studentAnwser);
						studentList.add(studentQuestion);
					}
					
					//对章节练习答题表进行封装
					Question_Chapter_Answer questionAnswer=new Question_Chapter_Answer();
					questionAnswer.setChapterId(Integer.valueOf(chapterId));//章节id
					questionAnswer.setAnswer(studentAnwser);
					questionAnswer.setStuId(stuId);
					questionAnswer.setQuestionId(Integer.valueOf(id));
					questionAnswer.setCreateBy(stuName);
					questionAnswer.setCreateTime(new Date());
					questionAnswer.setModifyBy(stuName);
					questionAnswer.setModifyTime(new Date());
					questionAnswer.setCorpId(10001);
					questionAnswer.setVersion(1);
					//查询该试题是否存在
					List<Question_Chapter_Answer> list=chapterQuestionAnswer.findChapterQuestion(questionAnswer);
					if(list!=null&&list.size()>0){
						//该试题存在,更新
						questionAnswer.setId(list.get(0).getId());
						questionAnswer.setCreateTime(list.get(0).getCreateTime());
						questionAnswer.setCreateBy(list.get(0).getCreateBy());
						int row=chapterQuestionAnswer.updateChapterQuestion(questionAnswer);
					}else{
						//该试题不存在，添加记录
						int row=chapterQuestionAnswer.addChapterQuestion(questionAnswer);
					}
					
				} catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			//封装到章节测试对象中
			StudentChapterTest studentTest=new StudentChapterTest();
			studentTest.setQuestionList(studentList);
			studentTest.setStudentId(stuId.toString());
			studentTest.setTotalScope(totalScope);
			
			//封装数据到章节成绩表
			Chapter_Score chapter_Score=new Chapter_Score();
			chapter_Score.setChapterId(Integer.valueOf(chapterId));
			chapter_Score.setCreateBy(stuName);
			chapter_Score.setCreateTime(new Date());
			chapter_Score.setModifyBy(stuName);
			chapter_Score.setModifyTime(new Date());
			chapter_Score.setStuId(stuId);
			chapter_Score.setScore(Double.valueOf(totalScope));
			chapter_Score.setStatus(false);
			//根据学号章节号查询章节成绩表中是否有这条记录
			List<Chapter_Score> listScope=chapterScopeService.findChapterScope(chapter_Score);
			if(listScope!=null&&listScope.size()>0){
				//章节成绩表中存在该条记录，更新
				//给对象添加主键id
				chapter_Score.setId(listScope.get(0).getId());
				int row=chapterScopeService.updateChapterScope(chapter_Score);
			}else{
				//章节成绩表中没有该数据，章节成绩表插入一条数据
				int row=chapterPraService.insertChapterScope(chapter_Score);
			}
			//给错题表插入数据
			for(StudentQuestion studentQuestion:studentList){
				Question_Error_Question errorQuestion=new Question_Error_Question();
				errorQuestion.setAnswerType("章节练习");
				errorQuestion.setCreateBy(stuName);
				errorQuestion.setCreateTime(new Date());
				errorQuestion.setModifyBy(stuName);
				errorQuestion.setModifyTime(new Date());
				errorQuestion.setQuestionId(studentQuestion.getQuestionId());
				errorQuestion.setStatus(false);
				errorQuestion.setStuId(stuId);
				
				//先查询错题表中是否有该题
				Integer id=chapterPraService.selectErrorQuestionByQuesId(errorQuestion.getStuId(), stuId);
				if(id==null){
					//错题表中该同学没有这条错题，插入
					int row=chapterPraService.insertErrorQuestion(errorQuestion);
				}else{
					//该同学在错题表中有这道错题，进行更新
					errorQuestion.setId(id);
					chapterPraService.updateErrorQuestionByQuesId(errorQuestion);
				}
			}
			Map< String, Object> map=new HashMap<String, Object>();
			map.put("studentScope", totalScope);
			map.put("questionCount",totalScope/Integer.valueOf(scope) );
			map.put("scope", scope);
			modelAndView.addObject("map",map);
			modelAndView.setViewName("chapter/studentScope");
			/*request.setAttribute("studentScope", totalScope);
			request.setAttribute("questionCount",totalScope/Integer.valueOf(scope) );
			request.setAttribute("scope", scope);*/
			//总分
			//request.setAttribute("subTotal", arg1);
		}else{
			//用户未登录,跳转到登录页面
			System.err.println("请登录");
			return null;
			//return "forward:/login.jsp";
		}
		
		
		return modelAndView;
	}
	
	
}
