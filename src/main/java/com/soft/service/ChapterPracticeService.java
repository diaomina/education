package com.soft.service;

import java.util.List;

import com.soft.model.Chapter_Score;
import com.soft.model.Qestion_Chapter_Practice;
import com.soft.model.Question_Error_Question;
import com.soft.vo.StudentChapterTest;



//章节练习service
public interface ChapterPracticeService {
	
	//根据章节id查询章节练习
	public List<Qestion_Chapter_Practice> selectChapterPracticeById(Integer chapterId);
	
	//根据章节练习对象插入章节练习表
	public int insertChapterPracticeByIf(Qestion_Chapter_Practice chapterPractice);
	
	//将学生章节练习对象的数据插入到学生成绩表中
	public int insertChapterScope(Chapter_Score chapter_Score);
	
	//将章节练习中的错题插入到错题表中
	public int insertErrorQuestion(Question_Error_Question question_Error_Question);
	
	//根据试题id在错题表中查询试题是否存在
	public Integer selectErrorQuestionByQuesId(Integer questionId,Integer stuId);
	
	//根据试题id，更新 错题表中试题
	public int updateErrorQuestionByQuesId(Question_Error_Question question_Error_Question);
	
}
