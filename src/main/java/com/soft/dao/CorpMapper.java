package com.soft.dao;

import com.soft.model.Corp;
import com.soft.model.CorpExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CorpMapper {
    int countByExample(CorpExample example);

    int deleteByExample(CorpExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Corp record);

    int insertSelective(Corp record);

    List<Corp> selectByExample(CorpExample example);

    Corp selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Corp record, @Param("example") CorpExample example);

    int updateByExample(@Param("record") Corp record, @Param("example") CorpExample example);

    int updateByPrimaryKeySelective(Corp record);

    int updateByPrimaryKey(Corp record);
}