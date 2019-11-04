package com.soft.dao;

import com.soft.model.Chapter_Score;
import com.soft.model.Chapter_ScoreExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Chapter_ScoreMapper {
    int countByExample(Chapter_ScoreExample example);

    int deleteByExample(Chapter_ScoreExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Chapter_Score record);

    int insertSelective(Chapter_Score record);

    List<Chapter_Score> selectByExample(Chapter_ScoreExample example);

    Chapter_Score selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Chapter_Score record, @Param("example") Chapter_ScoreExample example);

    int updateByExample(@Param("record") Chapter_Score record, @Param("example") Chapter_ScoreExample example);

    int updateByPrimaryKeySelective(Chapter_Score record);

    int updateByPrimaryKey(Chapter_Score record);
}