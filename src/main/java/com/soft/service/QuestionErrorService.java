package com.soft.service;

import java.util.List;

import com.soft.model.Question_Question;

/**错题库service
 * @author admin
 *
 */
public interface QuestionErrorService {
	//错题入库，通过 错误的题目的id集合，以及学生id,以及答题的类型（试卷，每日一练，章节练习）
	public void addQuestionError(List<Integer> record,int stuId,String answerType);
	//通过stuid查找出该学生所有题目
	public List<Question_Question> selectQuestionError(int id);
	//删除错题，将做对了的题目删除
	public void delQuestionError(List<Integer> record,int stuId);
	public void delQuestionErrorById(int id, int sid);
	
	

}
