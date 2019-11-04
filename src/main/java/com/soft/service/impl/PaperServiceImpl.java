package com.soft.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soft.dao.PaperMapper;
import com.soft.model.Paper;
import com.soft.model.PaperExample;
import com.soft.service.PaperService;

@Service("PaperService")
@Transactional
public class PaperServiceImpl implements PaperService {
	
	@Autowired
	PaperMapper mapper;
	
	@Override
	public List<Paper> findListByExample(PaperExample example) {
		List<Paper> list = new ArrayList<Paper>();
		if(example != null) {
			list = mapper.selectByExample(example);
		}
		return list;
	}

	@Override
	public Paper loadById(Integer id) {
		Paper paper = null;
		if(id != null){
			paper = mapper.selectByPrimaryKey(id);
		}else {
			System.out.println("id=null");
		}
		return paper;
	}


	@Override
	public int addPaper(Paper paper) {
		int recordNumber = 0;
		if(paper != null) {
			recordNumber = mapper.insertSelective(paper);
		}
		return recordNumber;
	}

	@Override
	public int delPaperByExample(PaperExample example) {
		int recordNumber = 0;
		if(example != null) {
			recordNumber = mapper.deleteByExample(example);
		}
		return recordNumber;
	}

	@Override
	public int updatePaperByExample(Paper paper, PaperExample example) {
		int recordNumber = 0;
		if(example != null) {
			//recordNumber = mapper.updateByExample(paper, example);
			recordNumber = mapper.updateByExampleSelective(paper, example);
		}
		return recordNumber;
	}

	

}
