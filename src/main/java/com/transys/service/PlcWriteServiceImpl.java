package com.transys.service;

import java.util.Map;
import java.util.concurrent.ExecutionException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.transys.controller.MainController;
import com.transys.dao.PlcWriteDao;
import com.transys.domain.PlcWrite;
import com.transys.util.OpcDataMap;

@Service
public class PlcWriteServiceImpl implements PlcWriteService{
	
	@Autowired
	private PlcWriteDao plcWriteDao;
	
	//PLCWRITE
	public void plcWrite() throws InterruptedException, ExecutionException {
//		System.out.println("PLCWRITE ");
		OpcDataMap opcData = new OpcDataMap();
		boolean output_chk = false;
		//창고출고가능요구 1이면
		Map<String, Object> outputMap = opcData.getOpcData("TRANSYS_TEST.PLCWRITE.OUTPUT_CHK");
		
		output_chk = Boolean.parseBoolean(outputMap.get("value").toString());
		
		if(output_chk) {
			//DB데이터 조회 (t_waitlist)
			PlcWrite plcWrite = plcWriteDao.getPlcWriteWorkData();
	//		System.out.println(plcWrite.getList_year());
			Thread.sleep(500);
			
			
			//가져온 행의 값이 있을때만
			String list_year = plcWrite.getList_year();
	//		System.out.println("list_year 11 : "+list_year);
			if(!"".equals(list_year) && list_year != null) {
	//			System.out.println("list_year 22 : "+list_year);
				//OPC값 쓰기
				//outData1, outData2, outData3, outData4, outData5			
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.LOTNO", plcWrite.getLotno());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.CYCLENO", plcWrite.getCycleno());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.PUMBUN", plcWrite.getPumbun());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.AGITATE_RPM", plcWrite.getAgitate_rpm());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.DEVICECODE", plcWrite.getDevicecode());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.COMMON_DEVICE", plcWrite.getCommon_device());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.MESLOT", plcWrite.getMeslot());
				
				Thread.sleep(500);
	
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.LOTNO", plcWrite.getLotno());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.CYCLENO", plcWrite.getCycleno());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.PUMBUN", plcWrite.getPumbun());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.AGITATE_RPM", plcWrite.getAgitate_rpm());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.DEVICECODE", plcWrite.getDevicecode());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.COMMON_DEVICE", plcWrite.getCommon_device());
				opcData.setOpcData("TRANSYS_TEST.PLCWRITE.MESLOT", plcWrite.getMeslot());
				
				//DB값 업데이트 (t_waitlist)
				plcWriteDao.setPlcWriteDataUpdate(plcWrite);
				
				Thread.sleep(200);
				//DB 프로시저 실행(TRACKING_PROC00)
				plcWriteDao.setPlcWriteProc(plcWrite);
				
				Thread.sleep(200);
				//DB값 삭제 (OUTPUT_TAB)
				plcWriteDao.setPlcWriteDataDelete(plcWrite);
				
				//각 설비에 해당되는 outPutChk값 false
				int device = Integer.parseInt(plcWrite.getDevicecode());
				
				switch (device) {
					case 1 : MainController.outPutChk1 = false; break;
					case 2 : MainController.outPutChk2 = false; break;
					case 3 : MainController.outPutChk3 = false; break;
					case 4 : MainController.outPutChk4 = false; break;
				}
				Thread.sleep(200);
			}
		}
	}
}
