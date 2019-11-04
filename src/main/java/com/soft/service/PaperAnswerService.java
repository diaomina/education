package com.soft.service;

import java.util.List;

import com.soft.model.PaperAnswer;
import com.soft.model.PaperAnswerExample;
import com.soft.model.PaperExample;
import com.soft.vo.PaperAnswerQuestionStudentAreaVo;

/**
*
*@author zxb
*@version 2019年10月17日下午3:31:06
*/
public interface PaperAnswerService {
	//通过条件查找所有试卷的答题信息
	public List<PaperAnswer> findAllListPaperAnswer(PaperAnswerExample example) ;
	//试卷做完之后添加答题信息，配合insertList
	public int addPaperAnswer(PaperAnswer paperAnswer);
	//根据试卷的答题表中的id进行删除
	public int delPaperAnswer(PaperAnswerExample example);
	//修改数据，未使用
	public int updatePaperAnswer(PaperAnswer paperAnswer);
	//统计条数
	public int countByExample(PaperAnswerExample example);
	//批量插入，依靠addPaperAnswer方法，实则逐条插入
	public int insertList(List<PaperAnswer> paperAnswersList);
	
	public List<PaperAnswerQuestionStudentAreaVo> getPaperAnswerQuestionStudentAreaVo2(PaperAnswerExample example);
}
