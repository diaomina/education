package com.soft.service;

import java.util.List;
import java.util.Map;

import com.soft.model.Question_Question;
import com.soft.model.Question_QuestionExample;

/**
 * @author zl
 *
 */
public interface QuestionBankService {
	//显示题库该机构的所有题目
	List<Question_Question> showAllQuestion(int corpId);
	//向题库添加题目
	int addQuestion(Question_Question question);
	//从题库中删除
	int delQuestion(int id);
	//更新题目
	int updateQuestion(Question_Question question);
	//根据章节id去查找题目
	List<Question_Question> showAllQuestionByChapterId(int id) throws Exception;
	//查一个
	Question_Question selectQuestionById(int id) throws Exception;
	
	//根据一组id批量查询
	/*List<Integer> list */
	List<Question_Question> selectQuestionByList(List<Integer> list) throws Exception;
	
	//根据条件查询
	List<Question_Question> selectQuestionByExample(Question_QuestionExample example);
	//显示题库该机构的所有题目 包括名称
	List<Map<String, Object>> showAllQuestionAndChapter(int corpId);
	List<Map<String, Object>> showAllQuestionAndChapter2(int corpId, Integer chapter);
	
}
