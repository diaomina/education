package com.soft.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soft.dao.ChapterMapper;
import com.soft.dao.CourseMapper;
import com.soft.dao.Question_Chapter_AnswerMapper;
import com.soft.model.Chapter;
import com.soft.model.Chapter_Score;
import com.soft.model.Course;
import com.soft.model.Question_Chapter_Answer;
import com.soft.model.Question_Chapter_AnswerExample;
import com.soft.model.Question_Question;
import com.soft.model.Question_Chapter_AnswerExample.Criteria;
import com.soft.model.Student;
import com.soft.service.ChapterScopeService;
import com.soft.service.ChapterService;
import com.soft.service.QuestionBankService;
import com.soft.service.StudentService;
import com.soft.vo.StudentScopeVo;
//学生章节练习成绩
@Controller
@RequestMapping("/chapterScope")
public class ChapterScope {
	@Autowired
	private ChapterScopeService chapterScopeService;
	@Autowired
	private ChapterMapper chapterMapper;
	@Autowired
	private CourseMapper courseMapper;
	@Autowired
	Question_Chapter_AnswerMapper questionAnswerMapper;
	@Autowired
	private StudentService studentService;
	@Autowired
	private QuestionBankService questionBank;
	
	//查询章节练习的成绩
	@RequestMapping("/findChapterScope")
	public String getStudentChapterScope(HttpServletRequest request, HttpSession session,Map<String, Object> map){
		//1.从session中获取学生学号
		Student student=(Student)session.getAttribute("student");
		List<Chapter_Score> listScope=new ArrayList<Chapter_Score>();
		List<Chapter> listChapter=new ArrayList<Chapter>();
		List<Course> listCourse=new ArrayList<Course>();
		if(student==null){
			//让用户登录
			System.err.println("请登录");
			return null;
		}else{
			Integer stuId=student.getId();
			String stuName=student.getStuName();
			//根据学号在章节成绩表中查询该学号的所有成绩
			Chapter_Score chapterScore=new Chapter_Score();
			chapterScore.setStuId(stuId);
			listScope=chapterScopeService.findChapterScope(chapterScore);
			map.put("listScope", listScope);
			map.put("stuName", stuName);
			map.put("stuId", stuId);
			if(listScope!=null&&listScope.size()>0){
				//获取课程名称
				for(Chapter_Score chapterScore1:listScope){
					//获取章节id
					Integer chapterId=chapterScore1.getChapterId();
					//通过章节id获取课程id
					Chapter chapter=chapterMapper.selectByPrimaryKey(chapterId);
					listChapter.add(chapter);
					//通过课程id获取课程对象
					Course course=courseMapper.selectByPrimaryKey(chapter.getCuorseId());
					listCourse.add(course);
				}
				map.put("listCourse", listCourse);
				map.put("listChapter", listChapter);
			}
		}
		return "chapter/studentChapterScope";
	}
	
	@RequestMapping("/studentScopeShow")
	public String studentScopeShow(Map<String, Object>map,String chapterId,String studentId){
		//通过学号查询学生姓名
		Student student=studentService.getStudent(Integer.valueOf(studentId));
		if(student!=null){
			map.put("stuName", student.getStuName());
			map.put("stuId", student.getId());
		}
		//通过学号和章节id查询学生成绩
		Chapter_Score chapterScore=new Chapter_Score();
		chapterScore.setChapterId(Integer.valueOf(chapterId));
		chapterScore.setStuId(Integer.valueOf(studentId));
		List<Chapter_Score> lists=chapterScopeService.findChapterScope(chapterScore);
	    map.put("studentScope", lists.get(0).getScore());
	    String[] goodNames={
	    	"尚未佩要剑，转眼便江湖，愿千帆历尽，归来依旧少年。","秋分不燥，岁月静好，时光不老，你我都好",
	    	"梦想，就是这样一个词，不在于拥有，而在于追求。","心有猛虎，细嗅蔷薇。",
	    	"千万别迷恋网络游戏，要玩就玩人生这场大游戏。","今日少吃一块肉，明日维密我走秀。",
	    	"泪，自己尝。痛，自己扛。未来，自己去闯。","你说梦想遥不可及，你可曾为梦想早起过。",
	    	"有志者自有千计万计，无志者自感千难万难。","同是寒窗苦读，怎愿甘拜下风。",
	    	"这人很懒，什么都没有留下","你在大学偷的懒，社会一定十倍奉还给你。"
	    };
	    int index=Integer.valueOf(studentId)%goodNames.length;
	    String goodName=goodNames[index];
	    
		map.put("goodName", goodName);
		//通过章节id和学生姓名查询学生答题信息。
		Question_Chapter_AnswerExample example=new Question_Chapter_AnswerExample();
		Criteria criteria=example.createCriteria();
		criteria.andChapterIdEqualTo(Integer.valueOf(chapterId));
		criteria.andStuIdEqualTo(Integer.valueOf(studentId));
		List<Question_Chapter_Answer> list=questionAnswerMapper.selectByExample(example);
		List<StudentScopeVo> liStudentScope=new ArrayList<StudentScopeVo>();
		//遍历答题卡每一道题，根据试题id，在题库中查询每一道题
		for(Question_Chapter_Answer chapterAnswer:list){
			StudentScopeVo studentScope=new StudentScopeVo();
			studentScope.setQuestionAnswer(chapterAnswer);
			Question_Question question=null;
			//封装试题内容
			try {
				question=questionBank.selectQuestionById(chapterAnswer.getQuestionId());
				//判断该题是否有选
				String studentAnswer=chapterAnswer.getAnswer();
				studentScope.setQuestionContext(question.getQuestionContent());
				double scope=question.getScore();
				studentScope.setQuestionScope((int)scope);
				if(studentAnswer==null){
					//用户对该题没有选
					studentScope.setOption(false);
					studentScope.setOptionContext(null);
					studentScope.setTrue(false);
					
				}else{
					studentScope.setOption(true);
					//获取用户所选内容
					switch (studentAnswer.toUpperCase()) {
					case "A":
						studentScope.setOptionContext("A."+question.getOptionA());
						break;
					case "B":
						studentScope.setOptionContext("B."+question.getOptionB());
						break;
					case "C":
						studentScope.setOptionContext("C."+question.getOptionC());
						break;
					case "D":
						studentScope.setOptionContext("D."+question.getOptionD());
						break;
					default:
						break;
					}
					String questionAnswer=question.getAnswer();
					//校验试题答案
					if(studentAnswer.equalsIgnoreCase(questionAnswer)){
						//答题正确
						studentScope.setTrue(true);
					}else{
						studentScope.setTrue(false);
					}
				}
				liStudentScope.add(studentScope);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		map.put("listScope", liStudentScope);
		return "chapter/studentScopeDetails";
	}
	
	
	
}
