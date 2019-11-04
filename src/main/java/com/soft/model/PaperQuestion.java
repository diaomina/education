package com.soft.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PaperQuestion {
    private Integer id;

    private Integer paperId;

    private Integer questionId;

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

	@Override
	public String toString() {
		return "PaperQuestion [id=" + id + ", paperId=" + paperId + ", questionId=" + questionId + ", createBy="
				+ createBy + ", createTime=" + createTime + ", modifyBy=" + modifyBy + ", modifyTime=" + modifyTime
				+ ", corpId=" + corpId + ", status=" + status + ", version=" + version + "]";
	}
	
        
}