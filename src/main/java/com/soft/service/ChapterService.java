package com.soft.service;

import java.util.List;

import com.soft.model.Chapter;

public interface ChapterService {
	
	//添加章节
	public int addChapter(Chapter chapter);
	
	//根据id修改章节
	public int updateChapterById(Chapter chapter);
	
	//根据对象中不为空的多个属性进行条件查询
	public List<Chapter> selectChapterByIf(Chapter chapter);
	
	//假删除章节:必须保证传入的对象中存在章节id属性存在
	public int falseDeleteChapter(Chapter chapter);
	
	//根据章节id或章节名删除章节
	public int DeleteChapter(Chapter chapter);


	
}
