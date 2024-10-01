package com.transys.service;

import java.util.concurrent.ExecutionException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.transys.dao.PlcDao;
import com.transys.domain.Work;
import com.transys.util.OpcDataMap;

@Service
public class PlcServiceImpl implements PlcService{
	
	boolean outPutChk1 = false;
	boolean outPutChk2 = false;
	boolean outPutChk3 = false;
	boolean outPutChk4 = false;	
	
	@Autowired
	private PlcDao plcDao;

	@Override
	public Work getPlcWriteWorkData() {
		return plcDao.getPlcWriteWorkData();
	}

	@Override
	public void setPlcWriteDataUpdate(Work work) {
		plcDao.setPlcWriteDataUpdate(work);
	}

	@Override
	public void setPlcWriteProc(Work work) {
		plcDao.setPlcWriteProc(work);
	}

	@Override
	public void setPlcWriteDataDelete(Work work) {
		plcDao.setPlcWriteDataDelete(work);
	}

	//PLCWRITE
	public void plcWrite() throws InterruptedException, ExecutionException {
		System.out.println("PLCWRITE ");
		
		OpcDataMap opcData = new OpcDataMap();
		//DB데이터 조회 (t_waitlist)
		Work work = plcDao.getPlcWriteWorkData();
		System.out.println(work.getList_year());
		Thread.sleep(500);
		
		
		//가져온 행의 값이 있을때만
		String list_year = work.getList_year();
		System.out.println("list_year 11 : "+list_year);
		if(!"".equals(list_year) && list_year != null) {
			System.out.println("list_year 22 : "+list_year);
			//OPC값 쓰기
			//outData1, outData2, outData3, outData4, outData5			
			opcData.setOpcData("TRANSYS_TEST.PLC.LOTNO", work.getLotno());
			opcData.setOpcData("TRANSYS_TEST.PLC.CYCLENO", work.getCycleno());
			opcData.setOpcData("TRANSYS_TEST.PLC.PUMBUN", work.getPumbun());
			opcData.setOpcData("TRANSYS_TEST.PLC.AGITATE_RPM", work.getAgitate_rpm());
			opcData.setOpcData("TRANSYS_TEST.PLC.DEVICECODE", work.getDevicecode());
			opcData.setOpcData("TRANSYS_TEST.PLC.COMMON_DEVICE", work.getCommon_device());
			opcData.setOpcData("TRANSYS_TEST.PLC.MESLOT", work.getMeslot());
			
			Thread.sleep(500);

			opcData.setOpcData("TRANSYS_TEST.PLC.LOTNO", work.getLotno());
			opcData.setOpcData("TRANSYS_TEST.PLC.CYCLENO", work.getCycleno());
			opcData.setOpcData("TRANSYS_TEST.PLC.PUMBUN", work.getPumbun());
			opcData.setOpcData("TRANSYS_TEST.PLC.AGITATE_RPM", work.getAgitate_rpm());
			opcData.setOpcData("TRANSYS_TEST.PLC.DEVICECODE", work.getDevicecode());
			opcData.setOpcData("TRANSYS_TEST.PLC.COMMON_DEVICE", work.getCommon_device());
			opcData.setOpcData("TRANSYS_TEST.PLC.MESLOT", work.getMeslot());
			
			//DB값 업데이트 (t_waitlist)
			plcDao.setPlcWriteDataUpdate(work);
			
			Thread.sleep(200);
			//DB 프로시저 실행(TRACKING_PROC00)
			plcDao.setPlcWriteProc(work);
			
			Thread.sleep(200);
			//DB값 삭제 (OUTPUT_TAB)
//			plcService.setPlcWriteDataDelete(work);
			
			//각 설비에 해당되는 outPutChk값 false
			int device = Integer.parseInt(work.getDevicecode());
			
			switch (device) {
				case 1 : outPutChk1 = false; break;
				case 2 : outPutChk2 = false; break;
				case 3 : outPutChk3 = false; break;
				case 4 : outPutChk4 = false; break;
			}
			Thread.sleep(200);
			
		}
	}	
	
	
}
