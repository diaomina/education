package com.soft.dao;

import com.soft.model.Daily_Score;
import com.soft.model.Daily_ScoreExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * 每日一练分数表Dao
 * @author lxs
 * @date2019年10月17日 下午4:03:41
 */
public interface Daily_ScoreMapper {
	// 条件查询统计每日一练分数记录数量
    int countByExample(Daily_ScoreExample example);

    // 条件删除每日一练分数记录
    int deleteByExample(Daily_ScoreExample example);

    // 通过主键删除每日一练分数记录
    int deleteByPrimaryKey(Integer id);

    // 添加每日一练分数记录
    int insert(Daily_Score record);

    // 添加每日一练分数记录(参数可选)
    int insertSelective(Daily_Score record);

    // 条件查询每日一练分数记录(参数可选)
    List<Daily_Score> selectByExample(Daily_ScoreExample example);

    // 通过主键插叙每日一练分数记录
    Daily_Score selectByPrimaryKey(Integer id);

    // 条件修改每日一练分数记录(参数可选)
    int updateByExampleSelective(@Param("record") Daily_Score record, @Param("example") Daily_ScoreExample example);

    // 条件修改每日一练分数记录
    int updateByExample(@Param("record") Daily_Score record, @Param("example") Daily_ScoreExample example);

    // 通过主键修改每日一练分数记录(参数可选)
    int updateByPrimaryKeySelective(Daily_Score record);

    // 通过主键修改每日一练分数记录
    int updateByPrimaryKey(Daily_Score record);
}