package com.soft.service;

import java.util.List;

import com.soft.model.Daily_Score;
import com.soft.model.Daily_ScoreExample;

/**
 * 每日一练分数service接口
 * @author lxs
 * @date2019年10月18日 下午3:27:40
 */
public interface DailyScoreService {
	// 添加分数记录
	int addDailyScore(Daily_Score score);

	// 删除分数记录
	int deleteDailyScore(int id);

	// 修改分数记录
	int updateDailyScore(Daily_Score score);

	// 获取分数记录
	List<Daily_Score> getDailyScore(Daily_ScoreExample example);
}
