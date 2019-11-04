package com.soft.vo;

import java.util.List;

import com.soft.model.StudentQuestion;

//学生章节练习试卷类
public class StudentChapterTest {
	private String studentId;//学生id
	private Integer totalScope;//试卷总分
	private List<StudentQuestion> questionList;//学生试题列表
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public Integer getTotalScope() {
		return totalScope;
	}
	public void setTotalScope(Integer totalScope) {
		this.totalScope = totalScope;
	}
	public List<StudentQuestion> getQuestionList() {
		return questionList;
	}
	public void setQuestionList(List<StudentQuestion> questionList) {
		this.questionList = questionList;
	}
	@Override
	public String toString() {
		return "StudentChapterTest [studentId=" + studentId + ", totalScope=" + totalScope + ", questionList="
				+ questionList + "]";
	}
}
