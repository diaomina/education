package com.soft.vo;

//章节练习对象加强
public class chapterPracticeVO {
	private Integer id;//题库试题id
	private String chapterPRacticeName;//章节试题名
	private String option_a;//选项A
	private String option_b;//选项B
	private String option_c;//选项C
	private String option_d;//选项D
	private String questionAnwser;//试题答案
	private Integer questionScore;//试题分值
	private String questionType;//试题类型
	public chapterPracticeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public chapterPracticeVO(Integer id, String chapterPRacticeName, String option_a, String option_b, String option_c,
			String option_d, String questionAnwser, Integer questionScore, String questionType) {
		super();
		this.id = id;
		this.chapterPRacticeName = chapterPRacticeName;
		this.option_a = option_a;
		this.option_b = option_b;
		this.option_c = option_c;
		this.option_d = option_d;
		this.questionAnwser = questionAnwser;
		this.questionScore = questionScore;
		this.questionType = questionType;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getChapterPRacticeName() {
		return chapterPRacticeName;
	}
	public void setChapterPRacticeName(String chapterPRacticeName) {
		this.chapterPRacticeName = chapterPRacticeName;
	}
	public String getOption_a() {
		return option_a;
	}
	public void setOption_a(String option_a) {
		this.option_a = option_a;
	}
	public String getOption_b() {
		return option_b;
	}
	public void setOption_b(String option_b) {
		this.option_b = option_b;
	}
	public String getOption_c() {
		return option_c;
	}
	public void setOption_c(String option_c) {
		this.option_c = option_c;
	}
	public String getOption_d() {
		return option_d;
	}
	public void setOption_d(String option_d) {
		this.option_d = option_d;
	}
	public String getQuestionAnwser() {
		return questionAnwser;
	}
	public void setQuestionAnwser(String questionAnwser) {
		this.questionAnwser = questionAnwser;
	}
	public Integer getQuestionScore() {
		return questionScore;
	}
	public void setQuestionScore(Integer questionScore) {
		this.questionScore = questionScore;
	}
	public String getQuestionType() {
		return questionType;
	}
	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}
	@Override
	public String toString() {
		return "chapterPracticeVO [id=" + id + ", chapterPRacticeName=" + chapterPRacticeName + ", option_a=" + option_a
				+ ", option_b=" + option_b + ", option_c=" + option_c + ", option_d=" + option_d + ", questionAnwser="
				+ questionAnwser + ", questionScore=" + questionScore + ", questionType=" + questionType + "]";
	}
}
