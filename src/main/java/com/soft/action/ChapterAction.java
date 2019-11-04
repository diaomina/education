package com.soft.action;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.soft.dao.CourseMapper;
import com.soft.model.Chapter;
import com.soft.model.Course;
import com.soft.service.ChapterService;
import com.soft.service.CourseService;

@Controller
@RequestMapping("/chapter")
public class ChapterAction {
	
	@Autowired
	private ChapterService chapterService;
	
	//自动生成课程Mapper，用于查询课程表
	@Autowired
	private CourseMapper courseMapper;
	@Autowired
	private CourseService courseService;
	
	
	//将页面显示到教师端
	@RequestMapping("/chapterShowTable")
	public String chapterShowTable(Map<String, Object> map,int cuorseId){
		
		Chapter chapter=new Chapter();
		chapter.setCuorseId(cuorseId);
		List<Chapter> chaptersList=chapterService.selectChapterByIf(chapter);
		
		Course course=courseMapper.selectByPrimaryKey(cuorseId);
		map.put("listChapters", chaptersList);
		map.put("course", course);
		map.put("chapterCount", chaptersList.size());
		return "chapter/chapter-list";
	}
	
	//将页面显示到学生端
	@RequestMapping("/chapterShowStudent")
	public String chapterShowStudent(Map<String, Object> map,int cuorseId){
		
		Chapter chapter=new Chapter();
		chapter.setCuorseId(cuorseId);
		List<Chapter> chaptersList=chapterService.selectChapterByIf(chapter);
		
		Course course=courseMapper.selectByPrimaryKey(cuorseId);
		List<Course> listCourses=courseMapper.selectByExample(null);
		
		map.put("courseList",listCourses );
		map.put("listChapters", chaptersList);
		map.put("course", course);
		
		
		return "chapter/chapter_list_student";
	}
	
	
	//添加章节
	@RequestMapping(value="/addChapterAction",method=RequestMethod.POST)
	public String addChapterAction(Map<String, Object>map,Chapter chapter){
		
		//注意页面中章节启用是true;数据库中章节状态为0是，是启用
		Boolean status=chapter.getStatus();
		String modifyBy=chapter.getCreateBy();
		if(status!=null){
			chapter.setStatus(!status);
		}
		//添加章节的时间
		chapter.setCreateTime(new Date());
		chapter.setModifyTime(new Date());
		chapter.setModifyBy(modifyBy);
		
		//调用service层添加章节到数据库
		chapterService.addChapter(chapter);
		
		//将课程id添加到map中
		map.put("cuorseId", chapter.getCuorseId());
		return "chapter/addChapterSuccess";
	}
	
	
	//根据章节id修改章节状态
	@RequestMapping(value="/updateChapterAction")
	public String updateChapterAction(Map<String, Object>map,Chapter chapter){
		
		
		//添加修改人，暂时不写
		
		
		int count=0;
		if(chapter.getChapterId()!=null){
			count=chapterService.updateChapterById(chapter);
		}
		if(count!=1){
			//跳转到修改失败页面
		}
		map.put("cuorseId", chapter.getCuorseId());
		
		return "chapter/jumPage";
	}
	
	//修改章节
	@RequestMapping(value="/updateChapter",method=RequestMethod.POST)
	public String updateChapter(Map<String, Object>map,Chapter chapter){
		//System.err.println(chapter);
		
		//添加修改人，暂时不写
		boolean status=chapter.getStatus();
		chapter.setStatus(!status);
		//System.err.println(chapter.toString());
		int count=0;
		if(chapter.getChapterId()!=null){
			count=chapterService.updateChapterById(chapter);
		}
		if(count!=1){
			//跳转到修改失败页面
		}
		map.put("cuorseId", chapter.getCuorseId());
		
		return "chapter/addChapterSuccess";
	}
	
	//根据章节id删除章节
	@RequestMapping("/deleteChapterAction")
	public String deleteChapterAction(Chapter chapter){
		
		int count=chapterService.DeleteChapter(chapter);
		if(count!=1){
			//跳转到修改失败页面
		}
		return null;
	}
	
	//根据课程id和章节id查询章节
	@RequestMapping("/selectChapterByIdAction")
	public String selectChapterByIdAction(Map<String, Object> map,Chapter chapter){
		//根据课程id，章节id查询出响应章节，并返回页面
		
		List<Chapter> list=null;
		if(chapter.getChapterId()!=null&&chapter.getCuorseId()!=null){
			list=chapterService.selectChapterByIf(chapter);
		}
		Course course=courseMapper.selectByPrimaryKey(chapter.getCuorseId());
		map.put("chapter", list.get(0));
		map.put("course", course);
		return "chapter/chapter-update";
	}
	
	//添加章节时，校验章节名数据库中是否存在
	@ResponseBody
	@RequestMapping(value="/checkChapterName",method=RequestMethod.POST)
	public boolean checkChapterName(Chapter chapter){
		//查询数据库，是否有同名的章节名称
		//保证章节对象中只有章节名不为空，根据章节名查询章节。
		List<Chapter> list=chapterService.selectChapterByIf(chapter);
		//System.out.println(list);
		boolean msg=true;
		if(list.size()>0){
			//数据库中存在该章节名
			msg=false;
		}
		return msg;
	}
	
	//查询所有课程并展示
	@RequestMapping("/showCourse")
	public String showCourse(Map<String, Object>map){
		//查询所有课程
		List<Course> list=courseService.getCourses(null);
		map.put("listCourse", list);
	
		return "chapter/courseChoose";
	}
	
	
	//添加章节界面
	@RequestMapping("/chapter-add")
	public ModelAndView addChapter(String courseId,String courseName,String corpId){
		ModelAndView modelAndView=new ModelAndView();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("courseId", courseId);
		map.put("courseName", courseName);
		map.put("corpId", corpId);
		modelAndView.addObject("map",map);
		modelAndView.setViewName("chapter/chapter-add");
		return modelAndView;
	}
	
	@RequestMapping("/chapterQuestion-add")
	public ModelAndView addChapterQuestion(String chapterId){
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("chapterId",chapterId);
		modelAndView.setViewName("chapter/chapterQuestion-add");
		return modelAndView;
	}
}
