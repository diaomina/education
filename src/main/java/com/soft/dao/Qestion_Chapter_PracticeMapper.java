package com.soft.dao;

import com.soft.model.Qestion_Chapter_Practice;
import com.soft.model.Qestion_Chapter_PracticeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Qestion_Chapter_PracticeMapper {
    int countByExample(Qestion_Chapter_PracticeExample example);

    int deleteByExample(Qestion_Chapter_PracticeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Qestion_Chapter_Practice record);

    int insertSelective(Qestion_Chapter_Practice record);

    List<Qestion_Chapter_Practice> selectByExample(Qestion_Chapter_PracticeExample example);

    Qestion_Chapter_Practice selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Qestion_Chapter_Practice record, @Param("example") Qestion_Chapter_PracticeExample example);

    int updateByExample(@Param("record") Qestion_Chapter_Practice record, @Param("example") Qestion_Chapter_PracticeExample example);

    int updateByPrimaryKeySelective(Qestion_Chapter_Practice record);

    int updateByPrimaryKey(Qestion_Chapter_Practice record);
}