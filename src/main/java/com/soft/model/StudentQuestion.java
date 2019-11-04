package com.soft.model;


/**
 * 学生试题类
 * 对学生的每一道试题进行封装
 * @author admin
 *
 */
public class StudentQuestion {
	private Integer chapterId;//章节id
	private Integer questionId;//章节试题id
	private String questionName;//试题名
	private String studentAnwser;//学生答案
	private Integer questionScope;//试题分值
	public Integer getChapterId() {
		return chapterId;
	}
	public void setChapterId(Integer chapterId) {
		this.chapterId = chapterId;
	}
	public Integer getQuestionId() {
		return questionId;
	}
	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}
	public String getQuestionName() {
		return questionName;
	}
	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}
	public String getStudentAnwser() {
		return studentAnwser;
	}
	public void setStudentAnwser(String studentAnwser) {
		this.studentAnwser = studentAnwser;
	}
	public Integer getQuestionScope() {
		return questionScope;
	}
	public void setQuestionScope(Integer questionScope) {
		this.questionScope = questionScope;
	}
	@Override
	public String toString() {
		return "StudentQuestion [chapterId=" + chapterId + ", questionId=" + questionId + ", questionName="
				+ questionName + ", studentAnwser=" + studentAnwser + ", questionScope=" + questionScope + "]";
	}
}
