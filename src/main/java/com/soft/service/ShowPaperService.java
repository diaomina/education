package com.soft.service;

import com.soft.vo.ShowPaper;

/**
 * 
* @ClassName: ShowPaperService
* @Description: 考试界面信息显示的业务
* @author ljy
* @date 2009年1月1日 上午3:18:19
*
 */
public interface ShowPaperService {
	
	/**
	 * 
	* @Title: getShowPaper
	* @Description: 根据试卷ID获取考试的基本信息
	* @param @return
	* @return ShowPaper
	* @throws
	 */
	public ShowPaper getShowPaperByPaperId(Integer paperId);

}
