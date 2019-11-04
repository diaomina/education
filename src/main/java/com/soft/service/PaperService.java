package com.soft.service;

import java.util.List;

import com.soft.model.Paper;
import com.soft.model.PaperExample;

/**
 * 
* @ClassName: PaperService
* @Description: paper表的增删改查的业务接口
* @author ljy
* @date 2009年1月1日 上午3:24:11
*
 */


public interface PaperService {

	
	/**
	 * 
	* @Title: findListByExample
	* @Description: 根据条件查询试卷
	* @param @param example
	* @param @return
	* @return List<Paper>
	* @throws
	 */
	public List<Paper> findListByExample(PaperExample example);
	
	/**
	 * 
	* @Title: loadById
	* @Description: 根据ID查找试卷
	* @param @param id
	* @param @return
	* @return Paper
	* @throws
	 */
	public Paper loadById(Integer id);
	

	
	/**
	 * 
	* @Title: addQuestion_Paper_Puestion
	* @Description: 添加试卷
	* @param @param paper 试卷的对象
	* @param @return 返回1表示成功，0表示失败
	* @return int
	* @throws
	 */
	public int addPaper(Paper paper);
	
	/**
	 * 
	* @Title: delPaperQuestion
	* @Description: 根据条件删除试卷
	* @param @param 条件
	* @param @return 返回1表示成功，0表示失败
	* @return 非0表示成功,0表示失败
	* @throws
	 */
	public int delPaperByExample(PaperExample example);
	
	
	/**
	 * 
	* @Title: updatePaperQuestion
	* @Description: 根据条件修改试卷
	* @param @param paper修改后的对象, example修改的对象的前提的条件
	* @param @return 返回非0表示成功，0表示失败
	* @return 非0表示成功,0表示失败
	* @throws
	 */
	public int updatePaperByExample(Paper paper, PaperExample example);
	
	
	
}
