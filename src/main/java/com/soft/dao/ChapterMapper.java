package com.soft.dao;

import com.soft.model.Chapter;
import com.soft.model.ChapterExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ChapterMapper {
    int countByExample(ChapterExample example);

    int deleteByExample(ChapterExample example);

    int deleteByPrimaryKey(Integer chapterId);

    int insert(Chapter record);

    int insertSelective(Chapter record);

    List<Chapter> selectByExample(ChapterExample example);

    Chapter selectByPrimaryKey(Integer chapterId);

    int updateByExampleSelective(@Param("record") Chapter record, @Param("example") ChapterExample example);

    int updateByExample(@Param("record") Chapter record, @Param("example") ChapterExample example);

    int updateByPrimaryKeySelective(Chapter record);

    int updateByPrimaryKey(Chapter record);
}