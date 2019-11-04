package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.PaperScoreMapper;
import com.soft.model.PaperScore;
import com.soft.model.PaperScoreExample;
import com.soft.service.PaperScoreService;

/**
*
*@author zxb
*@version 2019年10月21日下午4:18:30
*/
@Service("PaperScoreService")
@Transactional
public class PaperScoreServiceImpl implements PaperScoreService{
	@Autowired
	private PaperScoreMapper paperScoreMapper;
	@Override
	public int addPaperScore(PaperScore paperScore) {
		int count=paperScoreMapper.insertSelective(paperScore);
		return count;
	}
	@Override
	public List<PaperScore> selectPaperScoreByexample(PaperScoreExample example) {
		List<PaperScore> paperScore=paperScoreMapper.selectByExample(example);
		return paperScore;
	}

}
