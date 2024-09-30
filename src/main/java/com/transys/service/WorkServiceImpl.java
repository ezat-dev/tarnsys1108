package com.transys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.transys.dao.WorkDao;
import com.transys.domain.Work;

@Service
public class WorkServiceImpl implements WorkService{

	@Autowired
	private WorkDao workDao;
	
	@Override
	public List<Work> workDetailList(Work work) {
		return workDao.workDetailList(work);
	}

}
