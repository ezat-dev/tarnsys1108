package com.transys.service;

import java.util.concurrent.ExecutionException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.transys.dao.PlcDao;
import com.transys.domain.PlcWrite;
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
	public PlcWrite getPlcWriteWorkData() {
		return plcDao.getPlcWriteWorkData();
	}

	@Override
	public void setPlcWriteDataUpdate(PlcWrite plcWrite) {
		plcDao.setPlcWriteDataUpdate(plcWrite);
	}

	@Override
	public void setPlcWriteProc(PlcWrite plcWrite) {
		plcDao.setPlcWriteProc(plcWrite);
	}

	@Override
	public void setPlcWriteDataDelete(PlcWrite plcWrite) {
		plcDao.setPlcWriteDataDelete(plcWrite);
	}

	//PLCWRITE
	public void plcWrite() throws InterruptedException, ExecutionException {
//		System.out.println("PLCWRITE ");
		
		OpcDataMap opcData = new OpcDataMap();
		//DB데이터 조회 (t_waitlist)
		PlcWrite plcWrite = plcDao.getPlcWriteWorkData();
//		System.out.println(plcWrite.getList_year());
		Thread.sleep(500);
		
		
		//가져온 행의 값이 있을때만
		String list_year = plcWrite.getList_year();
//		System.out.println("list_year 11 : "+list_year);
		if(!"".equals(list_year) && list_year != null) {
//			System.out.println("list_year 22 : "+list_year);
			//OPC값 쓰기
			//outData1, outData2, outData3, outData4, outData5			
			opcData.setOpcData("TRANSYS_TEST.PLC.LOTNO", plcWrite.getLotno());
			opcData.setOpcData("TRANSYS_TEST.PLC.CYCLENO", plcWrite.getCycleno());
			opcData.setOpcData("TRANSYS_TEST.PLC.PUMBUN", plcWrite.getPumbun());
			opcData.setOpcData("TRANSYS_TEST.PLC.AGITATE_RPM", plcWrite.getAgitate_rpm());
			opcData.setOpcData("TRANSYS_TEST.PLC.DEVICECODE", plcWrite.getDevicecode());
			opcData.setOpcData("TRANSYS_TEST.PLC.COMMON_DEVICE", plcWrite.getCommon_device());
			opcData.setOpcData("TRANSYS_TEST.PLC.MESLOT", plcWrite.getMeslot());
			
			Thread.sleep(500);

			opcData.setOpcData("TRANSYS_TEST.PLC.LOTNO", plcWrite.getLotno());
			opcData.setOpcData("TRANSYS_TEST.PLC.CYCLENO", plcWrite.getCycleno());
			opcData.setOpcData("TRANSYS_TEST.PLC.PUMBUN", plcWrite.getPumbun());
			opcData.setOpcData("TRANSYS_TEST.PLC.AGITATE_RPM", plcWrite.getAgitate_rpm());
			opcData.setOpcData("TRANSYS_TEST.PLC.DEVICECODE", plcWrite.getDevicecode());
			opcData.setOpcData("TRANSYS_TEST.PLC.COMMON_DEVICE", plcWrite.getCommon_device());
			opcData.setOpcData("TRANSYS_TEST.PLC.MESLOT", plcWrite.getMeslot());
			
			//DB값 업데이트 (t_waitlist)
			plcDao.setPlcWriteDataUpdate(plcWrite);
			
			Thread.sleep(200);
			//DB 프로시저 실행(TRACKING_PROC00)
			plcDao.setPlcWriteProc(plcWrite);
			
			Thread.sleep(200);
			//DB값 삭제 (OUTPUT_TAB)
//			plcService.setPlcWriteDataDelete(work);
			
			//각 설비에 해당되는 outPutChk값 false
			int device = Integer.parseInt(plcWrite.getDevicecode());
			
			switch (device) {
				case 1 : outPutChk1 = false; break;
				case 2 : outPutChk2 = false; break;
				case 3 : outPutChk3 = false; break;
				case 4 : outPutChk4 = false; break;
			}
			Thread.sleep(200);
			
		}
	}
	
	public void mchInput() {
		String plcPumbun = "";
		String plcDevice = "";
		
		//품번, 호기값 조회
		
		
		//품번이 0이 아닐때만
		
			//t_workinline에서 품번, 호기로 데이터 조회
		
			//조회 카운터가 0이하이면 입고요청에러로 INPUT_TAB에 INSERT 후 리턴
			
		
				//위 조건이 else 일때만, MESLOT가 공백(널)이면 변수 공백으로
		
				//INPUT_TAB에 정상적인 데이터 INSERT
		
				//PLC값 0:출고대기, 1:작업중, 2:창고입고완료
				//t_waitlist에 PLC값 2로 업데이트
		
				//t_siljuk테이블에 완료시간 업데이트
		
				//t_workinline에서 해당 호기의 품번 삭제
		
				//화면의 표시값 초기화 (PLC값 등등)
				
		
	}
	
	
}
