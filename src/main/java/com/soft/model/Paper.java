package com.soft.model;

import java.util.Date;

public class Paper {
    private Integer id;

    private Integer corpId;

    private Integer courseId;

    private String paperName;

    private Integer paperTypeId;

    private Double scoreAll;

    private String paperTime;

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

    public Integer getCorpId() {
        return corpId;
    }

    public void setCorpId(Integer corpId) {
        this.corpId = corpId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getPaperName() {
        return paperName;
    }

    public void setPaperName(String paperName) {
        this.paperName = paperName == null ? null : paperName.trim();
    }

    public Integer getPaperTypeId() {
        return paperTypeId;
    }

    public void setPaperTypeId(Integer paperTypeId) {
        this.paperTypeId = paperTypeId;
    }

    public Double getScoreAll() {
        return scoreAll;
    }

    public void setScoreAll(Double scoreAll) {
        this.scoreAll = scoreAll;
    }

    public String getPaperTime() {
        return paperTime;
    }

    public void setPaperTime(String paperTime) {
        this.paperTime = paperTime == null ? null : paperTime.trim();
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
		return "Paper [id=" + id + ", corpId=" + corpId + ", courseId=" + courseId + ", paperName=" + paperName
				+ ", paperTypeId=" + paperTypeId + ", scoreAll=" + scoreAll + ", paperTime=" + paperTime + ", createBy="
				+ createBy + ", createTime=" + createTime + ", modifyBy=" + modifyBy + ", modifyTime=" + modifyTime
				+ ", status=" + status + ", version=" + version + "]";
	}
    
    
}