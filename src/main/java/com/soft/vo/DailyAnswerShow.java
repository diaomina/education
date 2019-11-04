package com.soft.vo;

/**
 * 显示每日一练答题结果
 * 
 * @author lxs
 * @date2019年10月30日 上午10:54:45
 */
public class DailyAnswerShow {
	private String question;
	private String myAnswer;
	private String rightAnswer;
	private double score;

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getMyAnswer() {
		return myAnswer;
	}

	public void setMyAnswer(String myAnswer) {
		this.myAnswer = myAnswer;
	}

	public String getRightAnswer() {
		return rightAnswer;
	}

	public void setRightAnswer(String rightAnswer) {
		this.rightAnswer = rightAnswer;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

}
