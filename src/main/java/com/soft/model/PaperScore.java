package com.soft.model;

import java.util.Date;

public class PaperScore {
    private Integer id;

    private Integer stuId;

    private Integer corpId;

    private Integer paperId;

    private Double score;

    private String createBy;

    private Date createTime;

    private String modifyBy;

    private Date modifyTime;

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

    public Integer getCorpId() {
        return corpId;
    }

    public void setCorpId(Integer corpId) {
        this.corpId = corpId;
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
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
		return "PaperScore [id=" + id + ", stuId=" + stuId + ", corpId=" + corpId + ", paperId=" + paperId + ", score="
				+ score + ", createBy=" + createBy + ", createTime=" + createTime + ", modifyBy=" + modifyBy
				+ ", modifyTime=" + modifyTime + ", status=" + status + ", version=" + version + "]";
	}
    
    
    
    
}