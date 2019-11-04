package com.soft.action;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mysql.fabric.xmlrpc.base.Data;
import com.soft.model.Chapter;
import com.soft.model.Course;
import com.soft.model.CourseExample;
import com.soft.model.CourseExample.Criteria;
import com.soft.model.Question_Question;
import com.soft.model.Question_Question_Type;
import com.soft.model.Teacher;
import com.soft.service.ChapterService;
import com.soft.service.CourseService;
import com.soft.service.QuestionBankService;
import com.soft.service.QuestionTypeService;

/**题库管理
 * @author admin
 *
 */
@Controller
@RequestMapping("/QuestionBank")
public class QuestionBankAction {

	@Autowired
	QuestionBankService qbService;
	
	@Autowired
	CourseService courseService;
	
	@Autowired
	ChapterService chapterService;
	
	@Autowired
	QuestionTypeService questionTypeService;
	
	/**显示所有题目
	 * @param map
	 * @return
	 */
	@RequestMapping("/showAllQuestion")
	public String showAllQuestion(@RequestParam(value = "pagenum", defaultValue = "1") Integer pagenum,Map<String, Object> map,HttpSession session,@RequestParam(value="chapterId", defaultValue = "0")Integer chapter){
		Teacher teacher=(Teacher) session.getAttribute("teacher");
		/*Teacher teacher=new Teacher();
		teacher.setCorpId(1);*/
		
		System.out.println("*************************"+chapter);
		Page<Object> page = PageHelper.startPage(pagenum, 10);
		int corpid=teacher.getCorpId();//获取到登录者的机构id
		System.out.println(corpid);
		//List<Question_Question> list=qbService.showAllQuestion(id);
		if(chapter==0){
		List<Map<String, Object>> list=qbService.showAllQuestionAndChapter(corpid);
		System.out.println(list);
		PageInfo<Map<String, Object>> info = new PageInfo<Map<String, Object>>(list, 4);
		map.put("questions", list);
		map.put("infos", info);
		map.put("chapterId", chapter);
		}
		else{
			List<Map<String, Object>> list=qbService.showAllQuestionAndChapter2(corpid,chapter);
			PageInfo<Map<String, Object>> info = new PageInfo<Map<String, Object>>(list, 4);
			map.put("questions", list);
			map.put("infos", info);
			map.put("chapterId", chapter);
		}
		CourseExample courseExample=new CourseExample();
		Criteria criteria=courseExample.createCriteria();
		criteria.andCorpIdEqualTo(corpid);
		List<Course> courses=courseService.getCourses(courseExample);
		
		map.put("couses", courses);
		return "question_question/questionlist";
	}
	
	
	@RequestMapping("/addQuestionUI")
	public String addQuestionUI(HttpSession session,Map<String, Object> map){
		Teacher teacher=(Teacher) session.getAttribute("teacher");
		//取到登录者的机构id，通过id去查找改机构的课程
		
		/*Teacher teacher=new Teacher();
		teacher.setCorpId(1);*/
		int corpId=teacher.getCorpId();
		//
		CourseExample courseExample=new CourseExample();
		 Criteria criteria=courseExample.createCriteria();
		 criteria.andCorpIdEqualTo(corpId);
		List<Course> courses=courseService.getCourses(courseExample);
		List<Question_Question_Type> questionType=questionTypeService.showAllTypes();
		
		map.put("couses", courses);
		map.put("questionType",questionType );
		return "question_question/questionadd";
	}
	@RequestMapping("/selectChapter")
	@ResponseBody
	public List<Chapter>  selectChapter(@RequestParam("id")int id,Map<String , Object> map) {
		Chapter chapter=new  Chapter();
		chapter.setCuorseId(id);
		List<Chapter> list=chapterService.selectChapterByIf(chapter);
		map.put("list",list);
		return list;
	}
	/**添加题目
	 * @return
	 */
	@RequestMapping("/addQuestion")
	public String  addQuestion(Question_Question question,@RequestParam("file") MultipartFile file,HttpServletRequest request){
		System.out.println(question);
		Teacher teacher=(Teacher) request.getSession().getAttribute("teacher");
		question.setCorpId(teacher.getCorpId());//设置添加者所在的机构id
		question.setCreateBy("zl");
		question.setCreateTime(new Date());
		//System.out.println(couserId);
		String path =request.getSession().getServletContext().getRealPath("upload"); 
		question.setPictureUrl(path);
	    String fileName = file.getOriginalFilename(); 
	    System.out.println(path);
	    File targetFile = new File(path, fileName);  
        if(!targetFile.exists()){  
            targetFile.mkdirs();  
        }
  
        //保存  
        try {  
            file.transferTo(targetFile);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        
	    
        qbService.addQuestion(question);
		
		return "forward:/QuestionBank/showAllQuestion";
	}
	
	
	
	
	
	
	@RequestMapping("/delQuestion")
	public String delQuestion(int id){
		
		qbService.delQuestion(id);		
		//
		return "forward:/QuestionBank/showAllQuestion";
	}
	
	@RequestMapping("/updateQuestionUI")
	public String updateQuestionUI(int id,Map<String, Object>map) throws Exception{
		
		Question_Question record=qbService.selectQuestionById(id);		
		//
		map.put("question", record);
		return "question_question/questionupdate";
	}
	
	@RequestMapping("/updateQuestion")
	public String updateQuestion(@RequestParam("id")String id,Question_Question question,Map<String, Object>map) throws Exception{
		Integer id1=Integer.parseInt(id);
		System.out.println(id);
		question.setId(id1);
		int  record=qbService. updateQuestion(question);		
		//
		map.put("question", record);
		return "forward:/QuestionBank/showAllQuestion";
	}
	
	@RequestMapping("selectByCondition")
	public String selectByCondition(@RequestParam("courseId")String courseId,@RequestParam("chapterId")String chapterId){
	//得到传过来的课程id，和章节id进行判断
		if(courseId==null||courseId.trim()==""){
			return "forward:/QuestionBank/showAllQuestion";
		}
		
		if(chapterId==null||chapterId.trim()==""){
			
		                                                          
		}
		
		
	
		return "";
	}
	
	
	
	
	
	
}
