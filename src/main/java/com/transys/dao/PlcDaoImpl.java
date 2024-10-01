package com.transys.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.transys.domain.Work;

@Repository
public class PlcDaoImpl implements PlcDao{
	
	@Resource(name="session")
	private SqlSession sqlSession;
	
	
	@Resource(name="sessionOracle")
	private SqlSession sqlSessionOracle;


	@Override
	public Work getPlcWriteWorkData() {
		Work work = sqlSession.selectOne("work.getPlcWriteWorkData");
		System.out.println("DAO LIST_YEAR : "+work.getList_year());
//		System.out.println("DAO REGTIME : "+work.getRegtime());
		
		return work;
	}


	@Override
	public void setPlcWriteDataUpdate(Work work) {
		sqlSession.update("plc.setPlcWriteDataUpdate",work);
	}


	@Override
	public void setPlcWriteProc(Work work) {
		sqlSession.update("plc.setPlcWriteProc",work);
	}


	@Override
	public void setPlcWriteDataDelete(Work work) {
		sqlSessionOracle.delete("plc.setPlcWriteDataDelete",work);
	}

}
