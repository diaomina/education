package com.soft.model;

import java.util.Date;

public class Chapter {
    private Integer chapterId;

    private String chapterName;

    private Integer cuorseId;

    private String createBy;

    private Date createTime;

    private String modifyBy;

    private Date modifyTime;

    private Integer corpId;

    private Integer version;

    private Boolean status;

    public Integer getChapterId() {
        return chapterId;
    }

    public void setChapterId(Integer chapterId) {
        this.chapterId = chapterId;
    }

    public String getChapterName() {
        return chapterName;
    }

    public void setChapterName(String chapterName) {
        this.chapterName = chapterName == null ? null : chapterName.trim();
    }

    public Integer getCuorseId() {
        return cuorseId;
    }

    public void setCuorseId(Integer cuorseId) {
        this.cuorseId = cuorseId;
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

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

	@Override
	public String toString() {
		return "Chapter [chapterId=" + chapterId + ", chapterName=" + chapterName + ", cuorseId=" + cuorseId
				+ ", createBy=" + createBy + ", createTime=" + createTime + ", modifyBy=" + modifyBy + ", modifyTime="
				+ modifyTime + ", corpId=" + corpId + ", version=" + version + ", status=" + status + "]";
	}
    
}