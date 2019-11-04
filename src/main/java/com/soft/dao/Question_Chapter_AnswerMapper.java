package com.soft.dao;

import com.soft.model.Question_Chapter_Answer;
import com.soft.model.Question_Chapter_AnswerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Question_Chapter_AnswerMapper {
    int countByExample(Question_Chapter_AnswerExample example);

    int deleteByExample(Question_Chapter_AnswerExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Question_Chapter_Answer record);

    int insertSelective(Question_Chapter_Answer record);

    List<Question_Chapter_Answer> selectByExample(Question_Chapter_AnswerExample example);

    Question_Chapter_Answer selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Question_Chapter_Answer record, @Param("example") Question_Chapter_AnswerExample example);

    int updateByExample(@Param("record") Question_Chapter_Answer record, @Param("example") Question_Chapter_AnswerExample example);

    int updateByPrimaryKeySelective(Question_Chapter_Answer record);

    int updateByPrimaryKey(Question_Chapter_Answer record);
}