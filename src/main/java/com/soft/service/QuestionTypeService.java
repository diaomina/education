package com.soft.service;

import java.util.List;

import com.soft.model.Question_Question_Type;



/**
 * @author zl
 *
 */
public interface QuestionTypeService {
	//显示所有题型
	public List<Question_Question_Type> showAllTypes();
	//添加题型	
	public void addTypes(Question_Question_Type record) throws Exception;
	//查找题型
	public int findType(String type);
	//修改题型
	public void updateType(Question_Question_Type type);
	//删除题型
	public void delType(int i);
	
}
