package com.soft.dao;

import com.soft.model.PaperAnswer;
import com.soft.model.PaperAnswerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PaperAnswerMapper {
    int countByExample(PaperAnswerExample example);

    int deleteByExample(PaperAnswerExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PaperAnswer record);

    int insertSelective(PaperAnswer record);

    List<PaperAnswer> selectByExample(PaperAnswerExample example);

    PaperAnswer selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PaperAnswer record, @Param("example") PaperAnswerExample example);

    int updateByExample(@Param("record") PaperAnswer record, @Param("example") PaperAnswerExample example);

    int updateByPrimaryKeySelective(PaperAnswer record);

    int updateByPrimaryKey(PaperAnswer record);
    
    //自定义
    //批量添加
    int insertSelectiveList(List<PaperAnswer> paperAnswerList);
}