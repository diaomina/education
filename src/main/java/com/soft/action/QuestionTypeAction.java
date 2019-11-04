package com.soft.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.soft.model.Question_Question_Type;
import com.soft.service.QuestionTypeService;

/**题目类型的action
 * @author admin
 *
 */
@Controller
@RequestMapping("/question_type")
public class QuestionTypeAction {
	@Autowired
	QuestionTypeService qtService;
	
	
	/**显示所有的题目类型
	 * @param map
	 * @return
	 */
	@RequestMapping("/showQuestionTypes")
	public String showQuestionTypes(Map<String, Object> map){ 
		List<Question_Question_Type> list=qtService.showAllTypes();
		map.put("types", list);
		System.out.println("1");
		return "question_type/typelist";
	}
	
	@RequestMapping("/addQuestionTypeUI")
	public String addQuestionTypeUI(){
		return "question_type/typeadd";
	}
	
	
	
	/**添加题目类型
	 * @param type
	 * @param map
	 * @return
	 */
	@RequestMapping("/addQuestionType")
	public String  addQuestionType(@RequestParam("typename")String type,Map<String , Object> map) {
		//根据登录状态查找出教师的机构号，添加到题型中
		Question_Question_Type record1=new Question_Question_Type();	
		record1.setQuestionType(type);
		//System.out.println(type);
		//判断是否存在该题型
		int record2=qtService.findType(type);
		if(record2==0){
			//不存在，添加
			try {
				qtService.addTypes(record1);
			} catch (Exception e) {
				map.put("msg", e.getMessage());
			}
			map.put("msg", "添加成功");
		}
		
		else{
			//存在，返回
			map.put("msg", "已存在");
			
		}
		return "question_type/info";
	}
	
	
	
	
	
	@RequestMapping("/updateQuestionTypeUI")
	public String updateQuestionTypeUI(@RequestParam("id")String id,@RequestParam("questionType")String questionType,Map<String, Object> map){
		map.put("id",id);
		map.put("questionType",questionType);
		return "question_type/typeupdate";
	}
	
	/**修改题目类型
	 * @param id
	 * @param questionType
	 * @param map
	 * @return
	 */
	@RequestMapping("/updateQuestionType")
	public String updateQuestionType(@RequestParam("id")String id,@RequestParam("questionType")String questionType,Map<String, Object> map){
		Question_Question_Type type=new Question_Question_Type();
		int i=Integer.parseInt(id);
		System.out.println(i);
		type.setId(i);
		type.setQuestionType(questionType);
		qtService.updateType(type);
		map.put("msg","修改成功");
		return "question_type/info";
	}
	
	@RequestMapping("delQuestionType")
	public String delQuestionType(@RequestParam("id")String id){
		int i=Integer.parseInt(id);
		qtService.delType(i);
		return "forward:/question_type/showQuestionTypes";
	}
	
	
	

}
