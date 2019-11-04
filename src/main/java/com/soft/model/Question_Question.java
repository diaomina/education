package com.soft.model;

import java.util.Date;

public class Question_Question {
    private Integer id;

    private Integer couserId;

    private String questionContent;

    private String pictureUrl;

    private String optionA;

    private String optionB;

    private String optionC;

    private String optionD;

    private String answer;

    private Double score;

    private Integer corpId;

    private String createBy;

    private Date createTime;

    private String modifyBy;

    private Date modifyTime;

    private Boolean status;

    private Integer version;

    private Integer questionTypeId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCouserId() {
        return couserId;
    }

    public void setCouserId(Integer couserId) {
        this.couserId = couserId;
    }

    public String getQuestionContent() {
        return questionContent;
    }

    public void setQuestionContent(String questionContent) {
        this.questionContent = questionContent == null ? null : questionContent.trim();
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl == null ? null : pictureUrl.trim();
    }

    public String getOptionA() {
        return optionA;
    }

    public void setOptionA(String optionA) {
        this.optionA = optionA == null ? null : optionA.trim();
    }

    public String getOptionB() {
        return optionB;
    }

    public void setOptionB(String optionB) {
        this.optionB = optionB == null ? null : optionB.trim();
    }

    public String getOptionC() {
        return optionC;
    }

    public void setOptionC(String optionC) {
        this.optionC = optionC == null ? null : optionC.trim();
    }

    public String getOptionD() {
        return optionD;
    }

    public void setOptionD(String optionD) {
        this.optionD = optionD == null ? null : optionD.trim();
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer == null ? null : answer.trim();
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
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

    public Integer getQuestionTypeId() {
        return questionTypeId;
    }

    public void setQuestionTypeId(Integer questionTypeId) {
        this.questionTypeId = questionTypeId;
    }

	@Override
	public String toString() {
		return "Question_Question [id=" + id + ", couserId=" + couserId + ", questionContent=" + questionContent
				+ ", pictureUrl=" + pictureUrl + ", optionA=" + optionA + ", optionB=" + optionB + ", optionC="
				+ optionC + ", optionD=" + optionD + ", answer=" + answer + ", score=" + score + ", corpId=" + corpId
				+ ", createBy=" + createBy + ", createTime=" + createTime + ", modifyBy=" + modifyBy + ", modifyTime="
				+ modifyTime + ", status=" + status + ", version=" + version + ", questionTypeId=" + questionTypeId
				+ "]";
	}
	
	
	/**
	 * 重写了hashCode()和equals()方法。
	 * 在PaperAction中selectQuestionByCourseId()方法需要两个list中对象去重
	 */

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((answer == null) ? 0 : answer.hashCode());
		result = prime * result + ((corpId == null) ? 0 : corpId.hashCode());
		result = prime * result + ((couserId == null) ? 0 : couserId.hashCode());
		result = prime * result + ((createBy == null) ? 0 : createBy.hashCode());
		result = prime * result + ((createTime == null) ? 0 : createTime.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((modifyBy == null) ? 0 : modifyBy.hashCode());
		result = prime * result + ((modifyTime == null) ? 0 : modifyTime.hashCode());
		result = prime * result + ((optionA == null) ? 0 : optionA.hashCode());
		result = prime * result + ((optionB == null) ? 0 : optionB.hashCode());
		result = prime * result + ((optionC == null) ? 0 : optionC.hashCode());
		result = prime * result + ((optionD == null) ? 0 : optionD.hashCode());
		result = prime * result + ((pictureUrl == null) ? 0 : pictureUrl.hashCode());
		result = prime * result + ((questionContent == null) ? 0 : questionContent.hashCode());
		result = prime * result + ((questionTypeId == null) ? 0 : questionTypeId.hashCode());
		result = prime * result + ((score == null) ? 0 : score.hashCode());
		result = prime * result + ((status == null) ? 0 : status.hashCode());
		result = prime * result + ((version == null) ? 0 : version.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Question_Question other = (Question_Question) obj;
		if (answer == null) {
			if (other.answer != null)
				return false;
		} else if (!answer.equals(other.answer))
			return false;
		if (corpId == null) {
			if (other.corpId != null)
				return false;
		} else if (!corpId.equals(other.corpId))
			return false;
		if (couserId == null) {
			if (other.couserId != null)
				return false;
		} else if (!couserId.equals(other.couserId))
			return false;
		if (createBy == null) {
			if (other.createBy != null)
				return false;
		} else if (!createBy.equals(other.createBy))
			return false;
		if (createTime == null) {
			if (other.createTime != null)
				return false;
		} else if (!createTime.equals(other.createTime))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (modifyBy == null) {
			if (other.modifyBy != null)
				return false;
		} else if (!modifyBy.equals(other.modifyBy))
			return false;
		if (modifyTime == null) {
			if (other.modifyTime != null)
				return false;
		} else if (!modifyTime.equals(other.modifyTime))
			return false;
		if (optionA == null) {
			if (other.optionA != null)
				return false;
		} else if (!optionA.equals(other.optionA))
			return false;
		if (optionB == null) {
			if (other.optionB != null)
				return false;
		} else if (!optionB.equals(other.optionB))
			return false;
		if (optionC == null) {
			if (other.optionC != null)
				return false;
		} else if (!optionC.equals(other.optionC))
			return false;
		if (optionD == null) {
			if (other.optionD != null)
				return false;
		} else if (!optionD.equals(other.optionD))
			return false;
		if (pictureUrl == null) {
			if (other.pictureUrl != null)
				return false;
		} else if (!pictureUrl.equals(other.pictureUrl))
			return false;
		if (questionContent == null) {
			if (other.questionContent != null)
				return false;
		} else if (!questionContent.equals(other.questionContent))
			return false;
		if (questionTypeId == null) {
			if (other.questionTypeId != null)
				return false;
		} else if (!questionTypeId.equals(other.questionTypeId))
			return false;
		if (score == null) {
			if (other.score != null)
				return false;
		} else if (!score.equals(other.score))
			return false;
		if (status == null) {
			if (other.status != null)
				return false;
		} else if (!status.equals(other.status))
			return false;
		if (version == null) {
			if (other.version != null)
				return false;
		} else if (!version.equals(other.version))
			return false;
		return true;
	}

    
    
    
}