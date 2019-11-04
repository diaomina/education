package com.soft.vo;

/**
 * 
* @ClassName: ChoosePaperVO
* @Description: 选择试卷的OV实体类
* @author ljy
* @date 2019年10月22日 下午7:09:47
*
 */
public class ChoosePaperVO {
	
	private Integer paperId;	//试卷ID
	
	private String courseName;	//课程名称
	
	private String paperName;	//试卷名称
	
	private String createBy;	//出卷人
	
	private String paperTime;	//考试时间

	@Override
	public String toString() {
		return "ChoosePaperVO [paperId=" + paperId + ", courseName=" + courseName + ", createBy=" + createBy
				+ ", paperTime=" + paperTime + "]";
	}

	public Integer getPaperId() {
		return paperId;
	}

	public void setPaperId(Integer paperId) {
		this.paperId = paperId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public String getPaperTime() {
		return paperTime;
	}

	public void setPaperTime(String paperTime) {
		this.paperTime = paperTime;
	}

	public String getPaperName() {
		return paperName;
	}

	public void setPaperName(String paperName) {
		this.paperName = paperName;
	}


	
	
	

}
