package com.soft.dao;

import com.soft.model.Question_Question;
import com.soft.model.Question_QuestionExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface Question_QuestionMapper {
    int countByExample(Question_QuestionExample example);

    int deleteByExample(Question_QuestionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Question_Question record);

    int insertSelective(Question_Question record);

    List<Question_Question> selectByExample(Question_QuestionExample example);

    Question_Question selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Question_Question record, @Param("example") Question_QuestionExample example);

    int updateByExample(@Param("record") Question_Question record, @Param("example") Question_QuestionExample example);

    int updateByPrimaryKeySelective(Question_Question record);

    int updateByPrimaryKey(Question_Question record);

	List<Question_Question> selectQuestionByList(@Param("list")List<Integer> list);
	List<Map<String, Object>> showAllQuestionAndChapter(@Param("corpId")int corpId);

	List<Map<String, Object>> showAllQuestionAndChapter2(@Param("corpId")int corpId,@Param("chapterId") Integer chapter);
	
}