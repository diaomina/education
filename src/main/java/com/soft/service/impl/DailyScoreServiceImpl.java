package com.soft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.Daily_ScoreMapper;
import com.soft.model.Daily_Score;
import com.soft.model.Daily_ScoreExample;
import com.soft.service.DailyScoreService;

/**
 * 每日一练分数记录service
 * @author lxs
 * @date2019年10月18日 下午3:35:16
 */
@Service("dailyScoreService")
@Transactional
public class DailyScoreServiceImpl implements DailyScoreService {

	@Autowired
	private Daily_ScoreMapper mapper;
	
	public int addDailyScore(Daily_Score score) {
		int count = mapper.insertSelective(score);
		return count;
	}

	public int deleteDailyScore(int id) {
		int count = mapper.deleteByPrimaryKey(id);
		return count;
	}

	public int updateDailyScore(Daily_Score score) {
		int count = mapper.updateByPrimaryKeySelective(score);
		return count;
	}

	@Transactional(readOnly=true)
	public List<Daily_Score> getDailyScore(Daily_ScoreExample example) {
		List<Daily_Score> list = mapper.selectByExample(example);
		return list;
	}

}
