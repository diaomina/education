package com.soft.dao;

import com.soft.model.Question_Question_Type;
import com.soft.model.Question_Question_TypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Question_Question_TypeMapper {
    int countByExample(Question_Question_TypeExample example);

    int deleteByExample(Question_Question_TypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Question_Question_Type record);

    int insertSelective(Question_Question_Type record);

    List<Question_Question_Type> selectByExample(Question_Question_TypeExample example);

    Question_Question_Type selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Question_Question_Type record, @Param("example") Question_Question_TypeExample example);

    int updateByExample(@Param("record") Question_Question_Type record, @Param("example") Question_Question_TypeExample example);

    int updateByPrimaryKeySelective(Question_Question_Type record);

    int updateByPrimaryKey(Question_Question_Type record);
}