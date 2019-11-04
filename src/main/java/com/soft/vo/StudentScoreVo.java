package com.soft.vo;

import java.util.Date;

/**
*
*@author zxb
*@version 2019年10月25日上午11:40:41
*/
public class StudentScoreVo {
	private Integer stuId;
	private String stuName;
	private String courseName;
	private Integer paperId;
	private String paperName;
	private double paperScore;
	private Date createTime;
	
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
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
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public Integer getPaperId() {
		return paperId;
	}
	public void setPaperId(Integer paperId) {
		this.paperId = paperId;
	}
	public String getPaperName() {
		return paperName;
	}
	public void setPaperName(String paperName) {
		this.paperName = paperName;
	}
	public double getPaperScore() {
		return paperScore;
	}
	public void setPaperScore(double paperScore) {
		this.paperScore = paperScore;
	}
	@Override
	public String toString() {
		return "StudentScoreVo [stuId=" + stuId + ", stuName=" + stuName + ", courseName=" + courseName + ", paperId="
				+ paperId + ", paperName=" + paperName + ", paperScore=" + paperScore + ", createTime=" + createTime
				+ "]";
	}
	
	
	
	
	
}
