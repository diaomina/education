package com.soft.vo;

import com.soft.model.Question_Question;

/**
 * 每日一练id及题目
 * 
 * @author lxs
 * @date2019年11月1日 下午3:53:51
 */
public class DailyQuestionShowVO {
	private int id;
	private Question_Question question;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Question_Question getQuestion() {
		return question;
	}

	public void setQuestion(Question_Question question) {
		this.question = question;
	}

}
