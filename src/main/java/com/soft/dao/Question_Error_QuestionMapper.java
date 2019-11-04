package com.soft.dao;

import com.soft.model.Question_Error_Question;
import com.soft.model.Question_Error_QuestionExample;
import com.soft.model.Question_Question;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Question_Error_QuestionMapper {
    int countByExample(Question_Error_QuestionExample example);

    int deleteByExample(Question_Error_QuestionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Question_Error_Question record);

    int insertSelective(Question_Error_Question record);

    List<Question_Error_Question> selectByExample(Question_Error_QuestionExample example);

    Question_Error_Question selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Question_Error_Question record, @Param("example") Question_Error_QuestionExample example);

    int updateByExample(@Param("record") Question_Error_Question record, @Param("example") Question_Error_QuestionExample example);

    int updateByPrimaryKeySelective(Question_Error_Question record);

    int updateByPrimaryKey(Question_Error_Question record);

	List<Question_Question> selectErrorQuestionByStu(int stuId);

	
}