package com.soft.dao;

import com.soft.model.PaperScore;
import com.soft.model.PaperScoreExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PaperScoreMapper {
    int countByExample(PaperScoreExample example);

    int deleteByExample(PaperScoreExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PaperScore record);

    int insertSelective(PaperScore record);

    List<PaperScore> selectByExample(PaperScoreExample example);

    PaperScore selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PaperScore record, @Param("example") PaperScoreExample example);

    int updateByExample(@Param("record") PaperScore record, @Param("example") PaperScoreExample example);

    int updateByPrimaryKeySelective(PaperScore record);

    int updateByPrimaryKey(PaperScore record);
}