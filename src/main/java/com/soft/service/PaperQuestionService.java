package com.soft.service;

import java.util.List;

import com.soft.model.PaperQuestion;
import com.soft.model.PaperQuestionExample;
import com.soft.model.Question_Question;

/**
 * 
* @ClassName: PaperQuestionService
* @Description: 试卷题目的业务处理
* @author ljy
* @date 2019年10月16日 下午4:08:27
*
 */
public interface PaperQuestionService {
	
	/**
	 * 
	* @Title: findListByPaperId
	* @Description: 根据条件获取试卷题目(需要的是题目的ID)
	* @param @param 条件(试卷ID)
	* @param @return 符合条件的题目
	* @param @throws SQLException
	* @return List<Question_Paper_Puestion>
	* @throws
	 */
	public List<PaperQuestion> findListByExample(PaperQuestionExample example);
	
	/**
	 * 
	* @Title: findListByQuestionId
	* @Description: 根据题目ID查询整个试卷的题目内容
	* @param @param questionId 题库表中题目的ID
	* @param @return 题库这张试卷的所有题目
	* @return PaperQuestion
	* @throws
	 */
	public List<Question_Question> findListByQuestionId(List<PaperQuestion> list);

	
	/**
	 * 
	* @Title: getPaperQuestionByPaperId
	* @Description: 根据试卷ID获取试卷所有题目内容(整合上面两个方法)
	* @param @param paperId
	* @param @return
	* @return List<Question_Question>
	* @throws
	 */
	public List<Question_Question> getPaperQuestionByPaperId(Integer paperId);
	
	
	/**
	 * 
	* @Title: loadById
	* @Description: 根据ID查找试卷题目(一道题，用于删除业务时使用)
	* @param @param id
	* @param @return
	* @return PaperQuestion
	* @throws
	 */
	public PaperQuestion loadById(Integer id);
	
	
	/**
	 * 
	* @Title: addQuestion_Paper_Puestion
	* @Description: 添加试卷题目
	* @param @param question 试卷题目的对象
	* @param @return 返回1表示成功，0表示失败
	* @return int
	* @throws
	 */
	public int addPaperQuestion(PaperQuestion paperQuestion);
	
	/**
	 * 
	* @Title: delPaperQuestion
	* @Description: 根据条件删除题目
	* @param @param 条件
	* @param @return 返回1表示成功，0表示失败
	* @return 非0表示成功,0表示失败
	* @throws
	 */
	public int delPaperQuestionByExample(PaperQuestionExample example);
	
	
	/**
	 * 
	* @Title: updatePaperQuestion
	* @Description: 根据条件修改题目
	* @param @param paperQuestion修改后的对象, example修改的对象的前提的条件
	* @param @return 返回非0表示成功，0表示失败
	* @return PaperQuestion
	* @throws
	 */
	public int updatePaperQuestionByExample(PaperQuestion paperQuestion, PaperQuestionExample example);
	
	/**
	 * 
	* @Title: countPaperAllSource
	* @Description: 根据题目算出试卷总分
	* @param @param list
	* @param @return 返回总分
	* @return Double
	* @throws
	 */
	public Double countPaperAllScore(List<Question_Question> list);
}
