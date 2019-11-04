package com.soft.dao;

import com.soft.model.Question_Daily_Answer;
import com.soft.model.Question_Daily_AnswerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * 每日一练答题表Dao
 * @author lxs
 * @date2019年10月17日 下午3:51:18
 */
public interface Question_Daily_AnswerMapper {
	// 条件查询统计答题记录数目
    int countByExample(Question_Daily_AnswerExample example);

    // 条件删除答题记录
    int deleteByExample(Question_Daily_AnswerExample example);

    // 通过主键删除答题记录
    int deleteByPrimaryKey(Integer id);

    // 添加答题记录
    int insert(Question_Daily_Answer record);

    // 添加答题记录(参数可调)
    int insertSelective(Question_Daily_Answer record);

    // 条件查询答题记录
    List<Question_Daily_Answer> selectByExample(Question_Daily_AnswerExample example);

    // 通过主键查询答题记录
    Question_Daily_Answer selectByPrimaryKey(Integer id);

    // 修改答题记录(参数可调)
    int updateByExampleSelective(@Param("record") Question_Daily_Answer record, @Param("example") Question_Daily_AnswerExample example);

    // 修改答题记录
    int updateByExample(@Param("record") Question_Daily_Answer record, @Param("example") Question_Daily_AnswerExample example);

    // 通过主键修改答题记录(参数可调)
    int updateByPrimaryKeySelective(Question_Daily_Answer record);

    // 通过主键修改答题记录
    int updateByPrimaryKey(Question_Daily_Answer record);
}