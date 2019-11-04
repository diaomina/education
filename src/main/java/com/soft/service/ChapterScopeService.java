package com.soft.service;

import java.util.List;

import com.soft.model.Chapter_Score;

/**
 * 章节成绩表操作
 * @author admin
 *
 */
public interface ChapterScopeService {
	
	/**
	 * 根据章节成绩id更新章节成绩
	 * @param chapterScore
	 * @return
	 */
	public int updateChapterScope(Chapter_Score chapterScore);
	
	/**
	 * 根据章节id，章节id，学号id多条件查询
	 * @param chapterScore
	 * @return
	 */
	public List<Chapter_Score> findChapterScope(Chapter_Score chapterScore);
	
	/**
	 * 删除章节成绩
	 * @param chapterScore
	 * @return
	 */
	public int delChapterScope(Chapter_Score chapterScore);
}
