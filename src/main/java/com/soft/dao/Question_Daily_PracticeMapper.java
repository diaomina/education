package com.soft.dao;

import com.soft.model.Question_Daily_Practice;
import com.soft.model.Question_Daily_PracticeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * 每日一练题目表Dao
 * @author lxs
 * @date2019年10月17日 下午4:10:19
 */
public interface Question_Daily_PracticeMapper {
	// 条件查询统计每日一练题目数量
    int countByExample(Question_Daily_PracticeExample example);

    // 条件删除每日一练题目
    int deleteByExample(Question_Daily_PracticeExample example);

    // 通过主键删除每日一练题目
    int deleteByPrimaryKey(Integer id);

    // 添加每日一练题目
    int insert(Question_Daily_Practice record);

    // 添加每日一练题目(参数可选)
    int insertSelective(Question_Daily_Practice record);

    // 条件查询每日一练题目
    List<Question_Daily_Practice> selectByExample(Question_Daily_PracticeExample example);

    // 通过主键查询每日一练题目
    Question_Daily_Practice selectByPrimaryKey(Integer id);

    // 条件修改每日一练题目(参数可选)
    int updateByExampleSelective(@Param("record") Question_Daily_Practice record, @Param("example") Question_Daily_PracticeExample example);

    // 条件修改每日一练题目
    int updateByExample(@Param("record") Question_Daily_Practice record, @Param("example") Question_Daily_PracticeExample example);

    // 根据主键修改每日一练题目(参数可选)
    int updateByPrimaryKeySelective(Question_Daily_Practice record);

    // 根据主键修改每日一练题目
    int updateByPrimaryKey(Question_Daily_Practice record);
}