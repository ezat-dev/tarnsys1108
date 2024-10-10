package com.transys.service;

import java.util.concurrent.ExecutionException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.transys.dao.ArrivedTabDao;
import com.transys.domain.ArrivedTab;
import com.transys.domain.Product;

@Service
public class ArrivedTabServiceImpl implements ArrivedTabService{

	@Autowired
	private ArrivedTabDao arrivedTabDao;
	
	@Override
	public void arrivedTabTimer() throws InterruptedException, ExecutionException {
/*		
		//ARRIVED_TAB 데이터 조회
		ArrivedTab arrivedTab = arrivedTabDao.getArrivedTabDataSelect();
		
		if(arrivedTab.getWorkdate() != null
				&& arrivedTab.getWorkdate().length() > 0) {
			//T_PRODUCT 데이터 조회
			Product product = arrivedTabDao.getArrivedTabProductSelect();
			
			Thread.sleep(200);
			
			//ARRIVED_TAB 데이터 저장
			arrivedTabDao.setArrivedTabDataInsert(product);
		}
*/
	}

}
