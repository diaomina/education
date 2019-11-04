package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.Chapter_ScoreMapper;
import com.soft.model.Chapter_Score;
import com.soft.model.Chapter_ScoreExample;
import com.soft.model.Chapter_ScoreExample.Criteria;
import com.soft.service.ChapterScopeService;

@Service("chapterScopeServiceImpl")
@Transactional
public class ChapterScopeServiceImpl implements ChapterScopeService {
	@Autowired
	private Chapter_ScoreMapper chapterScopeMapper;
	@Override
	public int updateChapterScope(Chapter_Score chapterScore) {
		int row=0;
		if(chapterScore.getId()!=null){
			//1.将创建人，创建时间置空
			chapterScore.setCreateBy(null);
			chapterScore.setCreateTime(null);
			row=chapterScopeMapper.updateByPrimaryKeySelective(chapterScore);
			
		}else{
			return 0;
		}
		return row;
	}

	@Override
	public List<Chapter_Score> findChapterScope(Chapter_Score chapterScore) {
	    Chapter_ScoreExample example=new Chapter_ScoreExample();
	    Criteria criteria=example.createCriteria();
	    //主键id
	    if(chapterScore.getId()!=null){
	    	criteria.andIdEqualTo(chapterScore.getId());
	    }
	    //章节id
	    if(chapterScore.getChapterId()!=null){
	    	criteria.andChapterIdEqualTo(chapterScore.getChapterId());
	    }
	    //学号id
	    if(chapterScore.getStuId()!=null){
	    	criteria.andStuIdEqualTo(chapterScore.getStuId());
	    }
		List<Chapter_Score> list=chapterScopeMapper.selectByExample(example);
		
		return list;
	}

	@Override
	public int delChapterScope(Chapter_Score chapterScore) {
		//暂时先不写
		return 0;
	}

}
