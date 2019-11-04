package com.soft.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PaperAnswer {
    private Integer id;

    private Integer stuId;

    private Integer paperId;

    private Integer questionId;

    private String answer;

    private String createBy;

    private Date createTime;

    private String modifyBy;

    private Date modifyTime;

    private Integer corpId;

    private Boolean status;

    private Integer version;

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

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer == null ? null : answer.trim();
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy == null ? null : createBy.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getModifyBy() {
        return modifyBy;
    }

    public void setModifyBy(String modifyBy) {
        this.modifyBy = modifyBy == null ? null : modifyBy.trim();
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public Integer getCorpId() {
        return corpId;
    }

    public void setCorpId(Integer corpId) {
        this.corpId = corpId;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }
    
	/**
	 * 添加一个List的set和get
	 */
	List<PaperAnswer> paperQuestionList = new ArrayList<PaperAnswer>();
	
	public List<PaperAnswer> getList() {
        return paperQuestionList;
    }

    public void setList(List<PaperAnswer> paperQuestionList) {
        this.paperQuestionList = paperQuestionList;
    }

	@Override
	public String toString() {
		return "PaperAnswer [id=" + id + ", stuId=" + stuId + ", paperId=" + paperId + ", questionId=" + questionId
				+ ", answer=" + answer + ", createBy=" + createBy + ", createTime=" + createTime + ", modifyBy="
				+ modifyBy + ", modifyTime=" + modifyTime + ", corpId=" + corpId + ", status=" + status + ", version="
				+ version + ", paperQuestionList=" + paperQuestionList + "]";
	}
	
    
}