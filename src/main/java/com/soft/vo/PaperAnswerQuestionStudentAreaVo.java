package com.soft.vo;

import java.util.Date;

/**
*
*@author zxb
*@version 2019年10月19日上午10:59:03
*/
public class PaperAnswerQuestionStudentAreaVo {
	private Integer id;
	private Integer stuId;
	private String stuName;//通过学生id查学生表
	private Integer paperId;
	private String paperName;
	private String questionContent;//通过题目id，查询，同时存储选项
	private String option;
	private String answer;//学生答案
	private String trueAnswer;//标准答案.通过题目id查询
	private Date createTime;//答题时间
	private double score;
	
	public String getPaperName() {
		return paperName;
	}
	public void setPaperName(String paperName) {
		this.paperName = paperName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getStuId() {
		return stuId;
	}
	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public Integer getPaperId() {
		return paperId;
	}
	public void setPaperId(Integer paperId) {
		this.paperId = paperId;
	}
	public String getQuestionContent() {
		return questionContent;
	}
	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getTrueAnswer() {
		return trueAnswer;
	}
	public void setTrueAnswer(String trueAnswer) {
		this.trueAnswer = trueAnswer;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "PaperAnswerQuestionStudentAreaVo [id=" + id + ", stuId=" + stuId + ", stuName=" + stuName + ", paperId="
				+ paperId + ", paperName=" + paperName + ", questionContent=" + questionContent + ", option=" + option
				+ ", answer=" + answer + ", trueAnswer=" + trueAnswer + ", createTime=" + createTime + ", score="
				+ score + "]";
	}
	
	
	
	
	
}
