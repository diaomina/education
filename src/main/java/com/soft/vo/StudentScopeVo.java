package com.soft.vo;

import com.soft.model.Question_Chapter_Answer;

/**
 * 学生答题卡对象增强类
 * @author admin
 *
 */
public class StudentScopeVo {
	private Question_Chapter_Answer questionAnswer;//答题卡对象
	private String questionContext;//试题内容
	private boolean isOption;//是否有答题。
	private String optionContext;//用户选项的内容
	private boolean isTrue;//试题是否正确
	private Integer questionScope;//试题分值
	
	public Question_Chapter_Answer getQuestionAnswer() {
		return questionAnswer;
	}
	public void setQuestionAnswer(Question_Chapter_Answer questionAnswer) {
		this.questionAnswer = questionAnswer;
	}
	public String getQuestionContext() {
		return questionContext;
	}
	public void setQuestionContext(String questionContext) {
		this.questionContext = questionContext;
	}
	public boolean getIsOption() {
		return isOption;
	}
	public void setOption(boolean isOption) {
		this.isOption = isOption;
	}
	public String getOptionContext() {
		return optionContext;
	}
	public void setOptionContext(String optionContext) {
		this.optionContext = optionContext;
	}
	public boolean getIsTrue() {
		return isTrue;
	}
	public void setTrue(boolean isTrue) {
		this.isTrue = isTrue;
	}
	public Integer getQuestionScope() {
		return questionScope;
	}
	public void setQuestionScope(Integer questionScope) {
		this.questionScope = questionScope;
	}
}
