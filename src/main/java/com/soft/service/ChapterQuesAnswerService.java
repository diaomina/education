package com.soft.service;

import java.util.List;

import com.soft.model.Question_Chapter_Answer;

//章节试题答案表操作
public interface ChapterQuesAnswerService {
	
	/**
	 * 根据章节试题答案对象添加试题
	 * @param questionAnswer
	 * @return
	 */
	public int addChapterQuestion(Question_Chapter_Answer questionAnswer);
	/**
	 * 根据章节试题对象更新试题
	 * @param questionAnswer
	 * @return
	 */
	public int updateChapterQuestion(Question_Chapter_Answer questionAnswer);
	
	/**
	 * 根据章节试题答案对象中章节id，试题id，学生id三者进行复合查询
	 * 可以单条件查询，也可以多个条件同时查询
	 * @param questionAnswer
	 * @return
	 */
	public List<Question_Chapter_Answer> findChapterQuestion(Question_Chapter_Answer questionAnswer);
	
	/**
	 * 根据主键id进行删除
	 * @param Id
	 * @return
	 */
	public int delChapterQuestion(Integer Id);
}
