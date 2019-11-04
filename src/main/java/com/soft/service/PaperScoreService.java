package com.soft.service;

import java.util.List;

import com.soft.model.PaperScore;
import com.soft.model.PaperScoreExample;

/**
*
*@author zxb
*@version 2019年10月20日下午4:12:30
*/
public interface PaperScoreService {
	public int addPaperScore(PaperScore paperScore);
	
	public List<PaperScore> selectPaperScoreByexample(PaperScoreExample example);

}
