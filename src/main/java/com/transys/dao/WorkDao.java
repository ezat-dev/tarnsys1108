package com.transys.dao;

import java.util.List;

import com.transys.domain.Work;

public interface WorkDao {

	List<Work> workDetailList(Work work);

}
