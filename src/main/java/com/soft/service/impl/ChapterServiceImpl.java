package com.soft.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.ChapterMapper;
import com.soft.dao.CorpMapper;
import com.soft.model.Chapter;
import com.soft.model.ChapterExample;
import com.soft.model.ChapterExample.Criteria;
import com.soft.model.Corp;
import com.soft.service.ChapterService;




/*
 *对章节表进行操作 
 */

@Service("chapterServiceImpl")
@Transactional
public class ChapterServiceImpl implements ChapterService{
	
	@Autowired
	private ChapterMapper chapterMapper;
	
	
	//添加章节操作(对对象中所有属性进行插入操作）
	public int addChapter(Chapter chapter){
		int row=chapterMapper.insertSelective(chapter);
		return row;
	}
	
	//根据id修改章节(对对象中属性不为空的进行修改）
	public int updateChapterById(Chapter chapter){
		
		chapter.setModifyTime(new Date());
		
		int row=chapterMapper.updateByPrimaryKeySelective(chapter);
		return row;
	}
	
	//根据对象中不为空的多个属性进行条件查询
	public List<Chapter> selectChapterByIf(Chapter chapter){
		ChapterExample example=new ChapterExample();
		Criteria criteria=example.createCriteria();
		if(chapter.getChapterId()!=null){
			criteria.andChapterIdEqualTo(chapter.getChapterId());
		}else if(chapter.getChapterName()!=null){
			
			criteria.andChapterNameEqualTo(chapter.getChapterName());
		}
		if(chapter.getCuorseId()!=null){
			
			criteria.andCuorseIdEqualTo(chapter.getCuorseId());
		}
		
		List<Chapter> chapters=chapterMapper.selectByExample(example);
		return chapters;
	}
	
	//假删除章节:必须保证传入的对象中存在章节id属性存在
	public int falseDeleteChapter(Chapter chapter){
		int chapterId=chapter.getChapterId();
		Chapter chapter2=new Chapter();
		chapter2.setChapterId(chapterId);
		chapter2.setStatus(true);
		int row=chapterMapper.updateByPrimaryKeySelective(chapter2);
		return row;
	}
	
	//真删除章节(章节id，章节名多条件删除)
	public int DeleteChapter(Chapter chapter){
		ChapterExample example=new ChapterExample();
		Criteria criteria=example.createCriteria();
		if(chapter.getChapterId()!=null){
			criteria.andChapterIdEqualTo(chapter.getChapterId());
		}else if(chapter.getChapterName()!=null){
			criteria.andChapterNameEqualTo(chapter.getChapterName());
		}else{
			System.out.println("删除失败");
			return 0;
		}
		int row=chapterMapper.deleteByExample(example);
		return row;
	}
	
	
	
	
	
}
