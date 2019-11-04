package com.soft.vo;

import java.util.List;

import com.soft.model.Question_Question;

/**
 * 
* @ClassName: ShowPaper
* @Description: 用户考试界面基本信息的显示
* @author ljy
* @date 2009年1月1日 上午3:16:49
*
 */
public class ShowPaper {
	
	
	private String paperName; 	//试卷名称
	
	private List<Question_Question> questionType1List = null;	//选择题
	
	private List<Question_Question> questionType2List = null;	//判断题
	
	private List<Question_Question> questionType3List = null;	//填空题
			
	private String paperTime;	//考试时间
	
	private Double scoreAll; //总分
	
	
	

	public String getPaperName() {
		return paperName;
	}




	public void setPaperName(String paperName) {
		this.paperName = paperName;
	}




	public String getPaperTime() {
		return paperTime;
	}




	public void setPaperTime(String paperTime) {
		this.paperTime = paperTime;
	}




	public Double getScoreAll() {
		return scoreAll;
	}




	public void setScoreAll(Double scoreAll) {
		this.scoreAll = scoreAll;
	}



	public List<Question_Question> getQuestionType1List() {
		return questionType1List;
	}




	public void setQuestionType1List(List<Question_Question> questionType1List) {
		this.questionType1List = questionType1List;
	}




	public List<Question_Question> getQuestionType2List() {
		return questionType2List;
	}




	public void setQuestionType2List(List<Question_Question> questionType2List) {
		this.questionType2List = questionType2List;
	}




	public List<Question_Question> getQuestionType3List() {
		return questionType3List;
	}




	public void setQuestionType3List(List<Question_Question> questionType3List) {
		this.questionType3List = questionType3List;
	}




	@Override
	public String toString() {
		return "ShowPaper [paperName=" + paperName + ", questionType1List=" + questionType1List + ", questionType2List="
				+ questionType2List + ", questionType3List=" + questionType3List + ", paperTime=" + paperTime
				+ ", scoreAll=" + scoreAll + "]";
	}

	
}
