package com.soft.model;

import java.util.Date;

public class Student {
    

	private Integer id;

    private String stuName;

    private String stuPasword;

    private Integer corpId;

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

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName == null ? null : stuName.trim();
    }

    public String getStuPasword() {
        return stuPasword;
    }

    public void setStuPasword(String stuPasword) {
        this.stuPasword = stuPasword == null ? null : stuPasword.trim();
    }

    public Integer getCorpId() {
        return corpId;
    }

    public void setCorpId(Integer corpId) {
        this.corpId = corpId;
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
		return "Student [id=" + id + ", stuName=" + stuName + ", stuPasword=" + stuPasword + ", corpId=" + corpId
				+ ", createBy=" + createBy + ", createTime=" + createTime + ", modifyBy=" + modifyBy + ", modifyTime="
				+ modifyTime + ", status=" + status + ", version=" + version + "]";
	}
}